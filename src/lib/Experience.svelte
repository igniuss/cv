<script lang="ts">
  interface Experience {
    title: string;
    company: string;
    logoUrl: string;
    startDate: Date;
    endDate: Date | null;
    location: string;
  }
  let {
    title,
    location,
    company,
    logoUrl,
    startDate,
    endDate,
  }: Experience = $props();

  function getDateString(date: Date) {
    return date.toLocaleString("en-us", { month: "short", year: "numeric" });
  }
  function getDifference(start: Date, end: Date | null) {
    let _end : Date;
    if(end == null) {
      _end = new Date();
    } else {
      _end = end;
    }

    return (_end.getUTCFullYear() - start.getUTCFullYear());
  }
</script>

<div class="flex gap-2">
  <img
    class="aspect-square rounded-xl shadow"
    src={logoUrl}
    alt="toca-boca-logo"
  />
  <div>
    <p>{title}</p>
    <p>{company} · Full Time</p>
    <p>
      {getDateString(startDate)} - {endDate == null
        ? "Present"
        : getDateString(endDate)} · {getDifference(startDate, endDate)} years
    </p>
    <p class="text-slate-600">{location}</p>
  </div>
</div>
