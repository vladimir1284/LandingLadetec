<script>
	import ImageLoader from "./Image/ImageLoader.svelte";

	const testimonials = [
		{
			image: "assets/img/testimonials/testimonials-1.jpg",
			name: "Saul Goodman",
            position: "Ceo &amp; Founder",
			body: "Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.",
		},
		{
			image: "assets/img/testimonials/testimonials-2.jpg",
			name: "Saul Goodman",
            position: "Ceo &amp; Founder",
			body: "Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.",
		},
		{
			image: "assets/img/testimonials/testimonials-3.jpg",
			name: "Saul Goodman",
            position: "Ceo &amp; Founder",
			body: "Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.",
		}
	];

</script>
<section id="testimonials" class="testimonials">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>Testimonials</h2>
			<p>
				Magnam dolores commodi suscipit. Necessitatibus eius consequatur
				ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam
				quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.
			</p>
		</div>

		<div
			class="testimonials-slider swiper"
			data-aos="fade-up"
			data-aos-delay="100"
		>
			<div class="swiper-wrapper">
                {#each testimonials as testimonial}
				<div class="swiper-slide">
					<div class="testimonial-wrap">
						<div class="testimonial-item">
							<ImageLoader
                                src={testimonial.image}
                                alt=""
								css_class="testimonial-img"
                            />
							<h3>Saul Goodman</h3>
							<h4>Ceo &amp; Founder</h4>
							<p>
								<i
									class="bx bxs-quote-alt-left quote-icon-left"
								/>
								Proin iaculis purus consequat sem cure digni ssim
								donec porttitora entum suscipit rhoncus. Accusantium
								quam, ultricies eget id, aliquam eget nibh et. Maecen
								aliquam, risus at semper.
								<i
									class="bx bxs-quote-alt-right quote-icon-right"
								/>
							</p>
						</div>
					</div>
				</div>
                {/each}
				<!-- End testimonial item -->

			</div>
			<div class="swiper-pagination" />
		</div>
	</div>
</section>
