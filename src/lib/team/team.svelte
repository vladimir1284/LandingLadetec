<script>
	import ImageLoader from '../Image/ImageLoader.svelte';

	import { Researchgate, Linkedin, Wordpress } from 'svelte-simples';

	import data from './team.json';
	import { base } from '$app/paths';

	const members = data.members;
</script>

<section id="team" class="team section-bg">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>El equipo</h2>
			<p>
				Somos un equipo de ingenieros que combinamos la juventud y la experiencia en el campo de los
				radares meteorológicos. Nuestros ingenieros están altamente cualificados y poseen resultados
				tanto tecnológicos como científicos. Estamos comprometidos a trabajar juntos para ofrecer
				soluciones innovadoras y de alta calidad.
			</p>
		</div>
		<div class="row">
			{#each members as member}
				<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
					<div class="member" data-aos="fade-up" data-aos-delay="100">
						<div class="member-img">
							<ImageLoader src={`${base}/` + member.image} alt="" css_class={'img-fluid'} />
							<div class="social">
								{#if member.linkedin}
									<a href={member.linkedin}><Linkedin size="1em" color="white" /></a>
								{/if}
								{#if member.wordpress}
									<a href={member.wordpress}><Wordpress size="1em" color="white" /></a>
								{/if}
								{#if member.researchgate}
									<a href={member.researchgate}><Researchgate size="1em" color="white" /></a>
								{/if}
							</div>
						</div>
						<div class="member-info">
							<h4>{member.name}</h4>
							<span>{member.position}</span>
						</div>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
