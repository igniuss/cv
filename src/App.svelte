<script lang="ts">
  import "@fontsource/iosevka";

  import Experience from "./lib/Experience.svelte";
  import Divider from "./lib/Divider.svelte";
  import Presentations from "./lib/Presentations.svelte";

  import gravitar from "./assets/gravitar.jpg";
  import qatool from "./assets/screenshots/qa-tool.png";
  import { MailPlus, PhoneCall } from "lucide-svelte";
  import Box from "./lib/Box.svelte";

  const tbwGallery = Object.values(
    import.meta.glob(
      "./assets/screenshots/tbw/*.{png,jpg,jpeg,PNG,JPEG,webp,WEBP}",
      { eager: true, as: "url" },
    ),
  );
  const hbGallery = Object.values(
    import.meta.glob(
      "./assets/screenshots/hb/*.{png,jpg,jpeg,PNG,JPEG,webp,WEBP}",
      { eager: true, as: "url" },
    ),
  );

  const interests = [
    "Keyboards",
    "Gaming",
    "Code Generation",
    "Sharing Knowledge",
    "NixOS",
    "Linux",
    "Optimization Quirks",
    "Rust 🦀",
    "Unity3D",
    "Murder (the ECS engine)",
    "Music"
  ];

  function getInterest() {
    return interests[Math.floor(Math.random() * interests.length)];
  }
</script>

<div class="mx-auto container flex flex-col p-5 text-xs md:text-base">
  <div class="gap-10 flex">
    <img
      src={gravitar}
      alt=""
      class="object-contain rounded-full aspect-square -rotate-5 hidden md:inline h-32"
    />
    <span class="grow"></span>
    <div class="flex flex-col text-right">
      <h1 class="text-3xl">Sean Lavaerts</h1>
      <div class="flex gap-2 items-center">
        <span class="grow"></span>
        <MailPlus size={12} />
        <p>
          <a
            class="text-black underline-offset-3 underline"
            href="mailto:inquire@igniuss.com">inquire@igniuss.com</a
          >
        </p>
      </div>
      <div class="flex gap-2 items-center">
        <span class="grow"></span>
        <PhoneCall size={12} />
        <p>+46736548867</p>
      </div>
      <p>Native Dutch & English</p>
      <p class="text-sm">Learning Swedish</p>
      <br />
      <p>Belgian 🇧🇪 | Living in Sweden 🇸🇪</p>
    </div>
  </div>
  <div class="m-2 p-2">
    <p>Ask me about: {getInterest()}</p>
  </div>
  <Divider />
  <div class="flex flex-col gap-4">
    <p class="text-3xl">Experience</p>

    <Experience
      title="Programmer | C#, Svelte, JS, TS, Bash"
      company="Toca Boca"
      startDate={new Date("2020-06")}
      endDate={null}
      logoUrl="https://media.licdn.com/dms/image/v2/D4D0BAQELU7Ss4zGPDw/company-logo_100_100/company-logo_100_100/0/1714714241583/toca_boca_logo?e=1748476800&v=beta&t=39qnkPkwgOEGYP6MM4521mGPUhXMHvb8KhDv9vnYr38"
      location="Stockholm, Sweden"
    />
    <Experience
      title="Programmer | C#, ASP.Net, JS, Lua, PHP, Bash"
      company="CopyBugPaste"
      startDate={new Date("2014-11")}
      endDate={new Date("2020-5")}
      logoUrl="https://media.licdn.com/dms/image/v2/C560BAQE5qyvOUY201A/company-logo_100_100/company-logo_100_100/0/1631357681872?e=1748476800&v=beta&t=1LEq2xLvryDZ2BljBJ7gm4qRqiFSsK8QoeAOALBGN1s"
      location="Leuven, Belgium"
    />

    <Divider />
    <Box title="Toca Boca World">
      <p>Award Winning title on iOS and Android</p>
      <p class="text-3xl"></p>
      <p class="text-2xl">Outfit Maker</p>
      <p>Player Facing outfit designer tool</p>
      <p class="text-2xl">SVG Renderer</p>
      <p>
        Developer Facing system that creates 3D Meshes out of SVG Files to be
        rendered on the GPU
      </p>
      <p class="text-2xl">External QA Tool</p>
      <p>
        Developer Facing system for debugging builds on external devices, built
        with Svelte
      </p>
      <details>
        <summary class="text-xs">QA Tool - Screenshots</summary>
        <div class="w-full">
          <img src={qatool} alt="" class="rounded-3xl object-contain" />
        </div>
      </details>

      <details>
        <summary class="text-xs">Game Screenshots</summary>
        <div class="grid grid-cols-2 md:grid-cols-3 gap-4 m-4">
          {#each tbwGallery as img}
            <img src={img} class="object-contain rounded-xl" alt={img} />
          {/each}
        </div>
      </details>
    </Box>
    <br />
    <Box title="Homebrew - Patent Unknown">
      <p class="italic">Roles:</p>
      <ul class="list-disc space-y-1 list-inside">
        <li>Programmer</li>
        <li>Community Manager</li>
        <li>Modding API</li>
        <li>Multiplayer Services</li>
        <li>Website Maintainer</li>
        <li>Wiki Maintainer</li>
      </ul>
      <Divider />
      <p class="italic">Languages | Services</p>
      <ul class="list-disc space-y-1 list-inside">
        <li>C#</li>
        <li>ASP.Net</li>
        <li>SteamWorks</li>
        <li>C++</li>
        <li>Html | CSS | Javascript</li>
        <li>PHP</li>
      </ul>
      <Divider />
      <p class="italic text-lg">Early Access title on Steam</p>

      <p>
        Unleash your creativity and craft anything from flying cars to
        jet-powered toilets.Fair warning: there's a learning curve. But once
        you've got it, the sky's the limit for your creations!While active
        development is paused, we focus preserving the game and keeping it
        accessible.
      </p>
      <br />
      <p>
        Every vehicle showcased in the screenshots is a testament to our
        community's ingenuity. Homebrew is crafted with passion by a small,
        dedicated team and while we've poured our heart and soul into this
        project it has its quirks. The learning curve is steep, and there may be
        imperfections, but if you crave a challenge and a platform where
        creativity knows no bounds, Homebrew awaits.
      </p>

      <details>
        <summary class="text-xs">Game Screenshots</summary>
        <div class="grid grid-cols-2 md:grid-cols-3 gap-4 m-4">
          {#each hbGallery as img}
            <img src={img} class="object-contain rounded-xl" alt={img} />
          {/each}
        </div>
      </details>
    </Box>
    <br />
    <Box title="Projects under NDA">
      <p>4 titles for Escape Rooms in Belgium</p>
      <p>2 multiplayer titles for VR Arcade in Belgium</p>
      <p>Booking system written in C# (ASP.Net) with Lua modules</p>
      <p>Cloud Orchestrator system written in C# (ASP.Net) with Lua modules</p>
    </Box>
    <Divider />
    <br />
    <Box title="Other Information">
      <p>
        During my time in the industry, I have done many presentations, in-house
        for fellow developers, and a handful for external companies
      </p>
      <br />
      <p>
        Sadly I can't publicly share most of the presentations, but here are the
        topics
      </p>
      <br />
      <p class="text-2xl">Presentations</p>
      <Presentations />

      <br>
      <Divider />
    </Box>
  </div>

  <div class="flex py-4">
    <span class="grow"></span>
    <p class="text-[8px]">Psst! Thanks for reaching the end 💖</p>
  </div>
</div>
