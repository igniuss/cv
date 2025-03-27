<script lang="ts">
let { title, children } = $props();
</script>

<div class="border rounded-xl p-4">
  <span class="flex align-middle justify-center">
    <p class="text-2xl absolute -translate-y-8 bg-white px-5 rounded-xl">
      {title}
    </p>
  </span>
  <br />
  {@render children?.()}
</div>
