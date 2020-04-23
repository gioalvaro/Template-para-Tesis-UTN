# Preambulo

Gracias a la Universidad de Malta y a JP por la base del template junto con los consejos.


 [LaTeX](https://bitsilla.com/blog/2019/01/latex-tips-for-your-dissertation-or-project-write-up/) and [consejos](https://bitsilla.com/blog/2019/03/content-tips-for-your-dissertation-or-project-write-up/) tips.

# Universidad Tecnologica Nacional &ndash; LaTeX Dissertation (or Thesis) Template

Para empezar a escribir la tesis o disertación puedes empezar con este ejemplo [Aqui, clickeame](), el cual muestra rapidamente como quedará compilado.

Pasando a lo mas importante... Para mi

Como bien destaca Jean Ebejer de la Universidad de Malta en su repositorio. Esta plantilla es altamente configurable y posee BAJO ACOPLAMIENTO jajaja, podes intercambiar los capitulos y las configuraciones facilmente. De hecho que se aclara que no es la plantilla oficial de la institución a la que pertenezco, ni tampoco a la Universidad de Malta. Esta plantilla esta basada en otra del Dr. Phil de la Universidad de Oxford y esta basada en otra y otra ...

Esta plantilla la he adaptado para que tenga la esperanza de poder serle util a compañeros, colegas y alumnos en las diferentes materias y presentaciones de proyectos. Porque ya sabemos que cada uno tiene su gusto, horribles gustos y poca coherencia a la hora de los estilos. 

El archivo principal es `main.tex`, el cual tambien muestra como organizar la disertación. Ahora como podes empezar, pues basicamente reemplazando el comando `\blindtext` en cada archivo con tu contenido y listo para imprimir. Esto claramente no refleja la realidad puesto que deberas cambiar figuras, tablas, logo, vaya uno a saber que mas le quieras cambiar.

También me interesa mantener un FAQ con los problemas más comunes de LaTeX, que se deben enfrentar la noche antes de la fecha límite de presentación.

## FAQ

### ¿Cuál es la diferencia (si la hay) entre una tesis y una disertación?

> En algunos casos la disertacion solo es apropiada para los titulos de grado, mientras que la tesis o thesis es para los doctorandos. Podriamos comparalo entre proyecto final y proyecto de investigación en nuestro caso.

### ¿Puedo usar esta plantilla para mi tarea? ¿Qué cambios necesito?

Yyyyy de poder, podes. Pero deberias aprovechar para componer otra plantilla y decirle a tu profesor que te proporcione su propia plantilla en tex (jajajaja).  En definitiva si podes y mientras tanto te familiarizarás con Latex para manejarlo como quieras.  Por supuesto, se requieren algunos (muy) pequeños cambios en la plantilla, como los siguientes:

- Del archivo `main.tex` comenta (`%`) en la sección frontmatter la originality, dedication, acknowledgements, y abstract.  
- Tambien, en el mismo archivo comenta los apendices.


### ¿Pero cómo uso (compilo) esto?

Bueno, este es el tipo de cosas que tu profesor esperaría que descubriera por su cuenta, porque tal vez él no sepa. Sin embargo, puedes encontrar lo necesario [aqui](https://www.latex-project.org/get/). Si estas usando Windows, estoy seguro que si. Bajate el Miktex y un IDE como ~~TexMaker (esto es lo que yo uso) o~~~ TexStudio, no estoy seguro si entra en la categoria de IDE pero bue. Para aquellos linuxeros, busquen en su repo TexLive y de IDE Kile, muy bueno.
O si te sientes inclinado, a construir tu documento desde la línea de comandos (en el directorio donde reside `main.tex`):

```
latexmk -pdf
```

Esto genera mucho desorden, pero es importante revisarlo, ya que algunas advertencias pueden dar una valiosa visión de las cosas que hay que arreglar para una presentación perfecta. Para limpiar todos los archivos generados por LaTeX:

```
latexmk -c
```

Tenga en cuenta que esto dejará el archivo `pdf` generado, como es deseable en la mayoría de los casos.

### Soy un enemigo del medio ambiente, y quiero que este listo para doble faz... ¿cómo puedo arreglar esto?

Bueno, en primer lugar, **estupido**, el modelo utiliza una configuración de impresión a dos caras (márgenes, aberturas en el anverso para los capítulos, tabla de contenidos, etc.).  Si quieres cambiar eso, simplemente pon la configuracion u opcion  "oneside" a la clase documental (en vez de "twoside").  Le sugiero que utilice la maquetación y la impresión a doble cara cuando imprima la copia para el jurado (odiamos llevar manuscritos gruesos por todas partes) y a una sola cara para que quede olvidado después en el sotano de tu casa, la mía esta ahí, ni la recuerdo ya, aunque hay evaluadores inteligentes que te la piden a una cara.


### ¿Por qué hay tantas páginas en blanco?

Primero, las páginas en blanco sólo se generan con la opción "twopage".  Esto se debe a que los maquetadores no empiezan nuevos capítulos (y resúmenes/reconocimientos/etc.) por el lado *verso* (izquierda en el mundo occidental) cuando se usan ambos lados del papel.  Los capítulos empiezan en el lado *recto* (derecha), por lo que se inserta una página vacía si el comienzo del capítulo cae en el lado *verso* (izquierda).  La opción "onepage" claramente no tiene páginas vacías (o tiene páginas en blanco en el reverso de cada papel, por lo que cada página está vacía).  Ten en cuenta que los márgenes de la página son diferentes para el lado *recto* y *verso* en la opción "twopage", esto se debe a la lengüeta (que está a la derecha para el *verso* y a la izquierda para el *recto*).  Espero que esto quede claro.


### Mi(s) director(es) dice que la sección X debe llamarse Y. ¿Qué debo hacer?

Siempre es contraproducente no escuchar a tu director, sabelo desde ya.  Esta es una plantilla genérica, y su caso de uso específico puede tener diferentes requerimientos.  Por ejemplo, en algunos departamentos es común tener una sección de "Metodología" en lugar de la (más experimental) "Materiales y Métodos".  En otros lugares, la sección "Evaluación" se fusiona a veces en el capítulo "Resultados y Discusión".  Algunas facultades requieren una portada estándar.  Esta plantilla es muy flexible, y cualquier cambio es fácil/trivial de hacer.  Lo importante es usar el buen juicio y que **siga los CONSEJOS de su director**.

### Para las referencias, ¿cuál es mejor [42] o [Ebejer y otros, 2019]?

Muchos científicos computacionales están acostumbrados al estilo de referencia del IEEE con números, es decir, "42".  Pero hay una razón por la que el "plananato" es superior.  Su jurado (y directores) estarán bien familiarizados con el área de investigación y sabrán cuáles son los principales trabajos que debería haber leído (y citado).  Si usas las referencias numeradas, el jurado tiene que mantener las referencias cruzadas en la sección de *Referencias*.  Esto no es así cuando se utiliza el nombre del autor y el año directamente en la citación.  Además, es más fácil para el examinador darse cuenta cuando se cita erróneamente a un autor.  La tipografía moderna se está moviendo en esta dirección, es decir, pone el apellido y el año... **USA APA**.
