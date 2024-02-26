<script lang="ts">
    import Console from "$lib/components/console_tab/Console.svelte";
    import LogStore from "$lib/stores/LogStore.ts";
    import Titelbar from "$lib/Titelbar.svelte";

    import type { ConsolePrint } from "$lib/types/console_tab.types";

    let logs: Array<ConsolePrint>;

    LogStore.subscribe((data: Array<ConsolePrint>) => {
        logs = data;
    });
</script>

<Titelbar />
<Console items={logs} />