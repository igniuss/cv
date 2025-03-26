<script lang="ts">
  import { Dot } from "lucide-svelte";
  interface Presentation {
    name: string;
    sub: string;
  }

  let presentations: Presentation[] = [
    { name: "Regex", sub: "What the [Ff]**k is this?" },
    { name: "What even is LINQ", sub: "Why you should trust Microsoft" },
    { name: "Why is my file so bloated!", sub: "A Json Story" },
    { name: "Ah! It burns!", sub: "C# Reflection shines bright" },
    { name: "Dude, where's my code??", sub: "Git introduction and hacks" },
    {
      name: "Everything everywhere all at once",
      sub: "Why our data structures are too generic",
    },
    { name: "KISS", sub: "Why overcomplicating things is painful" },
    { name: "Toca Brick", sub: "GPU powered SVG Rendering" },
    { name: "Break the Void", sub: "Game Optimziation Workshop" },
    { name: "Gotta go Fast", sub: "Game Optimziation Workshop" },
    {
      name: 'You had me at "Hello World"',
      sub: "An introduction to Rust 🦀",
    },
    { name: "Roslyn", sub: "The future is now old man" },
    {
      name: "What the GUI?!",
      sub: "How we enabled developers using Reflection & Code Generation",
    },
    {
      name: "The plural of Regex is Regrets",
      sub: "When and how to use Regex",
    },
  ];
</script>

<ul class="list-disc space-y-1 list-inside">
  {#each presentations as presentation}
    <li>{presentation.name} ━ {presentation.sub}</li>
  {/each}
</ul>
