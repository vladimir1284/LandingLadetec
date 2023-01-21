<script>
    import { onMount } from "svelte";

    import Menu from "svelte-material-icons/Menu.svelte";
    import ArrowUp from "svelte-material-icons/ArrowUp.svelte";

    import Header from "./header.svelte";
    import Hero from "./hero.svelte";
    import Clients from "./clients.svelte";
    import About from "./about.svelte";
    import Count from "./count.svelte";
    import Tabs from "./tabs.svelte";
    import Hitos from "./hitos.svelte";
    import Portfolio from "./portfolio.svelte";
    import Testimonials from "./testimonials.svelte";
    import Team from "./team.svelte";

    import { template } from "./template";

    onMount(template);
</script>

<main>
    <!-- ======= Header ======= -->
    <Header />
    <!-- End Header -->
    <Hero />
    <Clients />
    <About />
    <Count />
    <Tabs />
    <Hitos />
    <Portfolio />
    <Testimonials />
    <Team />
    <a
        href="/#"
        class="back-to-top d-flex align-items-center justify-content-center active"
        ><i class="bi bi-arrow-up-short"><ArrowUp /></i></a
    >
</main>
