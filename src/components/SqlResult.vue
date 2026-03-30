<template>
  <a-card
    id="sqlResult"
    title="Execution Result"
    :bordered="false"
  >
    <sql-result-table v-if="!errorMsg" :result="result" />
    <a-alert
      v-else
      type="error"
      show-icon
      message="Statement Error"
      :description="errorMsg"
    />
  </a-card>
</template>

<script setup lang="ts">
import { toRefs } from "vue";
import { QueryExecResult } from "sql.js";
import SqlResultTable from "./SqlResultTable.vue";

interface Props {
  result: QueryExecResult[];
  answerResult: QueryExecResult[];
  resultStatus: number;
  errorMsg?: string;
  // eslint-disable-next-line vue/require-default-prop
  level?: LevelType;
}

const props = withDefaults(defineProps<Props>(), {
  result: () => [],
  answerResult: () => [],
  errorMsg: () => "",
});

// e.g. [{"columns":["a","b"],"values":[[0,"hello"],[1,"world"]]}]
const { result } = toRefs(props);
</script>

<style></style>
