<script>
    import { fly, scale } from "svelte/transition";
    import { quintOut } from "svelte/easing";
    import { onMount } from "svelte";

    let visible = false;

    onMount(() => {
        visible = true;
    });
</script>

<section id="hero" class="d-flex align-items-center">
    <div class="container">
        {#if visible}
            <div
                in:fly={{
                    x: -200,
                    y: 200,
                    delay: 250,
                    duration: 1000,
                    easing: quintOut,
                }}
                class="row"
            >
                <div in:scale={{ delay: 250, duration: 1000 }} class="col-xl-7">
                    <h1>Hacia la independencia tecnológica en los radares</h1>
                    <h2>
                        Somos un equipo de experimentados ingenieros creando
                        soluciones tecnológicas para los radares meteorológicos
                    </h2>
                    <!-- <h1>Smarter weather radar network with Ladetec</h1>
				<h2>We are team of experienced engineers creating technology solutions for weather radars</h2> -->
                    <!-- <a href="#about" class="btn-get-started scrollto">Get Started</a> -->
                </div>
            </div>
        {/if}
    </div>
</section>
