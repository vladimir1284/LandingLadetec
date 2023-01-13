<script>
  const { dataset_dev, each } = require("svelte/internal");
  import { onMount } from "svelte";

  import Hero from "./hero.svelte";
  import Clients from "./clients.svelte";
  import About from "./about.svelte";
  import Count from "./count.svelte";
  import Tabs from "./tabs.svelte";
  import Services from "./services.svelte";
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
  <header id="header" class="d-flex flex-column justify-content-center">
    <nav id="navbar" class="navbar nav-menu">
      <ul>
        <li>
          <a href="#hero" class="nav-link scrollto active"
            ><i class="bx bx-home" /> <span>Home</span></a
          >
        </li>
        <li>
          <a href="#about" class="nav-link scrollto"
            ><i class="bx bx-user" /> <span>About</span></a
          >
        </li>
        <li>
          <a href="#resume" class="nav-link scrollto"
            ><i class="bx bx-file-blank" /> <span>Resume</span></a
          >
        </li>
        <li>
          <a href="#portfolio" class="nav-link scrollto"
            ><i class="bx bx-book-content" /> <span>Portfolio</span></a
          >
        </li>
        <li>
          <a href="#contact" class="nav-link scrollto"
            ><i class="bx bx-envelope" /> <span>Contact</span></a
          >
        </li>
      </ul>
    </nav>
    <!-- .nav-menu -->
  </header>
  <!-- End Header -->

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
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li><a href="https://meteoradares.wordpress.com/">Blog</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
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
  <Services />
  <Portfolio />
  <Testimonials />
  <Team />
</main>
