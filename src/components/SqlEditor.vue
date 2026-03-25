<template>
  <div id="sqlEditor">
    <div ref="editorRef" :style="editorStyle" />
    <a-space :size="16" style="margin-top: 16px">
      <a-button type="primary" style="width: 180px" @click="doSubmit">
        Run
      </a-button>
      <a-button @click="doFormat">Format</a-button>
      <a-button @click="doReset">Reset</a-button>
    </a-space>
  </div>
</template>

<script setup lang="ts">
import {
  CSSProperties,
  onMounted,
  onUnmounted,
  ref,
  toRaw,
  toRefs,
  watchEffect,
} from "vue";
import * as monaco from "monaco-editor";
import { format } from "sql-formatter";
import EditorWorker from "monaco-editor/esm/vs/editor/editor.worker?worker";
import { initDB, runSQL } from "../core/sqlExecutor";
import { QueryExecResult } from "sql.js";
// eslint-disable-next-line no-undef
import IStandaloneCodeEditor = monaco.editor.IStandaloneCodeEditor;
import { message } from "ant-design-vue";

(self as any).MonacoEnvironment = {
  getWorker(_: any, label: any) {
    return new EditorWorker();
  },
};

// @ts-ignore
interface SqlEditorProps {
  level: LevelType;
  editorStyle: CSSProperties;
  resultStatus: number;
  onSubmit: (
    sql: string,
    result: QueryExecResult[],
    answerResult: QueryExecResult[],
    errorMsg?: string
  ) => void;
}

const props = withDefaults(defineProps<SqlEditorProps>(), {});
const { level, onSubmit } = toRefs(props);
const inputEditor = ref<IStandaloneCodeEditor>();
const editorRef = ref<HTMLElement>();
const db = ref();

watchEffect(async () => {
  // Initialize / Update default SQL
  if (inputEditor.value) {
    toRaw(inputEditor.value).setValue(
      "-- Enter SQL here\n" + level.value.defaultSQL
    );
  }
  // Initialize / Update DB
  db.value = await initDB(level.value.initSQL);
  doSubmit();
});

/**
 * SQL Format
 */
const doFormat = () => {
  if (!inputEditor.value) {
    return;
  }
  const inputStr = toRaw(inputEditor.value).getValue();
  // https://www.npmjs.com/package/sql-formatter
  const resultStr = format(inputStr, { language: "sqlite" });
  toRaw(inputEditor.value).setValue(resultStr);
};

/**
 * Reset
 */
const doReset = () => {
  if (inputEditor.value) {
    toRaw(inputEditor.value).setValue(level.value.defaultSQL);
    doSubmit();
  }
};

/**
 * Submit Result
 */
const doSubmit = () => {
  if (!inputEditor.value) {
    return;
  }
  const inputStr = toRaw(inputEditor.value).getValue();
  console.log("inputStr", inputStr);
  try {
    const result = runSQL(db.value, inputStr);
    const answerResult = runSQL(db.value, level.value.answer);
    // Pass result to outer layer
    onSubmit?.value(inputStr, result, answerResult);
  } catch (error: any) {
    message.error("Statement error, " + error.message);
    // Pass result to outer layer
    onSubmit?.value(inputStr, [], [], error.message);
  }
};

onMounted(async () => {
  // Initialize code editor
  if (editorRef.value) {
    const initValue = "";
    inputEditor.value = monaco.editor.create(editorRef.value, {
      value: initValue,
      language: "sql",
      theme: "vs-dark",
      formatOnPaste: true,
      automaticLayout: true,
      fontSize: 16,
      minimap: {
        enabled: false,
      },
    });
    // Auto save draft
    // Disabled for now, restore default SQL for current level after refresh
    // setInterval(() => {
    //   if (inputEditor.value) {
    //     localStorage.setItem("draft", toRaw(inputEditor.value).getValue());
    //   }
    // }, 3000);
  }
});

/**
 * Release resources
 */
onUnmounted(() => {
  if (inputEditor.value) {
    toRaw(inputEditor.value).dispose();
  }
});
</script>

<style></style>
