<script>
    import Menu from "svelte-material-icons/Menu.svelte";
    import Close from "svelte-material-icons/Close.svelte";

    let icon = Menu;
    let nav_class = "";
    /**
   * Mobile nav toggle
  on('click', '.mobile-nav-toggle', function (e) {
    select('#navbar').classList.toggle('navbar-mobile')
    this.classList.toggle('bi-list')
    this.classList.toggle('bi-x') on:click|preventDefault={toggle} 
  })
   */
    function toggle() {
        if (icon === Menu) {
            icon = Close;
            nav_class = "navbar-mobile";
        } else {
            icon = Menu;
            nav_class = "";
        }
    }
</script>

<header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
        <a href="index.html" class="logo me-2"
            ><img src="assets/img/logo.png" alt="" /></a
        >
        <h1 class="logo me-auto">
            <a href="index.html"><span>Ladetec</span></a>
        </h1>

        <nav id="navbar" class="navbar {nav_class} order-last order-lg-0">
            <ul>
                <li>
                    <a
                        on:click={toggle}
                        class="nav-link scrollto active"
                        href="#hero">Home</a
                    >
                </li>
                <li>
                    <a on:click={toggle} class="nav-link scrollto" href="#about"
                        >Quienes somos</a
                    >
                </li>
                <li>
                    <a on:click={toggle} class="nav-link scrollto" href="#tabs"
                        >Servicios</a
                    >
                </li>
                <li>
                    <a
                        on:click={toggle}
                        class="nav-link scrollto "
                        href="#portfolio">Portafolio</a
                    >
                </li>
                <li>
                    <a on:click={toggle} class="nav-link scrollto" href="#team"
                        >Equipo</a
                    >
                </li>
                <li>
                    <a
                        on:click={toggle}
                        href="https://meteoradares.wordpress.com/category/ladetec/"
                        target="blank">Blog</a
                    >
                </li>
                <li>
                    <a
                        on:click={toggle}
                        class="nav-link scrollto"
                        href="#contact">Contacto</a
                    >
                </li>
            </ul>
            <!-- svelte-ignore a11y-click-events-have-key-events -->
            <i on:click={toggle} class="bi mobile-nav-toggle"
                ><svelte:component
                    this={icon}
                    width="1.5em"
                    height="1.5em"
                    color="#e03a3c"
                />
            </i>
        </nav>
    </div>
</header>
