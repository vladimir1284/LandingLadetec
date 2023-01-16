<script>
    import Leaf from "svelte-material-icons/Leaf.svelte";
    import LockOpen from "svelte-material-icons/LockOpen.svelte";
    import LayersTripleOutline from "svelte-material-icons/LayersTripleOutline.svelte";
    import Cog from "svelte-material-icons/CogOutline.svelte";

    const about = {
        title: "¿Qué nos distingue?",
        body: "Por más de 30 años hemos brindado soluciones tecnológicas para radares meteorológicos, cubriendo una gran variedad de fabricantes. Hemos desarrollado productos de hardware y software para redes de radares en varios países.",
    };
    const highlights = [
        {
            icon: LayersTripleOutline,
            title: "Integralidad",
            body: "Soluciones integrales desde las microondas hasta el análisis de la información y el aviso de fenómenos peligrosos para cualquier tipo de radar.",
        },
        {
            icon: Cog,
            title: "Sostenibilidad",
            body: "Soluciones sostenibles, flexibles y adaptativas ante los cambios tecnológicos que ocurren al paso del tiempo. Permiten la modificación y modernización continua y permanente del equipamiento.",
        },
        {
            icon: LockOpen,
            title: "Soberanía",
            body: "Soluciones sostenibles, flexibles y adaptativas ante los cambios tecnológicos que ocurren al paso del tiempo. Permiten la modificación y modernización continua y permanente del equipamiento.",
        },
        {
            icon: Leaf,
            title: "Eficiencia",
            body: "Soluciones energéticamente eficientes y eficaces en el logro de los objetivos.",
        },
    ];
</script>

<section id="about" class="about section-bg">
    <div class="container" data-aos="fade-up">
        <div class="row no-gutters">
            <div class="content col-xl-5 d-flex align-items-stretch">
                <div class="content">
                    <!-- <h3>From microwaves to radar product analysis</h3>
					<p>
						For more than 30 years we have provided technological solutions
						for weather radars, covering a wide range manufacturers. We 
						have developed hardware and software products for radar networks 
						in several countries.  
					</p> -->
                    <h3>
                        {about.title}
                    </h3>
                    <p>
                        {about.body}
                    </p>
                    <a href="/#" class="about-btn"
                        ><span>Conócenos</span>
                        <i class="bx bx-chevron-right" /></a
                    >
                </div>
            </div>
            <div class="col-xl-7 d-flex align-items-stretch">
                <div
                    class="icon-boxes d-flex flex-column justify-content-center"
                >
                    <div class="row">
                        {#each highlights as highlight, index}
                            <div
                                class="col-md-6 icon-box"
                                data-aos="fade-up"
                                data-aos-delay={100 * (index + 1)}
                            >
                                <i class="bx">
                                    <svelte:component
                                        this={highlight.icon}
                                        width="1em"
                                        height="1em"
                                        color="#e03a3c"
                                    />
                                </i>
                                <h4>{highlight.title}</h4>
                                <p>
                                    {highlight.body}
                                </p>
                            </div>
                        {/each}
                        <!-- <div
							class="col-md-6 icon-box"
							data-aos="fade-up"
							data-aos-delay="100"
						>
							<i class="bx">
								<LockOpen width="1em" color="#e03a3c" />
							</i>
							<h4>Hardware y software abierto</h4>
							<p>
								Creamos e integramos productos de hardware y
								software abierto para la adquisición, el
								procesamiento y la visualización del dato de
								radar.
							</p>
						</div>
						<div
							class="col-md-6 icon-box"
							data-aos="fade-up"
							data-aos-delay="200"
						>
							<i class="bx">
								<Customize width="1em" color="#e03a3c" />
							</i>
							<h4>Soluciones a la medida</h4>
							<p>
								El profundo conocimiento de la técnica de radar
								nos permite desarrollar soluciones que se
								adaptan a cualquier escenario.
							</p>
						</div>
						<div
							class="col-md-6 icon-box"
							data-aos="fade-up"
							data-aos-delay="300"
						>
							<i class="bx">
								<Leaf width="1em" color="#e03a3c" />
							</i>
							<h4>Sostenibilidad e independencia</h4>
							<p>
								Mantenemos funcionando radares instalados en los
								años 70's adaptándonos a los cambios
								tecnológicos con independencia de los
								fabricantes.
							</p>
						</div>
						<div
							class="col-md-6 icon-box"
							data-aos="fade-up"
							data-aos-delay="400"
						>
							<i class="bx">
								<Timer width="1em" color="#e03a3c" />
							</i>
							<h4>Soluciones rápidas y eficaces</h4>
							<p>
								Adoptamos un enfoque pragmático basado en
								nuestra experiencia que nos permite brindar
								soluciones eficaces en tiempo record.
							</p>
						</div> -->
                    </div>
                </div>
                <!-- End .content-->
            </div>
        </div>
    </div>
</section>
