<template>
  <div>
    <h2 class="uppercase text-xs font-semibold text-gray-400 mb-6">
      FEATURED PROEJCTS
    </h2>
    <!-- <div class="space-x-4">
      <AppProjectCardNew
        v-for="(project, id) in projects"
        :key="id"
        :project="project"
      />
    </div> -->
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
      <AppProjectCard
        v-for="(project, id) in projects"
        :key="id"
        :project="project"
        class="w-full"
      />
    </div>
    <div class="flex items-center justify-center mt-6 text-sm">
      <UButton
        label="All Projects &rarr;"
        to="/projects"
        variant="link"
        color="gray"
      />
    </div>
  </div>
</template>

<script lang="ts" setup>
const { data: projects } = await useAsyncData("projects-home", () =>
  queryContent("/projects").limit(2).find()
);
</script>
