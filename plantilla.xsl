<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
	<xsl:output method="html"/>
	
	<xsl:template match="/">

<html>
<head>
        
        <link href="estilo.css"  rel="stylesheet" type="text/css"/>

</head>
<body>
	       <div id="cabecera">
                 <a class="boton" href="index.html">Menu</a>
		 <a class="boton" href="personal.html">Personal</a>
		 <a class="boton" href="datos.html">Datos</a>
		 <a class="boton" href="popup.html">Pop-up</a>
		 <a class="boton" href="tiempo.xml">Tiempo</a>
                </div>

		
                <div id="izquierda"> 
               <h1>       El Tiempo    </h1>
  
                      
<h2><xsl:value-of select="//locality/name"/></h2>

<p> Dia: <xsl:value-of select="//day1/date"/>.</p>

<p> Temperatura minima: <xsl:value-of select="//day1/temperature_max"/> ºC.</p>

<p> Temperatura maxima: <xsl:value-of select="//day1/temperature_min"/> ºC.</p>

<p> Humedad: <xsl:value-of select="//day1/humidity"/> %.</p>

<p> El sol sale a las <xsl:value-of select="//day1/sunrise"/> y se esconde a las <xsl:value-of select="//day1/sunset"/>.</p>

                </div>

                <div id="derecha"> 
                    
                <h1>Bienvenid@</h1>
		<p id="intro">Te damos la bienvenida al tiempo en <xsl:value-of select="//locality/name"/>.</p>

                </div>


                <div id="pie">
		 <p><center><b>IES Leonardo da vinci</b></center></p>
                  
                </div>
		
	
</body>
</html>
</xsl:template>
</xsl:stylesheet>
