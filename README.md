# DropFile Frontend

This project is a frontend for the DropFile - a DropBox alternative developed for Cloud Computing Systems.

## Project Structure

- `src` - source code
  - `assets` - static assets
  - `components` - Vue components - reusable pieces of UI
  - `router` - Vue router - handles navigation in Single Page Application
  - `store` - Pinia store - handles state management 
  - `views` - Vue views - pages of the application
  - `App.vue` - root Vue component
  - `main.js` - entry point

## Vue Quick Tutorial

### Component in Vue3

```vue
<script setup>
import { ref } from 'vue';
  
const count = ref(0);
const increment = () => count.value++;
</script>

<template>
  <button @click="increment">
    Count is: {{ count }}
  </button>
</template>

<style scoped>
button {
  background-color: #42b983;
  border: none;
  border-radius: 2px;
  color: white;
  font-size: 15px;
  padding: 8px 16px;
}
</style>
```

Components consist of three parts:

- `<script setup>` - script part of the component
- `<template>` - template part of the component, HTML-like syntax
- `<style scoped>` - style part of the component

To make a reactive variable, use `ref` function. To make a reactive object (whole object, not just a string), use `reactive` function.
To access the value of the reactive variable, use `.value` property.

Further information on exemplary structures inside `template` may be found in [Vue documentation](https://v3.vuejs.org/guide/introduction.html#declarative-rendering).


## Project Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Compile and Minify for Production

```sh
npm run build
```

### Format Code

```sh
npm run format
```
