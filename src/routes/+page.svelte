<script lang="ts">
	import Hero from './hero.svelte';
	import Clients from './clients.svelte';
	import About from './about.svelte';
	import Count from './count.svelte';
	import Tabs from './tabs.svelte';
	import Services from './services.svelte';
	import Portfolio from './portfolio.svelte';
	import Testimonials from './testimonials.svelte';
	import Team from './team.svelte';
	import Contact from './contact.svelte';
	import Footer from './footer.svelte';

	// import {onMount} from 'svelte'
	// import {template} from './main'

	// onMount(template);
</script>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center">
	<div class="container d-flex align-items-center">
		<a href="index.html" class="logo me-2"><img src="logo.png" alt="" /></a>
		<h1 class="logo me-auto"><a href="index.html"><span>Ladetec</span></a></h1>

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
<Contact />
<Footer />

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"
	><i class="bi bi-arrow-up-short" /></a
>
