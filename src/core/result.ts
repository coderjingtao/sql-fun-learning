import { QueryExecResult } from "sql.js";

/**
 * Result status enum
 */
export const RESULT_STATUS_ENUM = {
  DEFAULT: -1,
  ERROR: 0,
  SUCCEED: 1,
};

/**
 * Result status info map
 */
export const RESULT_STATUS_INFO_MAP = {
  "-1": "Not Executed",
  0: "❌ Error",
  1: "✅ Correct",
};

/**
 * Check if result is correct
 * @param result User result
 * @param answerResult Answer result
 */
export const checkResult = (
  result: QueryExecResult[],
  answerResult: QueryExecResult[]
) => {
  if (!result?.[0] || !answerResult?.[0]) {
    return RESULT_STATUS_ENUM.ERROR;
  }
  // Column names must match
  const resultColumns = result[0].columns;
  const answerResultColumns = answerResult[0].columns;
  if (JSON.stringify(resultColumns) !== JSON.stringify(answerResultColumns)) {
    return RESULT_STATUS_ENUM.ERROR;
  }
  // Data must match
  const resultValues = result[0].values;
  const answerResultValues = answerResult[0].values;
  if (JSON.stringify(resultValues) === JSON.stringify(answerResultValues)) {
    return RESULT_STATUS_ENUM.SUCCEED;
  }
  return RESULT_STATUS_ENUM.ERROR;
};
