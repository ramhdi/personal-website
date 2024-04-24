<template>
  <main class="min-h-screen">
    <AppHeader class="mb-12" title="Projects" :description="description" />
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
      <AppProjectCard v-for="(project, id) in projects.reverse()" :key="id" :project="project" class="w-full" />
    </div>
  </main>
</template>

<script setup>
const description =
  "Most of my projects are related to electronics. Will add my software engineering projects soon!";
useSeoMeta({
  title: "Projects | Rama Rahardi",
  description,
});

const { data: projects } = await useAsyncData("projects-all", () =>
  queryContent("/projects").find()
);
</script>
