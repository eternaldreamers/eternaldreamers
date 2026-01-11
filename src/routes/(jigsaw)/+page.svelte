<script>
    import { onMount } from "svelte";
    import { browser } from "$app/environment";
	import {Stage, Layer} from "svelte-konva";
    import Piece from "$lib/components/Piece.svelte";

    const config = $state({
      width: 0,
      height: 0,
    });

    onMount(() => {
        config.height = window.innerHeight;
        config.width = window.innerWidth;
    });
</script>

{#if browser}
<Stage width={config.width} height={config.height}>
    <Layer>
        <Piece></Piece>
    </Layer>
</Stage>
{/if}
