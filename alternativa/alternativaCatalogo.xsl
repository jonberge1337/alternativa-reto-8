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
                        <button id="componentes" class="dropbtn">Componentes
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDplacaBase" href="#placaBase">Placa base</a>
                            <a id="IDprocesador" href="#procesador">Procesador</a>
                            <a id="IDdiscoDuro" href="#discoDuro">Disco duro</a>
                            <a id="IDtarjetaGrafica" href="#tarjetaGrafica">Tarjeta Gráfica</a>
                            <a id="IDram" href="#ram">Memoria RAM</a>
                            <a id="IDdvd" href="#dvd">DVD</a>
                            <a id="IDdisquetera" href="#disquetera">Disquetera</a>
                            <a id="IDmultilector" href="#multilector">Multilector</a>
                            <a id="IDtarjetaSonido" href="#tarjetaSonido">Tarjeta de sonido</a>
                            <a id="IDtorre" href="#torre">Torre</a>
                            <a id="IDventilador" href="#ventilador">Ventilador</a>
                            <a id="IDenlaces" href="#fuenteAlimentacion">Fuente de alimentacion</a>
                            <a id="IDcablesInternos" href="#cablesInternos">Cables internos</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button id="modelos" class="dropbtn">Redes
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a id="IDhubSwitch" href="#hubSwitch">HUB/Switchs</a>
                            <a id="IDpuntosAcceso" href="#puntosAcceso">Puntos de acceso</a>
                            <a id="IDrouter" href="#router">Router</a>
                            <a id="IDtarjetaRed" href="#tarjetaRed">Tarjeta de red</a>
                            <a id="IDarmarioRack" href="#armarioRack">Armario rack</a>
                            <a id="IDTelefonosVoIP" href="#telefonosVoIP">Telefonos VoIp</a>
                            <a id="IDcables" href="#cables">Cables</a>
                            <a id="IDpanelesParcheo" href="#paneslesParcheo">Paneles de parcheo</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <a href="#servicios"><button id="servicio" class="dropbtn">Servicios</button></a>
                    </div>

                </div>
                <!-- /Menu principal -->

            </div>
            <xsl:for-each select="//componente[@tipo='Placa base']">
                <div class="catalogo" id="placaBase">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Procesador']">
                <div class="catalogo" id="procesador">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Disco duro']">
                <div class="catalogo" id="discoDuro">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Tarjeta grafica']">
                <div class="catalogo" id="tarjetaGrafica">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Memoria RAM']">
                <div class="catalogo" id="ram">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='DVD']">
                <div class="catalogo" id="dvd">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Disquetera']">
                <div class="catalogo" id="disquetera">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Multilector']">
                <div class="catalogo" id="multilector">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Tarjeta sonido']">
                <div class="catalogo" id="tarjetaSonido">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Torre']">
                <div class="catalogo" id="torre">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Ventilador']">
                <div class="catalogo" id="ventilador">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Fuente alimentacion']">
                <div class="catalogo" id="fuenteAlimentacion">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Cables internos']">
                <div class="catalogo" id="cablesInternos">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='hub/switch']">
                <div class="catalogo" id="hubSwitch">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Puntos de acceso']">
                <div class="catalogo" id="puntosAcceso">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Router']">
                <div class="catalogo" id="router">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Tarjeta red']">
                <div class="catalogo" id="tarjetaRed">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Armario rack']">
                <div class="catalogo" id="armarioRack">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Telefonos VoIP']">
                <div class="catalogo" id="telefonosVoIP">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Cable']">
                <div class="catalogo" id="cable">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <xsl:for-each select="//componente[@tipo='Paneles parcheo']">
                <div class="catalogo" id="panelesParcheo">
                    <h2>
                        <xsl:value-of select="./@tipo" />&#160;
                        <xsl:value-of select="./@marca" />&#160;
                        <xsl:value-of select="./@modelo" />
                    </h2>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <div class="divTable">
                        <div class="divTableBody">
                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <h4>Caracteristicas:</h4>
                                    <xsl:for-each select="./caracteristicas/caracteristica">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </ul>
                                    </xsl:for-each>
                                </div>
                                <div class="divTableCell">
                                    <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="./foto/@src" />
                                    </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                            <td><strong>En Stock:</strong>&#160;
                                <xsl:value-of select="./disponibilidad/@stock" />
                            </td>
                        </tr>
                    </table>
                </div>
            </xsl:for-each>
            <div class="catalogo" id="servicios">
                <xsl:for-each select="//servicio">
                    <h2>
                        <xsl:value-of select="./@tipo" />
                    </h2>
                    <h3>
                        <xsl:value-of select="./modelo" />
                    </h3>
                    <h4>Descripcion:</h4>
                    <p>
                        <xsl:value-of select="./descripcion" />
                    </p>
                    <table>
                        <tr>
                            <td><strong>Codigo:</strong>&#160;
                                <xsl:value-of select="./codigo/@producto" />
                            </td>
                            <td><strong>Precio:</strong>&#160;
                                <xsl:value-of select="./precio" />
                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </div>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>