# -*- coding: utf-8 -*- 

#!/usr/bin/python

import voicerssurllib
import subprocess

voice = voicerssurllib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a07',
	'hl': 'en-us',
        'src': 'Hello World Python Text To Speech X Platform',
	#'src': 'Hace mucho tiempo existieron civilizaciones muy inteligentes que lograron hacer descubrimientos que cambiaron la forma de vivir y desarrollaron tecnología que aún hoy en día utilizamos. Entre esas civilizaciones importantes  como Babilonia, India y China se encontraban los mayas. ¿Quién de ustedes sabe que hicieron los mayas?, o ¿Por qué son tan importantes?. Los mayas han sido un pueblo muy avanzado, sin duda una de las grandes civilizaciones mundiales. Uno de los aspectos destacados de su cultura fue su gran avance en las matemáticas, pues su sistema numérico, desarrollado de forma independiente al resto del mundo era muy avanzado y complejo. Tanto que hasta contaban con la noción del Cero y su simbología, fue la primera cultura que representó en América el número 0. Es decir, de alguna manera, los mayas ya entendían el concepto de “cero” y “nada”. Y se preguntarán ¿de qué manera trascendió este uso de cero y su sistema numérico con la tecnología? Gracias al uso de 0 y 1, fue posible crear un lenguaje binario (es decir solo de dos números), con el cual se constituyó una forma de comunicación entre las máquinas tecnológicas y los humanos. A su vez, a partir de este sistema binario y otros componentes tecnológicos/electrónicos se pudo inventar el microprocesador y ya se imaginarán qué empresa pudo haber sido la creadora de esta magnífica invención. ¿Pueden adivinar cuál?!, ¡Claro, Intel! ¿Y cómo es que pasó todo esto? Pasa al siguiente exhibidor de tu derecha donde tendrás la respuesta',
	#'src': 'Hace mucho tiempo existieron civilizaciones muy inteligentes que lograron hacer descubrimientos que cambiaron la forma de vivir y desarrollaron tecnología que aún hoy en día utilizamos. Entre esas civilizaciones importantes  como Babilonia, India y China se encontraban los mayas. ¿Quién de ustedes sabe que hicieron los mayas?',
	#'src': 'o ¿Por qué son tan importantes?',
	#'src': 'Los mayas han sido un pueblo muy avanzado, sin duda una de las grandes civilizaciones mundiales. Uno de los aspectos destacados de su cultura fue su gran avance en las matemáticas, pues su sistema numérico, desarrollado de forma independiente al resto del mundo era muy avanzado y complejo. Tanto que hasta contaban con la noción del Cero y su simbología, fue la primera cultura que representó en América el número 0. Es decir, de alguna manera, los mayas ya entendían el concepto de “cero” y “nada”. Y se preguntarán ¿de qué manera trascendió este uso de cero y su sistema numérico con la tecnología? Gracias al uso de 0 y 1, fue posible crear un lenguaje binario (es decir solo de dos números), con el cual se constituyó una forma de comunicación entre las máquinas tecnológicas y los humanos. A su vez, a partir de este sistema binario y otros componentes tecnológicos/electrónicos se pudo inventar el microprocesador y ya se imaginarán qué empresa pudo haber sido la creadora de esta magnífica invención. ¿Pueden adivinar cuál?!',
	#'src': '¡Claro, Intel! ¿Y cómo es que pasó todo esto? Pasa al siguiente exhibidor de tu derecha donde tendrás la respuesta',
	#'src': '',
	#'src': '¿Qué es Intel? ¿Cómo y en dónde nació Intel? Desde que llegaron hoy a Intel ya han escuchado que esta empresa fue la creadora de los microprocesadores, esto fue gracias a sus fundadores estadounidenses, Gordon Moore, Robert Noyce y Andy Grov, ingenieros inteligentes, apasionados y con muchísima creatividad para desarrollar mecanismos que pudieran facilitar cálculos y procesos matemáticos. Sin embargo, antes de llegar a la invención de los microprocesadores, se dedicaban a hacer memorias para dispositivos electrónicos. ¿Ustedes han hecho uso de alguna memoria? o ¿saben qué dispositivos han utilizado que tengan memorias? Conforme fue pasando el tiempo se dieron cuenta que podían innovar de formas distintas y no solo hacer memorias para guardar información, así que pensaron en trabajar en algo que pudiera procesar todo tipo de  información.  Es así como desarrollan el microprocesador. Es tal el éxito de su creación, que inician su empresa en 1968 en California, Estados Unidos; dándole el nombre de Intel el cual son las abreviaturas de Integreired Electronic. No se detuvo la historia ahí, ya que continuaron perfeccionando el microprocesador haciéndolo cada vez más rápido y pequeño. En su cuarta entrega Intel logra la revolución de la microcomputadora con el diseño del 8080 y a partir de ahí Intel desarrolla el 8086 y 8088, con estos dos procesadores obtuvieron en solamente un año 2,500 premios de diseño. ¡Imagínense cuántos premios en un año! Y fue tal el impacto y su reconocimiento al trabajo que hacía Intel que no fue suficiente tener sede en California, sino que comenzaron a expandirse por el mundo; un ejemplo de ello es Intel GDC, es decir, Intel Guadalajara Centro de Diseño. Para conocer lo que hace Intel Guadalajara, ve al exhibit que está detrás de ti y lo identificarás con el calendario azteca, ¿ya viste cuál?',
	#'src': '¿Qué es Intel? ¿Cómo y en dónde nació Intel? Desde que llegaron hoy a Intel ya han escuchado que esta empresa fue la creadora de los microprocesadores, esto fue gracias a sus fundadores estadounidenses, Gordon Moore, Robert Noyce y Andy Grove, ingenieros inteligentes, apasionados y con muchísima creatividad para desarrollar mecanismos que pudieran facilitar cálculos y procesos matemáticos. Sin embargo, antes de llegar a la invención de los microprocesadores, se dedicaban a hacer memorias para dispositivos electrónicos. ¿Ustedes han hecho uso de alguna memoria? o ¿saben qué dispositivos han utilizado que tengan memorias?',
	#'src': 'Conforme fue pasando el tiempo se dieron cuenta que podían innovar de formas distintas y no solo hacer memorias para guardar información, así que pensaron en trabajar en algo que pudiera procesar todo tipo de  información.  Es así como desarrollan el microprocesador. Es tal el éxito de su creación, que inician su empresa en 1968 en California, Estados Unidos; dándole el nombre de Intel el cual son las abreviaturas de Integrated Electronic. No se detuvo la historia ahí, ya que continuaron perfeccionando el microprocesador haciéndolo cada vez más rápido y pequeño.',
	#'src': 'En su cuarta entrega Intel logra la revolución de la microcomputadora con el diseño del 8080 y a partir de ahí Intel desarrolla el 8086 y 8088, con estos dos procesadores obtuvieron en solamente un año 2,500 premios de diseño. ¡Imagínense cuántos premios en un año! Y fue tal el impacto y su reconocimiento al trabajo que hacía Intel que no fue suficiente tener sede en California, sino que comenzaron a expandirse por el mundo; un ejemplo de ello es Intel GDC, es decir, Intel Guadalajara Centro de Diseño. Para conocer lo que hace Intel Guadalajara, ve al exhibit que está detrás de ti y lo identificarás con el calendario azteca, ¿ya viste cuál?',
	#'src': '',
	#'src': 'Intel Guadalajara Centro de Diseño, GDC, no era como lo conocen hoy. Todo comenzó con una pequeña empresa de Telecomunicaciones que había creado y estaba a cargo de Jesús Palomino y en la que solo eran 34 ingenieros. Sin embargo Intel se percató del talento que se tenía en México en dicha empresa y decidió apostarle para comenzar operaciones aquí en Guadalajara. Pueden ver en la pantalla algunos de los datos más representativos y fotos de aquel entonces. Desde el principio, Intel integró rápidamente a estos ingenieros como parte de su corporación, al mismo tiempo que empezaron más responsabilidades y proyectos qué cumplir con impacto mundial. Guadalajara fue el primer lugar en Latinoamérica que adopta Intel para que sea un laboratorio de investigación,  comenzando sus operaciones en el 2001. Hoy por hoy  en Intel GDC son más de 1,400 personas dedicados a la investigación e innovación. Algunos datos curiosos de Intel GDC son: Grandes resultados con talento, el cual el 98% de los empleados son mexicanos. Ha adquirido proyectos con impacto mundial y en donde varios chips y circuitos desarrollados han salido al mercado. Los y las ingenieras que trabajan aquí, tienen la posibilidad de colaborar con otros profesionales de distintas partes de Europa, Asia y América. Intel trabaja muy de cerca con el gobierno, las universidades y la sociedad civil para el desarrollo del talento y de la innovación.',
	#'src': 'Intel Guadalajara Centro de Diseño, GDC, no era como lo conocen hoy. Todo comenzó con una pequeña empresa de Telecomunicaciones que había creado y estaba a cargo de Jesús Palomino y en la que solo eran 34 ingenieros. Sin embargo Intel se percató del talento que se tenía en México en dicha empresa y decidió apostarle para comenzar operaciones aquí en Guadalajara. Pueden ver en la pantalla algunos de los datos más representativos y fotos de aquel entonces.',
	#'src': 'Desde el principio, Intel integró rápidamente a estos ingenieros como parte de su corporación, al mismo tiempo que empezaron más responsabilidades y proyectos qué cumplir con impacto mundial. Guadalajara fue el primer lugar en Latinoamérica que adopta Intel para que sea un laboratorio de investigación,  comenzando sus operaciones en el 2001. Hoy por hoy  en Intel GDC son más de 1,400 personas dedicados a la investigación e innovación.',
	#'src': 'Algunos datos curiosos de Intel GDC son: Grandes resultados con talento, el cual el 98% de los empleados son mexicanos. Ha adquirido proyectos con impacto mundial y en donde varios chips y circuitos desarrollados han salido al mercado. Los y las ingenieras que trabajan aquí, tienen la posibilidad de colaborar con otros profesionales de distintas partes de Europa, Asia y América. Intel trabaja muy de cerca con el gobierno, las universidades y la sociedad civil para el desarrollo del talento y de la innovación.',
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

file = 'audio.wav'

newFile = open (file, "wb")
newFile.write(voice['response'])
newFile.close()

player = subprocess.Popen(["aplay", file])
