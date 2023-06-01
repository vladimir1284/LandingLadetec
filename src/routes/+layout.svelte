<script>
	import Header from '../lib/header.svelte';
	import ArrowUp from 'svelte-material-icons/ArrowUp.svelte';
	import '../css/bootstrap.css';

	// import `${base}/assets/css/style.css';
</script>

<Header />
<main>
	<slot />
</main>

<a href="/#hero" class="back-to-top d-flex align-items-center justify-content-center active"
	><i class="bi bi-arrow-up-short"><ArrowUp /></i></a
>
