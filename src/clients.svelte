<script>
	import ImageLoader from "./Image/ImageLoader.svelte";

	const images = [
		"assets/img/clients/copeco.png",
		"assets/img/clients/cocesna.png",
		"assets/img/clients/insmet.png",
		"assets/img/clients/geci.png",
		"assets/img/clients/ideam.jpg",
		"assets/img/clients/insivumeh.jpg",
		"assets/img/clients/inameh.png",
	];
</script>

<section id="clients" class="clients">
	<div class="container" data-aos="zoom-in">
		<div class="clients-slider swiper">
			<div class="swiper-wrapper align-items-center">
				{#each images as image}
					<div class="swiper-slide">
						<ImageLoader src={image} alt="" />
					</div>
				{/each}
			</div>
			<div class="swiper-pagination" />
		</div>
	</div>
</section>
