<script lang="ts">
	import data from './hitos.json';
	import ImageLoader from '../Image/ImageLoader.svelte';
	import { base } from '$app/paths';

	const hitos = data.hitos;
	const items = [[], []];
	let current = 0;
	for (let i = 0; i < hitos.length; i++) {
		if (i > hitos.length / 2) {
			current = 1;
		}
		items[current].push(hitos[i]);
	}
	// Images
	const images = data.images;
	let position = 0;
	let percent = 0;
	let image = images[position];
	function handleScroll(e) {
		percent = e.target.scrollTop / (e.target.scrollHeight - e.target.clientHeight);
		position = Math.ceil(percent * images.length) - 1;
		position = Math.max(0, position);
	}
	$: {
		image = images[position];
	}
</script>

<section id="services" class="services section-bg hitos">
	<div class="container">
		<div class="section-title pb-0">
			<h2>Hitos</h2>
			<p>
				Desde el año 1983 los radares meteorológicos cubanos han experimentado un constante y
				creciente proceso de innovación tecnológica. Conozca los principales hitos protagonizados
				por el Laboratorio de Desarrollo Técnico (Ladetec).
			</p>
			<div class="content class mt-2">
				<a
					href="https://meteoradares.wordpress.com/2021/04/27/hitos-cubanos-en-la-actividad-de-los-radares-meteorologicos/"
					class="hitos-btn"
					><span>Leer el blog</span>
					<i class="bx bx-chevron-right" /></a
				>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 mt-3 mt-lg-0 align-self-center img text-center">
				<ImageLoader src={`${base}/` + image} alt="" css_class="my-auto img-fluid" />
			</div>
			<div class="col-lg-6 text-center pos">
				<div
					on:scroll={handleScroll}
					class="timeline overflow-auto {percent != 1 ? 'fade-bottom' : ''}"
				>
					<div class="outer">
						{#each hitos as item}
							<div class="card-tl">
								<div class="info">
									<h5 class="title">{item.year}</h5>
									<h4>{item.title}</h4>
									<p>
										{item.body}
									</p>
								</div>
							</div>
						{/each}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	.img {
		z-index: 1;
		/* width: 100%; */
	}
	/* Shadow */
	.fade-bottom:after {
		content: '';
		position: absolute;
		z-index: 1;
		bottom: 0em;
		left: 0;
		pointer-events: none;
		background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), #1b1b1b 50%);
		width: 100%;
		height: 4em;
	}
	.pos {
		position: relative;
	}
	/* Timeline Container */
	.timeline {
		background: var(--primary-color);
		margin: 10px auto;
		padding: 10px;
		max-height: 600px;
	}

	/* card-tl container */
	.card-tl {
		position: relative;
	}

	/* Global ::before */
	.card-tl::before {
		content: '';
		position: absolute;
		width: 50%;
		border: solid #e03a3c;
	}

	/* Setting the border of top, bottom, left */
	.card-tl:nth-child(odd)::before {
		left: 0px;
		top: -4.5px;
		bottom: -4.5px;
		border-width: 5px 0 5px 5px;
		border-radius: 50px 0 0 50px;
	}

	/* Setting the border of top, bottom, right */
	.card-tl:nth-child(even)::before {
		right: 0;
		top: 0;
		bottom: -1px;
		border-width: 5px 5px 5px 0;
		border-radius: 0 50px 50px 0;
	}

	/* Removing the border if it is the first card-tl */
	.card-tl:first-child::before {
		border-top: 0;
		border-top-left-radius: 0;
	}

	/* Removing the border if it is the last card-tl  and it's odd */
	.card-tl:last-child:nth-child(odd)::before {
		border-bottom: 0;
		border-bottom-left-radius: 0;
	}

	/* Removing the border if it is the last card-tl  and it's even */
	.card-tl:last-child:nth-child(even)::before {
		border-bottom: 0;
		border-bottom-right-radius: 0;
	}

	/* Information about the timeline */
	.info {
		display: flex;
		flex-direction: column;
		border-radius: 10px;
		padding: 20px;
		font-size: 15px;
		color: #848484;
	}
	.info h4 {
		color: white;
	}
	.info p {
		margin: 0;
	}

	/* Title of the card-tl */
	.title {
		color: #e03a3c;
		position: relative;
	}

	/* Timeline dot  */
	.title::before {
		content: '';
		position: absolute;
		top: 15px;
		width: 15px;
		height: 15px;
		background: white;
		border-radius: 999px;
		border: 3px solid #e03a3c;
	}

	/* text right if the card-tl is even  */
	.card-tl:nth-child(even) > .info > .title {
		text-align: right;
	}

	/* text right if the card-tl is even  */
	.card-tl:nth-child(odd) > .info > h4 {
		text-align: right;
	}
	/* text right if the card-tl is even  */
	.card-tl:nth-child(odd) > .info > p {
		text-align: right;
	}

	/* setting dot to the left if the card-tl is odd */
	.card-tl:nth-child(odd) > .info > .title::before {
		left: -25px;
	}

	/* setting dot to the right if the card-tl is odd */
	.card-tl:nth-child(even) > .info > .title::before {
		right: -25px;
	}
</style>
