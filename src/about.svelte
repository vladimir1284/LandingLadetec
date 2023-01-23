<script>
    import Leaf from "svelte-material-icons/Leaf.svelte";
    import LockOpen from "svelte-material-icons/LockOpen.svelte";
    import LayersTripleOutline from "svelte-material-icons/LayersTripleOutline.svelte";
    import Cog from "svelte-material-icons/CogOutline.svelte";

    const ICONS = {
        LayersTripleOutline: LayersTripleOutline,
        Cog: Cog,
        LockOpen: LockOpen,
        Leaf: Leaf,
    };

    import { inview } from "svelte-inview";
    import { fly, fade } from "svelte/transition";
    import { quintOut } from "svelte/easing";

    let isInView;

    import about from "./data/about.json";
</script>

<section id="about" class="about section-bg">
    <div class="container" data-aos="fade-up">
        <div class="row no-gutters">
            <div class="content col-xl-5 d-flex align-items-stretch">
                <div class="content">
                    <h3>
                        {about.header.title}
                    </h3>
                    <p>
                        {about.header.body}
                    </p>
                    <a href="/#" class="about-btn"
                        ><span>Conócenos</span>
                        <i class="bx bx-chevron-right" /></a
                    >
                </div>
            </div>
            <div
                class="col-xl-7 d-flex align-items-stretch"
                use:inview={{ unobserveOnEnter: true, rootMargin: "-20%" }}
                on:change={({ detail }) => {
                    isInView = detail.inView;
                }}
            >
                {#if isInView}
                    <div
                        class="icon-boxes d-flex flex-column justify-content-center"
                    >
                        <div class="row">
                            {#each about.highlights as highlight, index}
                                <div
                                    in:fly={{
                                        y: 200,
                                        delay: 250 + 500 * index,
                                        duration: 2000,
                                        easing: quintOut,
                                    }}
                                    class="col-md-6 icon-box"
                                    data-aos="fade-up"
                                    data-aos-delay={100 * (index + 1)}
                                >
                                    <div
                                        in:fade={{
                                            delay: 250 + 500 * index,
                                            duration: 2000,
                                        }}
                                    >
                                        <i class="bx">
                                            <svelte:component
                                                this={ICONS[highlight.icon]}
                                                width="1em"
                                                height="1em"
                                                color="#e03a3c"
                                            />
                                        </i>
                                        <h4>{highlight.title}</h4>
                                        <p>
                                            {highlight.body}
                                        </p>
                                    </div>
                                </div>
                            {/each}
                        </div>
                    </div>
                {/if}
            </div>
        </div>
    </div>
</section>
