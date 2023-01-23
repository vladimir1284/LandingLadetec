<script>
    import EmoticonHappy from "svelte-material-icons/EmoticonHappy.svelte";
    import FileDocument from "svelte-material-icons/FileDocument.svelte";
    import Headset from "svelte-material-icons/Headset.svelte";
    import Group from "svelte-material-icons/Group.svelte";

    import { fly } from "svelte/transition";
    import { inview } from "svelte-inview";

    let isInView;

    import Counter from "svelte-counter";

    const items = [
        {
            count: { count: 232 },
            icon: EmoticonHappy,
            text: "Happy Clients",
        },
        {
            count: { count: 521 },
            icon: FileDocument,
            text: "Projects",
        },
        {
            count: { count: 1463 },
            icon: Headset,
            text: "Hours Of Support",
        },
        {
            count: { count: 18 },
            icon: Group,
            text: "Hard Workers",
        },
    ];
</script>

<section
    id="counts"
    class="counts"
    use:inview={{ unobserveOnEnter: true, rootMargin: "-20%" }}
    on:change={({ detail }) => {
        isInView = detail.inView;
    }}
>
    {#if isInView}
        <div class="container">
            <div in:fly={{ y: 200, delay: 250, duration: 1000 }} class="row">
                {#each items as item}
                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bx">
                                <svelte:component
                                    this={item.icon}
                                    width="1em"
                                    height="1em"
                                    color="#e03a3c"
                                />
                            </i>
                            <Counter
                                values={item.count}
                                duration="1000"
                                random="false"
                                minspeed="10"
                                let:counterResult
                            >
                                <span class="purecounter"
                                    >{counterResult.count}</span
                                >
                            </Counter>

                            <p>{item.text}</p>
                        </div>
                    </div>
                {/each}
            </div>
        </div>
    {/if}
</section>
