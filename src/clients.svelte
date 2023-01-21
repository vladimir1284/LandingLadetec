<script>
    import ImageLoader from "./Image/ImageLoader.svelte";

    // Import Swiper Svelte components
    import { Swiper, SwiperSlide } from "swiper/svelte";
    // import Swiper required modules
    import { Pagination, Autoplay } from "swiper";
    // Import Swiper styles
    import "swiper/css";
    import "swiper/css/pagination";
    import "swiper/css/autoplay";

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
        <Swiper
            modules={[Pagination, Autoplay]}
            slidesPerView={"auto"}
            autoplay={{ delay: 5000, disableOnInteraction: false }}
            rewin={true}
            speed={400}
            pagination={{
                type: "bullets",
                clickable: true,
            }}
            breakpoints={{
                320: {
                    slidesPerView: 2,
                    spaceBetween: 40,
                },
                480: {
                    slidesPerView: 3,
                    spaceBetween: 60,
                },
                640: {
                    slidesPerView: 4,
                    spaceBetween: 80,
                },
                992: {
                    slidesPerView: 6,
                    spaceBetween: 120,
                },
            }}
        >
            {#each images as image}
                <SwiperSlide>
                    <ImageLoader src={image} alt="" css_class={"img-fluid"} />
                </SwiperSlide>
            {/each}
        </Swiper>
    </div>
</section>
