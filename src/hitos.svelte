<script lang="ts">
    import Arrow from "svelte-material-icons/GreaterThan.svelte";

    import {
        Timeline,
        TimelineItem,
        TimelineSeparator,
        TimelineDot,
        TimelineConnector,
        TimelineContent,
        TimelineOppositeContent,
    } from "svelte-vertical-timeline";
    import { onMount } from "svelte";

    import data from "./data/hitos.json";

    const hitos = data.hitos;

    // Handle navigation
    let items = [];
    let loaded = false;

    const visible_items = 5;
    const nav_step = 4;

    let index = 0;
    let last_is_visible = false;
    let fist_is_visible = true;

    function handleDisplacement(index) {
        console.log(index);
        if (loaded) {
            items.length = 0;
            if (hitos.length - index < visible_items) {
                index = hitos.length - visible_items;
            }
            for (let i = 0; i < visible_items; i++) {
                if (i < hitos.length - index) {
                    items.push(hitos[index + i]);
                } else {
                    break;
                }
            }
            if (index > 0) {
                fist_is_visible = false;
            } else {
                fist_is_visible = true;
            }
            if (index >= hitos.length - visible_items) {
                last_is_visible = true;
            } else {
                last_is_visible = false;
            }
        }
    }

    function load() {
        loaded = true;
        console.log(hitos.length);
        handleDisplacement(index);
    }
    $: {
        handleDisplacement(index);
    }
    onMount(load);
</script>

<section id="services" class="services section-bg hitos">
    <div class="container" data-aos="fade-up">
        <div class="section-title">
            <h2>Hitos</h2>
            <p>
                Desde el año 1983 los radares meteorológicos cubanos han
                experimentado un constante y creciente proceso de innovación
                tecnológica. Conozca los principales hitos protagonizados por el
                Laboratorio de Desarrollo Técnico (LADETEC).
            </p>
        </div>
        {#if !fist_is_visible}
            <div class="timeline-up text-center">
                <button
                    class="control-btn"
                    on:click={() => {
                        index -= nav_step;
                    }}
                >
                    <Arrow width="3em" height="3em" />
                </button>
            </div>
        {/if}
        <div class={last_is_visible ? "" : "fade-out"}>
            <Timeline position="alternate">
                {#each items as item}
                    <TimelineItem>
                        <TimelineOppositeContent slot="opposite-content">
                            <p style={"margin-top: -1px; color: #e03a3c;"}>
                                {item.year}
                            </p>
                        </TimelineOppositeContent>
                        <TimelineSeparator>
                            <TimelineDot style={"background-color: #e03a3c;"} />
                            <TimelineConnector
                                style={"background-color: #e03a3c;"}
                            />
                        </TimelineSeparator>
                        <TimelineContent>
                            <h5 style={"margin-top: -2px;"}>{item.title}</h5>
                            <p class="small" style={"margin-top: -2px;"}>
                                {item.body}
                            </p>
                        </TimelineContent>
                    </TimelineItem>
                {/each}
            </Timeline>
        </div>
        {#if !last_is_visible}
            <div class="timeline-down text-center">
                <button
                    class="control-btn"
                    on:click={() => {
                        index += nav_step;
                    }}
                >
                    <Arrow width="3em" height="3em" />
                </button>
            </div>
        {/if}
        <div class="content">
            <a
                href="https://meteoradares.wordpress.com/2021/04/27/hitos-cubanos-en-la-actividad-de-los-radares-meteorologicos/"
                class="hitos-btn"
                ><span>Entrada del blog</span>
                <i class="bx bx-chevron-right" /></a
            >
        </div>
    </div>
</section>

<style>
    .timeline-up {
        transform: rotate(-90deg);
    }
    .timeline-down {
        transform: rotate(90deg);
    }
    .control-btn {
        background: transparent;
        border: 0;
        color: #e03a3c;
    }
    .control-btn:hover {
        color: white;
    }
    .fade-out:after {
        content: "";
        position: absolute;
        z-index: 1;
        bottom: 7em;
        left: 0;
        pointer-events: none;
        background-image: linear-gradient(
            to bottom,
            rgba(0, 0, 0, 0),
            #1b1b1b 70%
        );
        width: 100%;
        height: 4em;
    }
</style>
