<script>
    const { dataset_dev, each } = require("svelte/internal");
    import { onMount } from "svelte";

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
    <!-- ======= Mobile nav toggle button ======= -->
    <!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
    <i class="bi bi-list mobile-nav-toggle d-xl-none" />

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
        <div class="container d-flex align-items-center">
            <a href="index.html" class="logo me-2"
                ><img src="assets/img/logo.png" alt="" /></a
            >
            <h1 class="logo me-auto">
                <a href="index.html"><span>Ladetec</span></a>
            </h1>

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li>
                        <a class="nav-link scrollto active" href="#hero">Home</a
                        >
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="#about"
                            >Quienes somos</a
                        >
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="#services"
                            >Servicios</a
                        >
                    </li>
                    <li>
                        <a class="nav-link scrollto " href="#portfolio"
                            >Portfolio</a
                        >
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="#team">Equipo</a>
                    </li>
                    <li>
                        <a
                            href="https://meteoradares.wordpress.com/category/ladetec/"
                            >Blog</a
                        >
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="#contact">Contacto</a
                        >
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle" />
            </nav>
        </div>
    </header>
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
</main>
