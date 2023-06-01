<script>
	import ImageLoader from '../Image/ImageLoader.svelte';

	// Import Swiper Svelte components
	import { Swiper, SwiperSlide } from 'swiper/svelte';
	// import Swiper required modules
	import { Pagination, Autoplay } from 'swiper';
	// Import Swiper styles
	// import 'swiper/css';
	// import 'swiper/css/pagination';
	// import 'swiper/css/autoplay';

	import QuoteClose from 'svelte-material-icons/FormatQuoteClose.svelte';
	import QuoteOpen from 'svelte-material-icons/FormatQuoteOpen.svelte';

	import data from './testimonials.json';
	import { base } from '$app/paths';

	const testimonials = data.testimonials;

	// Quote fontsize related to the body lenght
	testimonials.forEach((testimonial) => {
		testimonial.fsize = Math.round(24 - testimonial.body.length / 27);
	});
</script>

<section id="testimonials" class="testimonials">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>Testimonios</h2>
			<p>
				Algunas personas con altas responsabilidades han comentado sobre el trabajo de Ladetec en
				todos estos años. Tenemos demás el honor de haber sido la casa y escuela de muchos
				excelentes ingenieros que hoy trabajan por mundo.
			</p>
		</div>
		<Swiper
			modules={[Pagination, Autoplay]}
			slidesPerView={'auto'}
			autoplay={{ delay: 10000, disableOnInteraction: false }}
			rewin={true}
			speed={600}
			pagination={{
				type: 'bullets',
				clickable: true
			}}
			breakpoints={{
				320: {
					slidesPerView: 1,
					spaceBetween: 20
				},

				1200: {
					slidesPerView: 3,
					spaceBetween: 20
				}
			}}
		>
			{#each testimonials as testimonial}
				<SwiperSlide>
					<div class="testimonial-wrap">
						<div class="testimonial-item">
							<div class="test">
								<ImageLoader
									src={`${base}/` + testimonial.image}
									alt=""
									css_class="testimonial-img"
								/>
								<h3>{testimonial.name}</h3>
								<h4>{testimonial.position}</h4>
							</div>
							<p style="font-size: {testimonial.fsize}px">
								"{testimonial.body}"
							</p>
						</div>
					</div>
				</SwiperSlide>
			{/each}
		</Swiper>
	</div>
</section>

<style>
	.test {
		min-height: 90px;
	}
</style>
