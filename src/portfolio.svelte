<script>
    import ImageLoader from "./Image/ImageLoader.svelte";
    import { on, select } from "./template";

    var Isotope = require("isotope-layout");

    function onload() {
        let portfolioContainer = select(".portfolio-container");
        if (portfolioContainer) {
            let portfolioIsotope = new Isotope(portfolioContainer, {
                itemSelector: ".portfolio-item",
                layoutMode: "fitRows",
            });

            let portfolioFilters = select("#portfolio-flters li", true);

            on(
                "click",
                "#portfolio-flters li",
                function (e) {
                    e.preventDefault();
                    portfolioFilters.forEach(function (el) {
                        el.classList.remove("filter-active");
                    });
                    this.classList.add("filter-active");

                    portfolioIsotope.arrange({
                        filter: this.getAttribute("data-filter"),
                    });
                    portfolioIsotope.on("arrangeComplete", function () {
                        AOS.refresh();
                    });
                },
                true
            );
        }
    }
</script>

<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
        <div class="section-title">
            <h2>Portfolio</h2>
            <p>
                Magnam dolores commodi suscipit. Necessitatibus eius consequatur
                ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam
                quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.
            </p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-app">App</li>
                    <li data-filter=".filter-card">Card</li>
                    <li data-filter=".filter-web">Web</li>
                </ul>
            </div>
        </div>

        <div
            class="row portfolio-container"
            data-aos="fade-up"
            data-aos-delay="200"
            style="height: 230px;"
        >
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                <div class="portfolio-wrap">
                    <ImageLoader
                        on:load={onload}
                        src={"assets/img/portfolio/portfolio-1.jpg"}
                        alt=""
                    />
                    <div class="portfolio-info">
                        <h4>App 1</h4>
                        <p>App</p>
                        <div class="portfolio-links">
                            <a
                                href="assets/img/portfolio/portfolio-1.jpg"
                                data-gallery="portfolioGallery"
                                class="portfolio-lightbox"
                                title="App 1"><i class="bx bx-plus" /></a
                            >
                            <a href="/#" title="More Details"
                                ><i class="bx bx-link" /></a
                            >
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <ImageLoader
                        on:load={onload}
                        src={"assets/img/portfolio/portfolio-2.jpg"}
                        alt=""
                    />
                    <div class="portfolio-info">
                        <h4>Web 3</h4>
                        <p>Web</p>
                        <div class="portfolio-links">
                            <a
                                href="assets/img/portfolio/portfolio-2.jpg"
                                data-gallery="portfolioGallery"
                                class="portfolio-lightbox"
                                title="Web 3"><i class="bx bx-plus" /></a
                            >
                            <a href="/#" title="More Details"
                                ><i class="bx bx-link" /></a
                            >
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <ImageLoader
                        on:load={onload}
                        src={"assets/img/portfolio/portfolio-9.jpg"}
                        alt=""
                    />
                    <div class="portfolio-info">
                        <h4>Web 3</h4>
                        <p>Web</p>
                        <div class="portfolio-links">
                            <a
                                href="assets/img/portfolio/portfolio-9.jpg"
                                data-gallery="portfolioGallery"
                                class="portfolio-lightbox"
                                title="Web 3"><i class="bx bx-plus" /></a
                            >
                            <a href="/#" title="More Details"
                                ><i class="bx bx-link" /></a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Portfolio Section -->
