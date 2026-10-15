// Reviewed international question set. IDs and correct indexes match the Turkish originals.
final List<Map<String, dynamic>> questionsEsData = [
  {
    "id": "TRAP_001",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 50,
    "scenario":
        "Una rueda tiene cuatro casillas marcadas 1, 2, 4 y 8 en ese orden. Una flecha avanza una casilla por paso y vuelve a 1 después de 8. Sus tres primeras salidas son 2, 4 y 8. ¿Cuál es la cuarta?",
    "options": ["16", "1", "8", "0", "4", "No se puede determinar"],
    "correctIndex": 1,
    "insight":
        "La rueda tiene un ciclo de cuatro casillas. Después de 8, la flecha vuelve a 1. No es una sucesión que se duplica indefinidamente.",
  },
  {
    "id": "TRAP_002",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 70,
    "scenario":
        "El 90% de los taxis son azules, el 10% son rojos. Un testigo distingue los colores con un 80% de precisión y dice \"rojo\". ¿Cuál es el valor más cercano a la probabilidad de que el taxi sea realmente rojo?",
    "options": ["80 %", "50 %", "31 %", "10 %", "8 %", "90 %"],
    "correctIndex": 2,
    "insight":
        "De 1000 taxis, 100 son rojos y 900 son azules. El testigo ve aproximadamente 80 rojos correctamente y 180 azules incorrectamente como rojos. 80/260 de los informes rojos son reales: alrededor del 31%.",
  },
  {
    "id": "TRAP_003",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Un premio está detrás de una de tres puertas. Eliges una. El presentador sabe dónde está el premio, abre otra puerta vacía y te ofrece cambiar. ¿Qué estrategia da más posibilidades de ganar?",
    "options": [
      "Quedarse: 2/3",
      "Cambiar: 2/3",
      "Ambas: 1/2",
      "Ambas: 1/3",
      "Elegir la puerta abierta",
      "El presentador no da información",
    ],
    "correctIndex": 1,
    "insight":
        "La primera opción tiene una probabilidad de 1/3 de ser correcta y una probabilidad de 2/3 de ser incorrecta. Dado que el presentador abre deliberadamente la puerta vacía, en 2/3 de los casos en los que la primera opción es incorrecta, cambiarla vale la pena.",
  },
  {
    "id": "TRAP_004",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 75,
    "scenario":
        "Existe una condición en el 1% de la población. La prueba es positiva en el 99% de los pacientes y falso positivo en el 5% de las personas sanas. ¿Cuál es el valor más cercano a la probabilidad de que alguien con un resultado positivo esté realmente enfermo?",
    "options": ["99 %", "95 %", "50 %", "17 %", "5 %", "1 %"],
    "correctIndex": 3,
    "insight":
        "Hay aproximadamente 100 pacientes por cada 10.000; 99 de ellos dan positivo. 495 de 9.900 personas sanas dan falsos positivos. De los positivos, 99/594 son pacientes, aproximadamente el 16,7%.",
  },
  {
    "id": "TRAP_005",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 65,
    "scenario":
        "Eliges al azar entre una moneda equilibrada y otra con cruz en ambas caras. Lanzas la moneda elegida y sale cruz. ¿Cuál es la probabilidad de haber elegido la moneda con dos cruces?",
    "options": ["1/4", "1/3", "1/2", "2/3", "3/4", "1"],
    "correctIndex": 3,
    "insight":
        "La moneda equilibrada aporta una probabilidad de (1/2)×(1/2)=1/4 de ver cruz. La de dos cruces aporta (1/2)×1=1/2. Dado que salió cruz, la probabilidad es (1/2)/(1/4+1/2)=2/3.",
  },
  {
    "id": "TRAP_006",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "Regla: \"Si hay una vocal en un lado de la tarjeta, en el otro lado hay un número par\". Hay cuatro cartas sobre la mesa, que muestran E, K, 4, 7. ¿Qué cartas debes voltear para encontrar las que podrían refutar la regla?",
    "options": ["E y 4", "E y 7", "K y 4", "Solo E", "Las cuatro", "K y 7"],
    "correctIndex": 1,
    "insight":
        "Hay que girar E para buscar un número impar y 7 para buscar una vocal. Cualquiera de esos hallazgos refutaría la regla. Ver un 4 no exige una vocal al otro lado.",
  },
  {
    "id": "TRAP_007",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 45,
    "scenario":
        "Un lápiz y una goma cuestan 1,10 € juntos. El lápiz cuesta exactamente 1 € más que la goma. ¿Cuánto cuesta la goma?",
    "options": [
      "0,10 €",
      "0,05 €",
      "0,01 €",
      "0,50 €",
      "1,00 €",
      "No se puede determinar",
    ],
    "correctIndex": 1,
    "insight":
        "Si la goma cuesta x euros, el lápiz cuesta x+1. Como 2x+1=1,10, x=0,05 €. Si costara 0,10 €, el total sería 1,20 €.",
  },
  {
    "id": "TRAP_008",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 45,
    "scenario":
        "La vegetación de un lago duplica su tamaño cada día y al día 48 cubre completamente el lago. ¿En qué día el lago quedó medio cubierto?",
    "options": [
      "día 24",
      "día 46",
      "día 47",
      "día 48",
      "día 12",
      "Información insuficiente",
    ],
    "correctIndex": 2,
    "insight":
        "Como se duplica cada día, el día anterior al día completo está medio lleno: día 47. No es lo mismo dividir el tiempo a la mitad que duplicar la cantidad.",
  },
  {
    "id": "TRAP_009",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 65,
    "scenario":
        "Se lanzan dos monedas equilibradas. Sabes que al menos una salió cruz, pero no cuál. ¿Cuál es la probabilidad de que ambas salieran cruz?",
    "options": ["1/4", "1/3", "1/2", "2/3", "3/4", "1"],
    "correctIndex": 1,
    "insight":
        "Los resultados igualmente probables con al menos una cruz son CX, XC y XX (C=cara, X=cruz). Solo XX tiene dos cruces: 1/3.",
  },
  {
    "id": "TRAP_010",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 50,
    "scenario":
        "Hay 3 bolas rojas y 2 azules en una caja. Se extraen dos bolas consecutivas sin devolverlas. Se sabe que la primera bola era roja. ¿Cuál es la probabilidad de que la segunda bola también sea roja?",
    "options": ["3/5", "2/5", "1/2", "2/3", "1/4", "3/4"],
    "correctIndex": 2,
    "insight":
        "Después de quitar el primer rojo, quedan 2 rojos y 2 azules en la caja. La probabilidad de que la segunda bola salga roja es 2/4 = 1/2.",
  },
  {
    "id": "TRAP_011",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 50,
    "scenario":
        "Una moneda justa sale cara cinco veces seguidas. ¿Cuál es la probabilidad de obtener cara en el sexto lanzamiento?",
    "options": [
      "1/6",
      "1/4",
      "1/2",
      "5/6",
      "Cara con seguridad",
      "La moneda ya no es equilibrada",
    ],
    "correctIndex": 2,
    "insight":
        "Los lanzamientos de una moneda equilibrada son independientes. Las cinco caras anteriores no cambian la probabilidad de cara en el sexto: 1/2.",
  },
  {
    "id": "TRAP_012",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "Todos los elementos del conjunto A están en B. Algunos elementos de B están en C. ¿Qué debe ser cierto sobre la relación entre A y C?",
    "options": [
      "Todo A está en C",
      "Parte de A está en C",
      "Ningún elemento de A está en C",
      "No se puede determinar",
      "Todo C está en A",
      "A debe estar vacío",
    ],
    "correctIndex": 3,
    "insight":
        "Los elementos de B que también están en C pueden estar dentro o fuera de A. Las premisas no determinan si A y C se superponen.",
  },
  {
    "id": "TRAP_013",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "A y B siempre dicen la verdad o siempre mienten. “Ambos somos mentirosos”, dice A. ¿Qué son realmente A y B?",
    "options": [
      "Ambos dicen la verdad",
      "Ambos mienten",
      "A dice la verdad; B miente",
      "A miente; B dice la verdad",
      "No tiene solución",
      "No se puede determinar",
    ],
    "correctIndex": 3,
    "insight":
        "A no puede afirmar sinceramente que es mentiroso, así que miente. Para que «ambos mentimos» sea falso, B debe decir la verdad.",
  },
  {
    "id": "TRAP_014",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Nueve monedas parecen idénticas, pero una pesa menos. ¿Cuál es el mínimo de pesadas necesarias para encontrarla con una balanza de dos platillos?",
    "options": ["1", "2", "3", "4", "5", "8"],
    "correctIndex": 1,
    "insight":
        "Divide las monedas en tres grupos de tres. Pesa dos grupos para localizar el más ligero (o el tercero si se equilibran). Luego pesa dos monedas de ese grupo. Bastan dos pesadas.",
  },
  {
    "id": "TRAP_015",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 70,
    "scenario":
        "Hay 100 puertas cerradas. La persona 1 cambia el estado de todas; la persona 2, de cada segunda puerta; y así hasta que la persona 100 cambia la puerta 100. ¿Cuántas quedan abiertas?",
    "options": ["5", "10", "25", "50", "99", "100"],
    "correctIndex": 1,
    "insight":
        "La puerta n cambia de estado una vez por cada divisor de n. Solo los cuadrados perfectos tienen un número impar de divisores; quedan abiertas las 10 puertas numeradas de 1² a 10².",
  },
  {
    "id": "TRAP_016",
    "category": "Davranışsal Ekonomi",
    "timeLimitSeconds": 50,
    "scenario":
        "Pagaste 200 € por una entrada de cine no reembolsable. Antes de empezar la película, aparece un evento gratuito que disfrutarías más. No puedes vender la entrada. ¿Qué decisión te dará más satisfacción desde ahora?",
    "options": [
      "Ver la película para recuperar el dinero",
      "Ir al evento que prefieres",
      "No ir a ninguno",
      "Comprar otra entrada",
      "Elegir al azar",
      "Gastar otros 200 €",
    ],
    "correctIndex": 1,
    "insight":
        "Los 200 € son un coste hundido: no volverán con ninguna decisión. Elige la experiencia que disfrutarás más a partir de ahora.",
  },
  {
    "id": "TRAP_017",
    "category": "Oyun Teorisi",
    "timeLimitSeconds": 65,
    "scenario":
        "A y B eligen al mismo tiempo Cooperar o Traicionar. Si ambos cooperan, reciben 3 puntos cada uno; si ambos traicionan, 1. Si solo uno traiciona, obtiene 5 y el otro 0. ¿Qué elección maximiza los puntos de A en una ronda, haga lo que haga B?",
    "options": [
      "Cooperar",
      "Traicionar",
      "Depende de B",
      "Elegir al azar",
      "No jugar",
      "Pedir un empate",
    ],
    "correctIndex": 1,
    "insight":
        "Si B coopera, traicionar da a A 5 puntos en vez de 3. Si B traiciona, da 1 en vez de 0. Traicionar puntúa más en ambos casos.",
  },
  {
    "id": "TRAP_018",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 75,
    "scenario":
        "En un juego de tres puertas, el presentador no sabe dónde está el premio. Tras tu elección, abre al azar una de las otras dos y resulta estar vacía. Con esta información, ¿qué probabilidad de ganar tienes al quedarte o cambiar?",
    "options": [
      "Cambiar 2/3; quedarse 1/3",
      "Ambas: 1/2",
      "Quedarse 2/3; cambiar 1/3",
      "Ambas: 1/3",
      "Cambiar gana con certeza",
      "Faltan datos",
    ],
    "correctIndex": 1,
    "insight":
        "Si la elección inicial era correcta (1/3), la puerta abierta tenía que estar vacía. Si era incorrecta (2/3), abrir una puerta vacía tenía probabilidad 1/2. Tras ver una puerta vacía, ambos casos pesan lo mismo: quedarse y cambiar ganan cada uno con probabilidad 1/2.",
  },
  {
    "id": "TRAP_019",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 60,
    "scenario":
        "Se lanzan dos dados equilibrados. Sabes que al menos uno muestra un 6. ¿Cuál es la probabilidad de que ambos muestren un 6?",
    "options": ["1/36", "1/12", "1/11", "1/6", "1/2", "1/3"],
    "correctIndex": 2,
    "insight":
        "Hay 11 resultados ordenados igualmente probables con al menos un 6: seis con un 6 en el primer dado y seis en el segundo, menos el duplicado (6,6). Solo uno de los 11 es (6,6).",
  },
  {
    "id": "TRAP_020",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Cada una de dos cuerdas tarda exactamente 60 minutos en arder desde un extremo, pero ninguna arde a ritmo constante. Con las cuerdas y un encendedor, ¿cómo puedes medir 45 minutos?",
    "options": [
      "Cortar una cuerda por la mitad",
      "Encender una cuerda por ambos extremos y la otra por uno; cuando termine la primera, encender el otro extremo de la segunda",
      "Encender cada cuerda por un extremo sucesivamente",
      "Encender ambas por un extremo",
      "Encender ambas por ambos extremos",
      "Es imposible",
    ],
    "correctIndex": 1,
    "insight":
        "La cuerda encendida por ambos extremos termina en 30 minutos. A la otra le quedan 30 minutos de combustión desde un extremo. Enciende también el otro y termina en 15 minutos más: 45 en total.",
  },
  {
    "id": "TRAP_021",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 50,
    "scenario":
        "En los días en que se vende más helado en una ciudad, también aumentan los accidentes al nadar. ¿Qué explicación es compatible con esta correlación por sí sola?",
    "options": [
      "El helado provoca accidentes",
      "Los accidentes aumentan las ventas de helados",
      "La causa común de ambos puede ser el clima cálido.",
      "Debería prohibirse el helado",
      "La relación no puede ser una coincidencia.",
      "Nadar siempre es seguro",
    ],
    "correctIndex": 2,
    "insight":
        "La correlación por sí sola no demuestra una causa. El calor podría aumentar tanto las ventas de helado como la cantidad de personas que nadan y, con ello, los accidentes.",
  },
  {
    "id": "TRAP_022",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "En un grupo de seis personas, cada dos personas se conocen o no se conocen. ¿Qué es seguro encontrar en cada caso?",
    "options": [
      "alguien que todos conocen",
      "Tres personas que se conocen o tres personas que no se conocen",
      "Una persona para quien todos son extraños.",
      "Cuatro personas que se conocen",
      "Tres pares de amigos",
      "No se requieren características comunes",
    ],
    "correctIndex": 1,
    "insight":
        "Elige a una persona. Entre las otras cinco, al menos tres o bien la conocen o bien no la conocen. Si dos de esas tres tienen entre sí la misma relación, forman el trío buscado con la primera persona. Si no, esas tres forman un trío con la relación opuesta.",
  },
  {
    "id": "TRAP_023",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Se quitan dos casillas de esquinas opuestas de un tablero de ajedrez de 8×8. ¿Se pueden cubrir exactamente las 62 restantes con 31 fichas de dominó, cada una sobre dos casillas que comparten un lado?",
    "options": [
      "Sí, porque 62 es par",
      "Sí, cruzando las fichas",
      "No, las casillas retiradas son del mismo color",
      "No, porque 31 es impar",
      "Solo si se gira el tablero",
      "No se puede determinar",
    ],
    "correctIndex": 2,
    "insight":
        "Las esquinas opuestas tienen el mismo color. Al quitarlas quedan 30 casillas de un color y 32 del otro. Cada ficha cubre una casilla de cada color, así que 31 fichas no pueden cubrir el tablero.",
  },
  {
    "id": "TRAP_024",
    "category": "Davranışsal Ekonomi",
    "timeLimitSeconds": 60,
    "scenario":
        "La opción A paga 40 € con seguridad. La opción B paga 100 € con un 50 % de probabilidad y 0 € en caso contrario. ¿Cuál tiene mayor valor monetario esperado?",
    "options": [
      "A, porque es segura",
      "B, porque su valor esperado es 50 €",
      "Son iguales",
      "B, porque paga 100 € con seguridad",
      "A, porque su valor esperado es 80 €",
      "Faltan datos",
    ],
    "correctIndex": 1,
    "insight":
        "El valor esperado de A es 40 €. El de B es 0,5×100 €+0,5×0 €=50 €. Se pregunta por el valor monetario esperado, no por la aversión al riesgo.",
  },
  {
    "id": "TRAP_025",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 65,
    "scenario":
        "Un cartel dice: «Si llueve, el suelo se moja». Ves que el suelo está mojado. ¿Qué demuestra este hecho por sí solo?",
    "options": [
      "Seguro que llovió",
      "Seguro que no llovió",
      "La probabilidad de lluvia es cero",
      "No se puede saber si llovió",
      "La regla del cartel es falsa",
      "El suelo no está mojado",
    ],
    "correctIndex": 3,
    "insight":
        "La lluvia basta para mojar el suelo, pero no se dice que sea la única causa. El suelo podría haberse mojado por un aspersor u otra razón.",
  },
  {
    "id": "COMP26_001",
    "category": "Stratejik Düşünce",
    "scenario":
        "Se pintan todas las caras de un cubo y luego se corta en 3 × 3 × 3 cubitos iguales. ¿Cuántos cubitos tienen exactamente dos caras pintadas?",
    "options": ["8", "12", "6", "18", "24", "0"],
    "correctIndex": 1,
    "insight":
        "Solo el cubito central de cada arista tiene exactamente dos caras pintadas. El cubo tiene 12 aristas, así que hay 12 cubitos.",
  },
  {
    "id": "COMP26_002",
    "category": "Bayesyen Mantık",
    "scenario":
        "Se lanza un dado justo dos veces. Sabiendo que la suma es 7, ¿cuál es la probabilidad de que el primer lanzamiento haya sido un 3?",
    "options": ["1/36", "1/12", "1/6", "1/3", "1/2", "1"],
    "correctIndex": 2,
    "insight":
        "Hay seis pares ordenados igualmente probables que suman 7: (1,6), (2,5), (3,4), (4,3), (5,2) y (6,1). Solo (3,4) empieza con 3, así que la probabilidad es 1/6.",
  },
  {
    "id": "COMP26_003",
    "category": "Stratejik Düşünce",
    "scenario":
        "Los números de cinco dígitos se escriben usando los dígitos 1, 2, 3, 4, 5 una vez cada uno. ¿Cuántos son divisibles por 5?",
    "options": ["12", "24", "60", "120", "5", "96"],
    "correctIndex": 1,
    "insight":
        "Para que el número sea divisible por 5, debe terminar en 5. Los otros cuatro dígitos se pueden ordenar de 4! = 24 formas.",
  },
  {
    "id": "COMP26_004",
    "category": "Stratejik Düşünce",
    "scenario":
        "En el estante se alinearán cinco libros diferentes. Si los libros A y B están uno al lado del otro, ¿cuántas disposiciones diferentes hay?",
    "options": ["24", "48", "60", "72", "96", "120"],
    "correctIndex": 1,
    "insight":
        "Considera A y B como un solo bloque. Los cuatro objetos se ordenan de 4! = 24 formas, y dentro del bloque caben AB o BA: 2 × 24 = 48.",
  },
  {
    "id": "COMP26_005",
    "category": "Stratejik Düşünce",
    "scenario":
        "En una cuadrícula, ¿cuántos caminos más cortos van de (0,0) a (3,2) si cada paso avanza una unidad a la derecha o hacia arriba?",
    "options": ["5", "6", "8", "10", "12", "20"],
    "correctIndex": 3,
    "insight":
        "Cada camino más corto tiene tres pasos a la derecha y dos hacia arriba. Elige cuáles dos de los cinco pasos son hacia arriba: C(5,2)=10.",
  },
  {
    "id": "COMP26_006",
    "category": "Bayesyen Mantık",
    "scenario":
        "Una bolsa contiene 2 bolas rojas y 3 azules. Se extraen dos sin reemplazo. ¿Cuál es la probabilidad de que sean de distintos colores?",
    "options": ["1/5", "2/5", "1/2", "3/5", "4/5", "1"],
    "correctIndex": 3,
    "insight":
        "Número de pares de diferentes colores 2×3=6; número total de pares C(5,2)=10. Probabilidad 6/10=3/5.",
  },
  {
    "id": "COMP26_007",
    "category": "Stratejik Düşünce",
    "scenario":
        "Se eligen dos números diferentes entre los números del 1 al 20. ¿Cuántas opciones hay para que su suma sea impar?",
    "options": ["20", "45", "90", "100", "190", "200"],
    "correctIndex": 3,
    "insight":
        "La suma es impar sólo si uno es impar y el otro par. Hay 10 números pares y 10 impares; Se seleccionan 10×10=100 pares.",
  },
  {
    "id": "COMP26_008",
    "category": "Stratejik Düşünce",
    "scenario":
        "¿Cuántos cuadrados de 2 × 2 hay en una cuadrícula de 5 × 5 casillas? Cuenta solo los cuadrados alineados con la cuadrícula.",
    "options": ["9", "16", "20", "25", "32", "36"],
    "correctIndex": 1,
    "insight":
        "La esquina superior izquierda del cuadrado de 2×2 se selecciona de las primeras cuatro filas y las primeras cuatro columnas: 4×4=16.",
  },
  {
    "id": "COMP26_009",
    "category": "Stratejik Düşünce",
    "scenario":
        "Dividir un número entre 6 da un resto de 5 y dividir entre 4 da un resto de 3. ¿Cuál de los siguientes cumple estas condiciones?",
    "options": ["15", "17", "19", "21", "23", "25"],
    "correctIndex": 4,
    "insight":
        "23 = 6×3+5 y 23 = 4×5+3. Otras opciones no satisfacen ambas condiciones restantes.",
  },
  {
    "id": "COMP26_010",
    "category": "Stratejik Düşünce",
    "scenario":
        "¿Cuántos números de tres cifras formados sólo con los números 2 y 3 tienen dos 2?",
    "options": ["1", "2", "3", "4", "6", "8"],
    "correctIndex": 2,
    "insight":
        "La posición del único número 3 puede estar en tres lugares diferentes: 322, 232, 223.",
  },
  {
    "id": "COMP26_011",
    "category": "Bayesyen Mantık",
    "scenario":
        "Se lanzan tres monedas justas. Sabiendo que salieron exactamente dos caras, ¿cuál es la probabilidad de que la primera moneda haya salido cara?",
    "options": ["1/3", "1/2", "2/3", "3/4", "1/4", "1"],
    "correctIndex": 2,
    "insight":
        "Los tres resultados igualmente probables con exactamente dos caras son CCX, CXC y XCC (C = cara, X = cruz). En dos de ellos la primera moneda sale cara: 2/3.",
  },
  {
    "id": "COMP26_012",
    "category": "Stratejik Düşünce",
    "scenario":
        "7 personas dándose la mano; todos se dan la mano a todos los demás exactamente una vez. ¿Cuántos apretones de manos habrá en total?",
    "options": ["14", "21", "28", "42", "49", "7"],
    "correctIndex": 1,
    "insight":
        "Cada apretón de manos es un par de personas. C(7,2) = 7×6/2 = 21.",
  },
  {
    "id": "COMP26_013",
    "category": "Stratejik Düşünce",
    "scenario":
        "¿Cuántos números enteros del 1 al 100 son divisibles por 2 y 3 pero no por 5?",
    "options": ["10", "13", "14", "16", "17", "20"],
    "correctIndex": 1,
    "insight":
        "Los divisibles por 2 y 3 son múltiplos de 6: 16. Los divisibles por 5 son múltiplos de 30: 3. 16−3=13.",
  },
  {
    "id": "COMP26_014",
    "category": "Stratejik Düşünce",
    "scenario":
        "En un triángulo, uno de los ángulos interiores mide 30°, el segundo mide el doble del tercero. ¿Cuál es el ángulo más grande en grados?",
    "options": ["60°", "70°", "80°", "90°", "100°", "120°"],
    "correctIndex": 4,
    "insight":
        "La suma de los dos ángulos restantes es 150° y la proporción es 1:2. Sus ángulos son 50° y 100°; El ángulo más grande es de 100°.",
  },
  {
    "id": "COMP26_015",
    "category": "Stratejik Düşünce",
    "scenario":
        "Un reloj marca exactamente las 03.30. ¿Cuántos grados tiene el ángulo menor entre las manecillas de las horas y los minutos?",
    "options": ["45°", "60°", "75°", "90°", "105°", "180°"],
    "correctIndex": 2,
    "insight":
        "El minutero está a 180°. A las 3:30, la aguja horaria está a 3,5 × 30° = 105°. El ángulo menor es 180° − 105° = 75°.",
  },
  {
    "id": "COMP26_016",
    "category": "Stratejik Düşünce",
    "scenario":
        "Un rectángulo tiene lados de 6 y 8 unidades. Un cuadrado tiene el mismo perímetro. ¿Cuál es el área del cuadrado en unidades cuadradas?",
    "options": ["36", "42", "49", "56", "64", "100"],
    "correctIndex": 2,
    "insight":
        "El perímetro del rectángulo es 2×(6+8)=28. El lado de un cuadrado con el mismo perímetro es 28/4=7 y su área es 49.",
  },
  {
    "id": "COMP26_017",
    "category": "Stratejik Düşünce",
    "scenario":
        "Cuando un número aumenta en 20, su valor aumenta en un 25%. ¿Cuál es el primer número?",
    "options": ["40", "60", "80", "100", "120", "160"],
    "correctIndex": 2,
    "insight":
        "Si el número original es x, entonces 20 es el 25 % de x. Por tanto, x = 20 / 0,25 = 80.",
  },
  {
    "id": "COMP26_018",
    "category": "Stratejik Düşünce",
    "scenario":
        "Un precio sube un 20 % y luego baja un 20 % del nuevo precio. ¿Cómo queda respecto al precio inicial?",
    "options": [
      "Sin cambios",
      "Un 4 % más alto",
      "Un 4 % más bajo",
      "Un 20 % más bajo",
      "Un 40 % más bajo",
      "Un 2 % más bajo",
    ],
    "correctIndex": 2,
    "insight":
        "Obtenga el precio inicial de 100. Se convierte en 120 después del aumento y 120 × 0,8 = 96 después del descuento. Hay una disminución neta del 4%.",
  },
  {
    "id": "COMP26_019",
    "category": "Stratejik Düşünce",
    "scenario":
        "Los cuatro primeros términos de una sucesión son 2, 6, 12, 20. No se indica ninguna regla. ¿Qué afirmación sobre el quinto término es necesariamente cierta?",
    "options": [
      "Debe ser 30",
      "Debe ser 28",
      "Debe ser 32",
      "Podría ser 30 o 31",
      "Debe ser 40",
      "Debe ser 24",
    ],
    "correctIndex": 3,
    "insight":
        "Infinitas reglas encajan con los cuatro primeros términos. La regla n(n+1) da 30; otra que suma 1 solo al quinto término da 31. Sin una regla indicada, no hay un único término siguiente.",
  },
  {
    "id": "COMP26_020",
    "category": "Stratejik Düşünce",
    "scenario":
        "Una caja contiene 10 canicas rojas, 10 azules y 10 verdes. ¿Cuántas debes sacar sin mirar para garantizar cuatro del mismo color?",
    "options": ["4", "7", "9", "10", "11", "12"],
    "correctIndex": 3,
    "insight":
        "En el peor caso, primero sacas tres de cada color: nueve en total. La décima será la cuarta de alguno de los colores.",
  },
  {
    "id": "COMP26_021",
    "category": "Stratejik Düşünce",
    "scenario":
        "Dieciséis jugadores participan en un torneo de eliminación directa. Cada partido elimina a un jugador y no hay empates. ¿Cuántos partidos hacen falta para decidir el campeón?",
    "options": ["4", "8", "15", "16", "30", "32"],
    "correctIndex": 2,
    "insight":
        "Cada uno de los 15 jugadores que no sea campeón debe ser eliminado una vez. Cada partido elimina a uno, así que hacen falta 15 partidos.",
  },
  {
    "id": "COMP26_022",
    "category": "Stratejik Düşünce",
    "scenario":
        "Los números del 1 al 9 se escriben una vez. Cuando se elimina un dígito, la suma de los ocho dígitos restantes es 4 veces el dígito eliminado. ¿Qué número se elimina?",
    "options": ["5", "6", "7", "8", "9", "No se puede determinar"],
    "correctIndex": 4,
    "insight":
        "La suma de los dígitos del 1 al 9 es 45. Si se quita x, queda 45−x=4x; por tanto, 5x=45 y x=9.",
  },
  {
    "id": "COMP26_023",
    "category": "Bayesyen Mantık",
    "scenario":
        "Se lanzan cuatro monedas justas. ¿Cuál es la probabilidad de que ninguna salga cara?",
    "options": ["1/2", "1/4", "1/8", "1/16", "1/32", "0"],
    "correctIndex": 3,
    "insight":
        "Ninguna cara significa que las cuatro salen cruz. Multiplicamos las probabilidades independientes: (1/2)^4 = 1/16.",
  },
  {
    "id": "COMP26_024",
    "category": "Stratejik Düşünce",
    "scenario":
        "Cuando un número entero se divide por 3, da como resto 2. ¿Cuál es el resto cuando se divide 3 veces este número entre 3?",
    "options": ["0", "1", "2", "3", "6", "No se puede determinar"],
    "correctIndex": 0,
    "insight":
        "El triple de cualquier número entero es divisible por 3. El resto siempre es 0, sin importar el número original.",
  },
  {
    "id": "COMP26_025",
    "category": "Stratejik Düşünce",
    "scenario":
        "Un cuadrado se divide en 4 cuadrados iguales más pequeños. El perímetro de cada cuadrado pequeño es de 12 cm. ¿Cuál es el perímetro del cuadrado grande?",
    "options": ["12", "18", "24", "36", "48", "6"],
    "correctIndex": 2,
    "insight":
        "Un lado del cuadrado pequeño mide 12/4 = 3 cm. El lado del cuadrado grande mide 2×3=6 cm y el perímetro es 4×6=24 cm.",
  },
];
