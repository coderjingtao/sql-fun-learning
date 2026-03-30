# SQL Fun Learning - Gamified SQL Tutorial Platform

> A gamified SQL learning platform
>
> By [Jingtao Liu](https://www.linkedin.com/in/jingtaojosephliu/)

Live Demo: [placeholder]

## Project Introduction

A completely free gamified SQL learning website with over 30 levels. Users can submit SQL code online to solve challenges and progress through levels. The goal is to help everyone master common SQL syntax from scratch.

Additionally, the website supports free level selection, custom levels, and an SQL practice playground.

### Why Build This Website?

First, SQL knowledge is extremely important - it's an essential skill for programmers, product managers, and data analysts.

For learning SQL, hands-on practice is more effective than just reading tutorials. While there are similar SQL learning websites online, they are either paid or not well-structured.

So Yupi decided to create an open-source SQL learning platform, hoping to help everyone learn SQL more easily. At the same time, the project code can provide inspiration for others, encouraging more people to participate and contribute!

## Learn to Use in 20 Seconds

1. Enter the homepage, the left side is the tutorial and question area, please read it completely first

2. Write SQL code in the upper right area to solve questions, click run to submit results

3. You can use the question helper area in the lower right to help you solve problems

4. After the execution result is correct, you can proceed to the next level

You can also freely choose levels to challenge. All levels have no restrictions, so you don't have to follow the order.

## Start Locally in 1 Minute

Since this project is purely frontend-based, starting locally is very simple!

> Online access may be slow due to high traffic, so using it locally is recommended~

1. Download this project code

2. Enter the project root directory and run `npm install` to install dependencies

3. Run `npm run dev` to start locally

## Features

- Display tutorial documents (Markdown format)
- Online practice
  - Compare results
  - Question helper
    - Display execution results
    - View hints
    - View table creation statements
    - View answers
- Level settings
  - Free level selection
  - Main levels - Support previous/next level navigation
  - Custom levels
- SQL Playground (free SQL input)

## Tech Stack

This project is purely frontend-based and requires no backend knowledge~

> Q: Why use a pure frontend implementation?
>
> A: Reduce attack risks + Save money + New learning experience

- Main framework: Vue 3
- Component library: ant-design-vue
- Markdown display: bytemd + github-markdown-css theme
- Code editor: monaco-editor
- SQL execution: sql.js
- SQL formatter: sql-formatter
- State management: pinia + pinia-plugin-persistedstate
- Frontend tooling: typescript + eslint + prettier
- Utility library: lodash

## Core Design

### 1. Modular Interface

Using modular development principles, the main page is split into question browsing area, SQL coding area, and result area. Each area is an independent Vue component, achieving logic isolation and component reuse (for example, the SQL coding area can be reused in the SQL playground page).

- QuestionBoard: Displays question Markdown documents
- SqlEditor: Encapsulates code editor, run/format/reset buttons
- SqlResult: Encapsulates question execution result display

Then in `IndexPage.vue`, you can import these components and pass level information, execution results and other data to assemble a complete page.

### 2. Level Design

Although there's no backend database, all level data should still be managed centrally. The `levels` directory is defined to store all level-related data.

Levels are divided into two categories: main levels (tutorials) and custom levels (for extension), managed in `mainLevels.ts` and `customLevels.ts` files respectively.

Each level is a separate directory, achieving isolation between levels.

Since each level's tutorial article can be very long, writing them directly in ts files is not good for reading and management. So the strategy is to write all articles in `.md` Markdown files and read them in the level definition file `index.ts`.

Example code as follows, each level's information is independently defined and isolated:

```ts
import md from './README.md?raw';
import sql from './createTable.sql?raw';

export default {
  key: 'level1',
  title: 'Basic Syntax - Query - Full Table Query',
  initSQL: sql,
  content: md,
  defaultSQL: 'select * from student',
  answer: 'select * from student',
  hint: 'Please carefully review the examples given in this level',
  type: 'main',
} as LevelType;
```

### 3. Pure Frontend SQL Execution

How does the pure frontend operate databases and execute SQL? Developers with frontend experience will naturally think of `webassembly` technology.

That's right, through `webassembly` technology, we can execute languages other than JS (like C++) in the browser. But there's no need to implement SQL execution logic ourselves. Standing on the shoulders of giants, using the open-source `sql.js` library, we can execute our own SQL operations in the frontend.

The core code is in `src/core/sqlExecutor.ts`, defining two functions for initializing DB and executing SQL, very simple:

```ts
import initSqlJs, { Database, SqlJsStatic } from 'sql.js';

/**
 * SQL Executor
 *
 * @author coder_yupi https://github.com/liyupi
 */
let SQL: SqlJsStatic;

/**
 * Get initialized DB
 * @param initSql
 */
export const initDB = async (initSql?: string) => {
  if (!SQL) {
    SQL = await initSqlJs({
      // Required to load the wasm binary asynchronously
      locateFile: () =>
        'https://cdn.bootcdn.net/ajax/libs/sql.js/1.7.0/sql-wasm.wasm',
    });
  }
  // Create a database
  const db = new SQL.Database();
  if (initSql) {
    // Execute a single SQL string that contains multiple statements
    db.run(initSql); // Run the query without returning anything
  }
  return db;
};

/**
 * Execute SQL
 * @param db
 * @param sql
 */
export const runSQL = (db: Database, sql: string) => {
  return db.exec(sql);
};
```

When a level loads, it first executes the level's initialization SQL statements to create tables and import sample data, then users can write SQL to query data in the tables.

### 4. Answer Verification Mechanism

All code related to answer verification is defined in `src/core/result.ts`, including several execution states and functions to determine if results are correct.

How to determine if a user's SQL statement is correct?

Instead of directly comparing the user's input statement with our preset answer (which would be too rigid), we execute the following 3 operations in sequence:

1. Submit the user's input statement and answer statement separately to get two result tables
2. Check if the column names in both result tables are consistent (both name and order must match)
3. Check if the data in both result tables is consistent

Here the author used a trick to compare data - directly convert both result sets to JSON format and compare if the JSON strings are identical, instead of using nested for loops.

## Directory Structure

- public: Public static assets
- doc: Documentation resources
- src
  - assets: Static assets
  - components: Components
    - CodeEditor.vue: Code editor
    - MdViewer.vue: Markdown viewer
    - QuestionBoard.vue: Question panel (tutorial area)
    - SqlEditor.vue: SQL editor (practice area)
    - SqlResult.vue: SQL execution result (result area)
    - SqlResultTable.vue: SQL result table
  - configs: Configuration
    - routes: Routes
  - core: Core
    - sqlExecutor.ts: SQL execution engine
    - result.ts: Execution result variables and functions
    - globalStore.ts: Global state management
  - levels: Levels
    - custom: Custom levels
    - main: Main levels
      - level1: Each level is a separate directory
        - createTable.sql: Table creation statements for the level
        - index.ts: Level definition
        - README.md: Level tutorial
    - index.ts: Level-related variables and functions
    - level.d.ts: Level type definition
    - mainLevels: Main level list
    - customLevels: Custom level list
  - pages: Pages
    - IndexPage.vue: Home page
    - LevelsPage.vue: Levels page
    - PlaygroundPage.vue: Playground page
  - App.vue: Main app
  - main.ts: Vue main file
  - style.css: Global style file
  - vite-env.d.ts: Environment definition
- .eslintrc.js: Code standards
- .gitignore: Git ignore file
- index.html: Static homepage
- package.json: Project management
- tsconfig.json: TS configuration
- vite.config.ts: Build tool configuration
