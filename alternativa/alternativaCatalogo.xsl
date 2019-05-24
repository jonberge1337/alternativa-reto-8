<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <link rel="stylesheet" type="text/css" href="principal.css" title="style" />
            <title>Advanced development</title>
        </head>

        <body>
            <div id="contenedor">

                <!-- Cabecera -->
                <div id="cabecera">
                    <div id="logo">
                        <img src="developerteam.png" alt="logo" />
                    </div>
                    <div class="clear"></div>
                </div>
                <!-- /Cabecera -->

                <!-- Menú principal -->
                <div id="menu" class="navbar">
                    <div class="dropdown">
                        <a href="#"><button id="inicio" class="dropbtn">Inicio</button></a>

                        <!-- Los dropdown son para mostrar las opciones del boton de arriba abajo, se desplieguan poniendo el cursor encima -->

                    </div>
                    <div class="dropdown">
                        <button id="convenios" class="dropbtn">Convenios
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDconQuien" href="#conQuien">¿Con quien?</a>
                            <a id="IDdesdeCuando" href="#desdeCuando">¿Desde cuándo?</a>
                            <a id="IDenlaces" href="#enlaces">Enlaces</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button id="colegiacion" class="dropbtn">Colegiación
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDrazones" href="#razones">Razones</a>
                            <a id="IDrequisitos" href="#requisitos">Requisitos</a>
                            <a id="IDinscripcion" href="#inscripcion">Incripción</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button id="contratos" class="dropbtn">Modelos de contrato
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDtemporal" href="#temporal">Temporal</a>
                            <a id="IDindefinido" href="#indefinido">Indefinidos</a>
                            <a id="IDpracticas" href="#practicas">Prácticas</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button id="formacion" class="dropbtn">Formación
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDcursos" href="#cursos">Cursos</a>
                            <a id="IDseminarios" href="#seminarios">Seminarios</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <a href="#"><button id="bolsa" class="dropbtn">Bolsa de empleo</button></a>

                    </div>
                    <div class="dropdown">
                        <a href="#"><button id="contacto" class="dropbtn">Contáctanos</button></a>
                    </div>

                </div>
                <!-- /Menu principal -->

            </div>
            <xsl:for-each select="//componente">
                <p>
                    <xsl:value-of select="./descripcion" />
                </p>
                <h4>Caracteristicas:</h4>
                <xsl:for-each select="./caracteristicas/caracteristica">
                    <ul>
                        <li>
                            <xsl:value-of select="." />
                        </li>
                    </ul>
                </xsl:for-each>
            </xsl:for-each>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>