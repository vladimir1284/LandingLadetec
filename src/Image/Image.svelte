<script>
    import { createEventDispatcher } from "svelte";
    import { onMount } from "svelte";

    export let src;
    export let alt;
    export let css_class = "img-fluid";

    const dispatch = createEventDispatcher();

    let loaded = false;
    let thisImage;

    function onload() {
        dispatch("load", {});
    }

    onMount(() => {
        thisImage.onload = () => {
            loaded = true;
            onload();
        };
    });
</script>

<img
    {src}
    {alt}
    class:loaded
    bind:this={thisImage}
    loading="lazy"
    class={css_class}
/>

<style>
    img {
        opacity: 0;
        transition: opacity 1200ms ease-out;
    }
    img.loaded {
        opacity: 1;
    }
</style>
