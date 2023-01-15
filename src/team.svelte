<script>
    import ImageLoader from "./Image/ImageLoader.svelte";

    import { Researchgate, Linkedin } from "svelte-simples";

    const members = [
        {
            name: "Dr.C Orlando Rodríguez",
            image: "assets/img/team/orlando.jpg",
            linkedin:
                "https://www.linkedin.com/in/orlando-l%C3%A1zaro-rodr%C3%ADguez-gonz%C3%A1lez-b5580082/",
            researchgate:
                "https://www.researchgate.net/profile/Orlando-Rodriguez-8",
            position: "Director",
        },
        {
            name: "Ms.C Leonardo L. Fernández",
            image: "assets/img/team/leonardo.jpg",
            researchgate:
                "https://www.researchgate.net/profile/Leonardo-Fernandez-9",
            position: "Especialista en Radiolocalización",
        },
        {
            name: "Ing. Roberto Naranjo",
            image: "assets/img/team/roberto.jpg",
            researchgate:
                "https://www.researchgate.net/profile/Roberto-Naranjo-3",
            position: "Ingeniero electrónico",
        },
        {
            name: "Ing. Arturo Alejandro Peña",
            image: "assets/img/team/arturo.jpg",
            position: "Ingeniero electrónico",
        },
        {
            name: "Ing. Leonardo Gómez",
            image: "assets/img/team/leo.jpg",
            position: "Desarrollador de Software",
        },
        {
            name: "Dr.C Vladímir Rodríguez",
            image: "assets/img/team/vladimir.jpg",
            linkedin:
                "https://www.linkedin.com/in/vlad%C3%ADmir-rodr%C3%ADguez-diez-12a76649/",
            researchgate:
                "https://www.researchgate.net/profile/Vladimir-Rodriguez-2",
            position: "Desarrollador de Software",
        },
    ];
</script>

<section id="team" class="team section-bg">
    <div class="container" data-aos="fade-up">
        <div class="section-title">
            <h2>El equipo</h2>
            <p>
                Somos un equipo de ingenieros que combinamos la juventud y la
                experiencia en el campo de los radares meteorológicos. Nuestros
                ingenieros están altamente cualificados y poseen resultados
                tanto tecnológicos como científicos. Estamos comprometidos a
                trabajar juntos para ofrecer soluciones innovadoras y de alta
                calidad.
            </p>
        </div>
        <div class="row">
            {#each members as member}
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                    <div class="member" data-aos="fade-up" data-aos-delay="100">
                        <div class="member-img">
                            <ImageLoader
                                src={member.image}
                                alt=""
                                css_class={"img-fluid"}
                            />
                            <div class="social">
                                {#if member.linkedin}
                                    <a href={member.linkedin}
                                        ><Linkedin
                                            size="1em"
                                            color="white"
                                        /></a
                                    >
                                {/if}
                                {#if member.researchgate}
                                    <a href={member.researchgate}
                                        ><Researchgate
                                            size="1em"
                                            color="white"
                                        /></a
                                    >
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
