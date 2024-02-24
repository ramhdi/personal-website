<template>
  <NuxtLink
    class="flex flex-col items-center gap-4 p-2 rounded-lg shadow-md hover:shadow-lg bg-white dark:bg-gray-800"
    :to="project.url"
    target="_blank"
    external
  >
    <div class="w-full h-60 bg-gray-200 dark:bg-gray-900 rounded-t-lg overflow-hidden">
      <img
        :src="project.thumbnail"
        :alt="project.name"
        class="object-cover w-full h-full"
      />
    </div>
    <div class="flex flex-col items-center w-full p-4">
      <h3 class="text-lg font-medium text-center text-primary-600">{{ project.name }}</h3>
      <p class="text-gray-400 text-sm text-center">{{ project.description }}</p>
    </div>
  </NuxtLink>
</template>

<script setup>
defineProps({
  project: {
    type: Object,
    required: true,
  },
});
</script>
