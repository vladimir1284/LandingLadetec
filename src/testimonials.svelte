<script>
    import ImageLoader from "./Image/ImageLoader.svelte";

    import QuoteClose from "svelte-material-icons/FormatQuoteClose.svelte";
    import QuoteOpen from "svelte-material-icons/FormatQuoteOpen.svelte";

    import data from "./data/testimonials.json";

    const testimonials = data.testimonials;

    testimonials.forEach((testimonial) => {
        testimonial.fsize = Math.round(24 - testimonial.body.length / 27);
    });
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
                                <h3>{testimonial.name}</h3>
                                <h4>{testimonial.position}</h4>
                                <p style="font-size: {testimonial.fsize}px">
                                    "{testimonial.body}"
                                </p>
                            </div>
                        </div>
                    </div>
                {/each}
            </div>
            <div class="swiper-pagination" />
        </div>
    </div>
</section>
