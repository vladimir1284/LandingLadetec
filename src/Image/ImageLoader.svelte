<script>
    import { createEventDispatcher } from "svelte";
    import { onMount } from "svelte";

    export let src;
    export let alt;
    export let css_class = "";

    const dispatch = createEventDispatcher();

    function onload() {
        dispatch("load", {});
    }

    import IntersectionObserver from "./IntersectionObserver.svelte";
    import Image from "./Image.svelte";

    let nativeLoading = false;

    // Determine whether to bypass our intersecting check
    // onMount(() => {
    //   if ('loading' in HTMLImageElement.prototype) {
    //     nativeLoading = true
    //   }
    // })
</script>

<IntersectionObserver once={true} let:intersecting>
    {#if intersecting || nativeLoading}
        <Image {alt} {src} {css_class} on:load={onload} />
    {/if}
</IntersectionObserver>
