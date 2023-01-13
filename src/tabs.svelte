<script>
	import Cog from "svelte-material-icons/CogOutline.svelte";
	import ApplicationBracesOutline from "svelte-material-icons/ApplicationBracesOutline.svelte";
	import ChartAreaspline from "svelte-material-icons/ChartAreaspline.svelte";
	import SchoolOutline from "svelte-material-icons/SchoolOutline.svelte";
	import CheckAll from "svelte-material-icons/CheckAll.svelte";

	const tabs = [
		{
			icon: Cog,
			css_class: " active show",
			label: "Servicios tecnológicos",
			title: "Servicios tecnológicos de radar",
			image: "assets/img/Lineas1.Hardware.JPG",
			body: "LADETEC desde 1990 tiene dominio completo de los sistemas de un radar meteorológico: sistema de energía primaria, transmisor, receptor, sistema de antena, procesador de señales y controlador del radar.",
			bullets: [
				"Mantenimientos preventivos y correctivos a radares meteorológicos",
				"Montaje de radares meteorológicos fabricados por terceros",
				"Diseño, fabricación y montaje a pedido de un radar meteorológico",
				"Organización de un sistema de servicio técnico",
				"Modernización de un radar completo o de algunas de sus partes",
				"Asistencia técnica remota 24/7/365 a radares meteorológicos",
				"Medición de la dosis de microondas radiada en el entorno de un radar",
				"Confección de especificaciones técnicas para la compra de un radar",
				"Selección de la ubicación de un radar meteorológico",
			],
		},
		{
			icon: ApplicationBracesOutline,
			css_class: "",
			label: "Servicios informáticos",
			title: "Servicios informáticos de radar",
			image: "assets/img/Linea2.Software2.JPG",
			body: "LADETEC desde 1988 ha desarrollado software propietario para la adquisición y procesamiento de la información de radar, así como para el control de todos los procesos en el radar.",
			bullets: [
				"Instalación y adaptación del software libre NEXRAD-ORPG del USA-NWS para trabajar a partir de la información obtenida por cualquier radar meteorológico",
				"Instalación y adaptación del software libre TITAN de NCAR para trabajar a partir de la información obtenida por cualquier radar meteorológico",
				"Desarrollo e implementación de un software de control a la medida de cualquier radar (software libre, IoT)",
				"Desarrollo e implementación de software libre para el procesamiento de las señales de radar",
				"Sistema de manipulación de datos primarios archivados",
			],
		},
		{
			icon: ChartAreaspline,
			css_class: "",
			label: "Servicios de aplicación",
			title: "Servicios de aplicaciones de radar",
			image: "assets/img/Línea3.Aplicación.jpg",
			body: "A partir del año 2008 LADETEC asume el trabajo de vigilancia meteorológica por radar basado en las más modernas técnicas de la Meteorología Radárica y desarrolla métodos de análisis y presentación de la información de radar.",
			bullets: [
				"Organización de un servicio de vigilancia de tormentas por radar",
				"Organización de un servicio de estimación de las precipitaciones por radar",
				"Servicio de detección y seguimiento de tormentas tropicales",
				"Monitoreo remoto de la calidad de la información de una red de radares",
				"Organización de monitoreo por radar para la agricultura y la aviación",
				"Asesoría para la adquisición de radares meteorológicos",
				"Monitoreo del cambio climático por medio de información de radar",
			],
		},
		{
			icon: SchoolOutline,
			css_class: "",
			label: "Servicios de capacitación",
			title: "Servicios de capacitación y asesoría",
			image: "assets/img/Linea4.Capacitación.jpg",
			body: "LADETEC tiene una larga experiencia en el entrenamiento y la capacitación del personal de servicio técnico y del personal de la explotación de la información de radar.",
			bullets: [
				"Cursos de entrenamiento presencial (servicio técnico, explotación de radar)",
				"Cursos de Tecnologías de Radar y métodos de Meteorología de Radar",
				"Tutoría de tesis de maestría o doctorado en temas de Meteorología de Radar o Tecnologías de Radar",
				"Cursos a distancia en temáticas específicas de Radares Meteorológicos",
			],
		},
	];

	function navigate(index) {
		tabs.forEach((tab) => {
			tab.css_class = "";
		});
		tabs[index].css_class = " active show";
	}
</script>

<section id="tabs" class="tabs">
	<div class="container" data-aos="fade-up">
		<ul class="nav nav-tabs row d-flex">
			{#each tabs as tab, index}
				<li class="nav-item col-3">
					<!-- svelte-ignore a11y-missing-attribute -->
					<button
						on:click={() => navigate(index)}
						class={"nav-link" + tab.css_class}
						data-bs-toggle="tab"
						data-bs-target="#tab-{index + 1}"
					>
						<svelte:component
							this={tab.icon}
							width="3em"
							height="3em"
						/>
						<h4 class="d-none d-lg-block">{tab.label}</h4>
					</button>
				</li>
			{/each}
		</ul>

		<div class="tab-content">
			{#each tabs as tab, index}
				<div class={"tab-pane" + tab.css_class} id="tab-{index + 1}">
					<div class="row">
						<div
							class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0"
							data-aos="fade-up"
							data-aos-delay="100"
						>
							<h3>{tab.title}</h3>
							<p class="fst-italic">
								{tab.body}
							</p>
							<ul>
								{#each tab.bullets as bullet}
									<li>
										<CheckAll color="#e03a3c" />
										{bullet}
									</li>
								{/each}
							</ul>
						</div>
						<div
							class="col-lg-6 order-1 order-lg-2 text-center"
							data-aos="fade-up"
							data-aos-delay="200"
						>
							<img src={tab.image} alt="" class="img-fluid" />
						</div>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
