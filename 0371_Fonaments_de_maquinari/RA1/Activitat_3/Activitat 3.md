<style>
/* PORTADA @page {
  margin: 2.5cm;
  @bottom-right {
    content: counter(page);
    font-size: 10pt;
    font-family: sans-serif;
  }
}*/

.text_justificat
body, p, li {
    text-align: justify;
    text-justify: inter-word;
}

h1, h2, h3 {
  text-align: center;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 11pt;
  line-height: 1.5;
}

code {
  color: rgb(234, 128, 0);
  background-color: rgb(40, 40, 40);
  padding: 2px 4px;
  border-radius: 3px;
}

.resposta {
  color: #1a5276;
  font-weight: bold;
}

/* PORTADA */
.portada {
  position: relative;
  /* Alçada aproximada d'una pàgina A4 menys els marges de 2.5cm a dalt i a baix */
  height: 23.5cm; 
  box-sizing: border-box;
  text-align: center;
}

.portada h1 {
  font-size: 24pt;
  margin-top: 20px;
  margin-bottom: 15px;
}

.portada h2 {
  font-size: 16pt;
  color: #555;
  margin-bottom: 10px;
  page-break-before: avoid; /* Evita que el h2 salti de pàgina */
}

.portada h3 {
  font-size: 13pt;
  color: #777;
  font-weight: normal;
}

/* DADES ABAIX A LA DRETA */
.portada .dades {
  position: absolute;
  bottom: 0;
  right: 0;
  max-width: 60%;
  font-size: 11pt;
  text-align: left;
  border-left: 4px solid #ea8000;
  padding-left: 5px;
}

.portada .dades p {
  margin: 3px 0;
}

/* Regla general per als h2 de la resta del document */
h2 {
  page-break-before: always;
}
</style>

<!-- PORTADA -->
<div class="portada">
  <h1>Activitat 3. Posada en marxa, configuració i diagnòstic d'un equip informàtic</h1>
  <h2>Activitat grupal</h2>
  <div class="dades">
    <p><strong>Grau superior:</strong> Administració de sistemes informàtics en la xarxa (ASIX), perfil ciberseguretat</p>
    <p><strong>Assignatura:</strong> Fonaments de maquinari
    <p><strong>Alumne:</strong> Alex Morcillo Quiñones
    <p><strong>Alumne:</strong> Miquel Luque Blanch
    <p><strong>Alumne:</strong> Guerau Peguera Rubio
    <p><strong>Data:</strong> 21-11-2026</p>
  </div>
</div>
<div style="position: fixed; top: 0px; right: 20px; z-index:1000;">
  <img src="../../IESCarlesVallbona.png" alt="Logo" style="height: 20px; width: auto;">
</div>
</div>
<div style="page-break-after: always;"></div>

<!-- Index -->

<div class="index-personalitzat">

- [Activitat 3 - Posada en marxa, configuració i diagnòstic d'un equip informàtic](#activitat-3---posada-en-marxa-configuració-i-diagnòstic-dun-equip-informàtic)
  - [1. Primera arrencada](#1-primera-arrencada)
  - [2. Configuració de la BIOS](#2-configuració-de-la-bios)
    - [MAIN](#main)
    - [ADVANCED](#advanced)
    - [POWER](#power)
    - [BOOT](#boot)
    - [TOOLS](#tools)
    - [EXIT](#exit)
    - [Identificació del maquinari detectat](#identificació-del-maquinari-detectat)
    - [Paràmetres importants](#paràmetres-importants)
    - [Configuració de l'arrencada des d'USB](#configuració-de-larrencada-des-dusb)
  - [3. Instal·lació del sistema operatiu](#3-installació-del-sistema-operatiu)
  - [4. Característiques i rendiment](#4-característiques-i-rendiment)
    - [Identificació dels components](#identificació-dels-components)
    - [Benchmark](#benchmark)
      - [Resultats complementaris de Hardinfo](#resultats-complementaris-de-hardinfo)
      - [Documentar els resultats i valorar les prestacions de l'equip.](#documentar-els-resultats-i-valorar-les-prestacions-de-lequip)
  - [5. Diagnòstic de l'equip](#5-diagnòstic-de-lequip)
    - [Diagnòstic de la memòria RAM amb Memtest86+](#diagnòstic-de-la-memòria-ram-amb-memtest86)
    - [Diagnòstic del disc amb Smartmontools](#diagnòstic-del-disc-amb-smartmontools)
      - [Atributs SMART rellevants](#atributs-smart-rellevants)
      - [Errors de lectura del registre SMART](#errors-de-lectura-del-registre-smart)
      - [Prova curta SMART](#prova-curta-smart)
      - [Valoració del disc: anomalia important](#valoració-del-disc-anomalia-important)
    - [Diagnòstic de temperatures i voltatges amb lm-sensors](#diagnòstic-de-temperatures-i-voltatges-amb-lm-sensors)
      - [Valoració tèrmica: sense anomalies en la lectura](#valoració-tèrmica-sense-anomalies-en-la-lectura)
  - [6. Simulació d'averies](#6-simulació-daveries)
  - [7. Conclusions](#7-conclusions)


</div>

<div style="page-break-after: always;"></div>

# Activitat 3 - Posada en marxa, configuració i diagnòstic d'un equip informàtic
**Introducció**

En aquesta activitat posareu en funcionament l'ordinador que heu muntat, configurareu la BIOS, instal·lareu un sistema operatiu i comprovareu les característiques, el rendiment i l'estat dels components. Els criteris d’avaluació treballats són:
- 1.2. Descriu la funció dels elements físics i lògics que intervenen en el procés de
posada en marxa d’un equip.
- 1.3. Analitza l’arquitectura general d’un equip i els mecanismes de connexió entre
dispositius.
- 1.4. Estableix els paràmetres de configuració (de maquinari i programari) d’un equip
microinformàtic amb les utilitats específiques.
- 1.5. Avalua les prestacions d’un equip.
- 1.6. Executa utilitats de revisió i diagnòstic.
- 1.7. Identifica avaries i les seves causes.

Documenteu el que es demana a cada apartat, incloent-hi les explicacions i captures necessàries, i entregueu un únic document PDF per grup. En finalitzar l'activitat, deixeu l'ordinador completament muntat, amb tots els components i cables correctament connectats i fixats, sense cap peça solta a l'interior i amb la carcassa tancada.


## 1. Primera arrencada
En la primera arrencada, l'equip supera sense cap imprevist el POST (Power-On Self-Test) i podem accedir directament a la BIOS apretant la tecla corresponent. Abans de continuar, apaguem l'equip i el professor ens subministra un Disc Dur extern HDD SATA que hem de connectar per poder procedir a instal·lar el sistema operatiu correctament.


<img src="../Imatges/027.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">
<img src="../Imatges/028.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">
<img src="../Imatges/029.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">


Un cop connectat el disc dur tant a la placa base com a la font d'alimentació i anclat al rac, el procediment que segueix l'equip per arribar a la BIOS de manera física i lògica és la següent:
- Tot comença amb la font d'alimentació enxufada a la corrent per poder subministrar la potència elèctrica necessària a tots els components interns de l'equip.
- Un cop engegat l'equip, el corrent es redirecciona (segons la potència que demani) a la placa base a través del cable ATX de 12V de 4 pins.
- La CPU executa i procesa les primeres intruccions per comprovar que el hardware funcioni correctament. L'anomenat POST: un diagnòstic inicial que comprova que tot funciona correctament abans d'iniciar el sistema operatiu. És en aquest punt que ens arribaria un senyal acùstica (des de l'spekaer) o visual (a través de la pantalla) indican si hi hagués algun problema tècnic en el procés d'arrencada.
- La memòria RAM guarda temporalment les dades dels programes que s'estan executan en temps real.
- Com que ara ja tenim un disc dur connectat, l'unitat d'emmagatzematge guarda el SO i tot el que hi hagi guardat per engegar-lo.
- Per últim, la targeta de vídeo processa la informació de les dades i envia les dades al monitor.

## 2. Configuració de la BIOS

En funcionar tot correctament s'ha accedit a la BIOS a través de la tecla "Supr". La interfície oberta funciona en mode text i es controla exclusivament amb el teclat. Aquests són els diferents menús de la BIOS:

### MAIN
És el menú d'informació general i de configuració bàsica del sistema (la fotografia s'ha fet abans de connectar el disc dur, per això no apareix en aquest menú). Mostra:

- System Time i System Date: permeten ajustar l'hora i la data del rellotge de temps real (RTC). La data que apareix, 01/01/2002, és un valor per defecte. Indica que la bateria CMOS està esgotada o que la BIOS s'ha restablert.
- Primary IDE Master, Primary IDE Slave, SATA 1 i SATA 2: mostren els dispositius d'emmagatzematge detectats en cada controlador. Al moment de la captura tots apareixen com a Not Detected, perquè la fotografia es va fer abans de connectar el disc dur. Un cop connectat, aquí s'hi mostra el model i la capacitat.
- Storage Configuration: permet configurar el mode de funcionament dels controladors d'emmagatzematge (per exemple, IDE, AHCI o RAID, segons el model).
- System Information: mostra dades del maquinari, com la versió de la BIOS, el model del processador i la memòria RAM detectada.

<img src="../Imatges/026.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">


### ADVANCED
Conté les opcions de configuració avançada del maquinari. Només és recomanable modificar-les si se'n coneix l'efecte. El text d'ajuda ja ho adverteix: Adjust system frequency/voltage. Els submenús són:

- JumperFree Configuration: substitueix els antics jumpers físics de la placa. Permet ajustar la freqüència i el voltatge de la CPU i la memòria (overclocking).
- USB Configuration: activa o desactiva els controladors USB, el suport per a dispositius USB d'emmagatzematge i el funcionament del teclat i el ratolí USB abans d'arrencar el sistema operatiu.
- CPU Configuration: mostra les característiques del processador (model, velocitat, memòria cau) i permet activar o desactivar funcions com la virtualització o la tecnologia de gestió d'energia, segons el model.
- Chipset: configura el northbridge i el southbridge, com ara la memòria i el bus gràfic.
- Onboard Devices Configuration: activa o desactiva els dispositius integrats a la placa, com l'àudio, la targeta de xarxa, els ports sèrie i paral·lel o els controladors de disc.
- PCIPnP: gestiona l'assignació de recursos (IRQ i DMA) als dispositius PCI.


<img src="../Imatges/030.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">

### POWER
Agrupa les opcions de gestió d'energia:

- Suspend Mode [Auto]: defineix l'estat ACPI que s'utilitza quan el sistema se suspèn. En mode automàtic, el sistema tria l'estat més adequat.
- ACPI 2.0 Support [Disabled]: habilita o no les taules de la versió 2.0 d'ACPI. Aquí està desactivat, que és el valor habitual en aquests equips.
- ACPI APIC Support [Enabled]: activa l'Advanced Programmable Interrupt Controller, que ofereix una gestió d'interrupcions més àmplia que el PIC clàssic. Això és important per als sistemes operatius moderns.
- APM Configuration: controla opcions de gestió d'energia heretades, com l'encesa per esdeveniments (per exemple, per xarxa o per teclat).
- Hardware Monitor: mostra en temps real la temperatura de la CPU i de la placa, la velocitat dels ventiladors i els voltatges.

<img src="../Imatges/031.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">

### BOOT
Defineix com i des d'on arrenca l'equip. A Boot Device Priority es veu l'ordre de prioritat actual:

1. 1st Boot Device: Removable Dev.
2. 2nd Boot Device: Hard Drive
3. 3rd Boot Device: ATAPI CD-ROM

La BIOS intenta arrencar pel primer dispositiu i, si no hi troba un sistema vàlid, passa al següent. El text d'ajuda indica que un dispositiu escrit entre parèntesis està desactivat al menú corresponent. A més, aquest menú sol incloure submenús com Hard Disk Drives o Removable Drives per triar quin dispositiu concret s'utilitza dins de cada categoria.

<img src="../Imatges/032.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">

### TOOLS
Ofereix utilitats pròpies del fabricant:

ASUS EZ Flash 2: permet actualitzar la BIOS des d'un dispositiu d'emmagatzematge sense necessitat de cap sistema operatiu. Accepta els sistemes de fitxers FAT12/16/32 (lectura i escriptura), NTFS (només lectura) i CD-DISC (només lectura).
AI NET 2: eina de diagnòstic del cable de xarxa. Detecta problemes de connexió i en pot estimar la longitud.

<img src="../Imatges/033.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">

### EXIT
Permet sortir de la BIOS de diverses maneres:

- Exit & Save Changes: desa els canvis i reinicia l'equip (equival a F10).
- Exit & Discard Changes: surt sense desar cap canvi.
- Discard Changes: descarta els canvis fets però es manté dins de la BIOS.
- Load Setup Defaults: restableix tots els paràmetres als valors de fàbrica.

<img src="../Imatges/034.jpeg" alt="008" width="500" style="display: block; margin:0 auto;">



### Identificació del maquinari detectat

| **Component** | **Menú on es consulta** | **Valor detectat** |
| :---: | :---: | :---: |
| cpu | Main > System Information / Advanced > CPU Configuration | Intel Pentium Dual-Core E5400, 2 nuclis i 2 fils, 2.700 MHz. |
| ram | Main > System Information | 2 GB DDR2; mòdul identificat com Kingston DDR2-800 (PC2-6400). |
| hdd | Main (IDE/SATA) | Samsung SpinPoint T166, model HD321KJ, capacitat nominal 320 GB. |

### Paràmetres importants
- Virtualització (Intel VT-x / AMD-V): és una extensió del processador que permet executar màquines virtuals amb millor rendiment, perquè el maquinari assisteix l'hipervisor. Se sol trobar a Advanced > CPU Configuration. En aquesta BIOS de 2009 l'opció no existia, perquè al depèn de si el processador la suporta, en aquest cas no.
- Ordre d'arrencada (Boot Device Priority): determina la seqüència de dispositius per cercar un sistema operatiu. És essencial per instal·lar un sistema des d'un mitjà extern o per recuperar l'equip.
- Configuració SATA (Main > Storage Configuration): defineix si els discos funcionen en mode IDE (compatible amb sistemes antics), AHCI (amb funcions modernes com NCQ i hot-swap) o RAID.
- ACPI i APIC (Power): regulen la gestió d'energia i d'interrupcions del sistema.
- Load Setup Defaults (Exit): restableix la configuració de fàbrica, útil si algun canvi impedeix l'arrencada.

### Configuració de l'arrencada des d'USB
Per instal·lar el sistema operatiu des d'una memòria USB es van seguir aquests passos:
1. Connectar el dispositiu USB abans d'entrar a la BIOS, perquè en alguns equips només es detecta així.
2. Anar a Boot > Boot Device Priority.
3. Seleccionar 1st Boot Device i canviar-lo amb +/– o Intro a Removable Dev. (o al dispositiu USB que aparegui).
4. Comprovar a Advanced > USB Configuration que el suport USB està activat.
5. Prémer F10 i confirmar per desar els canvis i reiniciar.
POSAR FOTOGRAFIES

Paràmetres consultats i modificats

| **Menu** | **Paràmetre** | **Valor inicial** | **Valor final** | **Modificat?** |
| :---: | :---: | :---: | :---: | :---: |
| main | system date | 01/01/2002 | modifcada a data actual del dia de la practica | si |
| power | suspend mode | auto | auto | no |
| power | ACPI 2.0 Support | disabled | disabled | no |
| power | ACPI APIC Support | enabled | enabled | no |
| boot | 1st Boot Device | Removable Dev. | nom usb en primera posicio | si |
| boot | 2nd Boot Device | Hard Drive | Hard Drive | no |
| boot | 3rd Boot Device | ATAPI CD-ROM | ATAPI CD-ROM | no |

## 3. Instal·lació del sistema operatiu 
En engegar l'ordinador amb el disc dur proporcionat, vam descobrir que el disc dur ja portava integrat el Windows7, accedint sense dificultats ja que no demanava cap tipus de contrasenya. Després de la sorpresa inicial i la investigació efímera de la mateixa, vam començar a instal·lar Fedora perquè era l'única versió de Linux que teniem a mà en aquell moment. No vam trigar gaire en veure que no havia sigut una bona idea perquè es congelava constantment. Vam aprofitar llavors per pensar en quina versió instal·lar el següent dia pràctic. Segons les característiques observades durant el POST, a la BIOS i la capacitat reduïda del disc dur. Primer vam decidir fer servir el **Noble Numbat**, però la vam acabar descartant per **antiX-26x64-full**, que es pot descarregar ["en aquesta pàgina"](https://sourceforge.net/projects/antix-linux/files/Final/antiX-26/)

## 4. Característiques i rendiment

### Identificació dels components
Per obtenir la informació del maquinari s’ha instal·lat i executat Hardinfo (System Information and Benchmark). La instal·lació es va fer amb APT; a la terminal es veu la instal·lació del paquet hardinfo i les seves dependències. Ordres utilitzades:
- sudo apt update
- sudo apt install hardinfo smartmontools lm-sensors
- hardinfo

Instal·lació de Hardinfo i dependències mitjançant APT:
<img src="../imatges punt 4 i 5/1·7.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

La pantalla de resum de Hardinfo identifica el processador, la memòria, la placa base, els gràfics integrats i el disc Samsung. El sistema apareix com a Debian GNU/Linux 13.7, dins de la distribució antiX utilitzada a l’equip. Resum de Hardinfo amb la identificació general de l’equip:

<img src="../imatges punt 4 i 5/1·8.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

Fitxa tècnica de l’equip:

| **Component** | **Identificació obtinguda** |
| :---: | :---: |
| **Sistema operatiu** | ntiX Linux; Hardinfo mostra Debian GNU/Linux 13.7. |
| **Nucli** | Linux 6.6.119-antix.1-amd64-smp (visible a la sortida de smartctl/sensors-detect) |
| **Processador** | Intel Pentium Dual-Core E5400, 2 nuclis i 2 fils, 2.700 MHz. |
| **Freqüència observada** | Interval de 1.200 a 2.700 MHz segons Hardinfo. |
| **Memòria RAM** | 2 GB DDR2; mòdul identificat com Kingston DDR2-800 (PC2-6400). |
| **Placa base** | ASUS P5KPL-AM IN/ROEM/SI, fabricada per ASUSTeK. |
| **Gràfics** | Intel 82G33/G31 Express Integrated Graphics. |
| **Interfície del disc** | SATA 2.5, 3,0 Gb/s; dispositiu Linux /dev/sda. |
| **Disc** | Fet a continuació |


- Processador: Hardinfo detecta un Intel Pentium E5400 amb un processador real, dos nuclis i dos fils. La freqüència nominal mostrada és de 2.700 MHz per nucli. També apareix una freqüència dinàmica entre 1.200 i 2.700 MHz, compatible amb l’ajust de freqüència del processador en funció de la càrrega. Detall del processador Pentium E5400 a l’apartat «Dispositivos → Procesador» de Hardinfo:

<img src="../imatges punt 4 i 5/1·29.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

- Memòria RAM: L’equip disposa de 2 GB de RAM DDR2. Hardinfo identifica un mòdul Kingston de tipus DDR2-800 (PC2-6400). Tanmateix, el camp de capacitat SPD apareix amb el valor impossible 4.294.967.295 MiB. Per aquest motiu, aquesta dada de capacitat no és fiable i no s’utilitza per determinar la memòria instal·lada. Es conserva com a referència la capacitat de 2 GB de l’equip i la detecció general del sistema. Detecció SPD:

<img src="../imatges punt 4 i 5/1·32.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

- Detall del : Hardinfo identifica DDR2 SDRAM i el fabricant Kingston, però la capacitat SPD apareix mal interpretada:
<img src="../imatges punt 4 i 5/1·33.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

- Placa base i emmagatzematge: La placa base identificada és una ASUS P5KPL-AM IN/ROEM/SI. El dispositiu d’emmagatzematge és un disc dur mecànic Samsung SpinPoint T166 HD321KJ de 320 GB, connectat mitjançant SATA 2.5 a 3,0 Gb/s. La capacitat detectada per Linux és d’aproximadament 298,1 GiB, diferència normal respecte dels 320 GB comercials per la manera de comptar les unitats.

### Benchmark
El benchmark mostra que el processador Intel Pentium E5400 és capaç de realitzar les operacions de càlcul, tot i que el seu rendiment és modest en comparació amb els processadors actuals. Amb un sol fil va obtenir 192,53 operacions per segon, mentre que amb dos fils va arribar a 745,27. Pel que fa a la memòria RAM, la prova d'escriptura va assolir una velocitat de 5.285,27 MiB/s. Tot i aquest resultat, els 2 GB de RAM disponibles són una limitació important per executar diverses aplicacions alhora.
En les proves del disc dur, la velocitat d'escriptura seqüencial va ser de 34,21 MiB/s. En canvi, en les operacions aleatòries, el rendiment va ser força inferior: 0,35 MiB/s en lectura i 0,23 MiB/s en escriptura. Això indica que el disc té dificultats per gestionar moltes operacions petites i simultànies, una limitació habitual en els discs durs mecànics antics.
En general, els resultats confirmen que l'equip té un rendiment limitat, especialment a causa de la poca memòria RAM i de l'antiguitat del processador i del disc dur. A més, les dades SMART ja havien detectat sectors pendents al disc, de manera que convé fer una còpia de seguretat i substituir-lo. Com a millores principals, seria recomanable instal·lar un SSD i ampliar la memòria RAM, sempre que la placa base ho permeti.


```text
=== 1. CPU (1 NUCLEO) ===
sysbench 1.0.20 (using system LuaJIT 2.1.1700206165)
Running the test with following options:
Number of threads: 1
Initializing random number generator from current time
Prime numbers limit: 20000
Initializing worker threads...
Threads started!
CPU speed:
events per second: 192.53
General statistics:
total time: 10.0035s
total number of events: 1927
Latency (ms):
min: 2.50
avg: 5.19
max: 6.41
95th percentile: 5.67
sum: 10000.98
Threads fairness:
events (avg/stddev): 1927.0000/0.00
execution time (avg/stddev): 10.0010/0.00
=== 2. CPU (MULTINUCLEO) ===
sysbench 1.0.20 (using system LuaJIT 2.1.1700206165)
Running the test with following options:
Number of threads: 2
Initializing random number generator from current time
Prime numbers limit: 20000
Initializing worker threads...
Threads started!
CPU speed:
events per second: 745.27
General statistics:
total time: 10.0032s
total number of events: 7459
Latency (ms):
min: 2.50
avg: 2.68
max: 10.33
95th percentile: 3.19
sum: 19998.67
Threads fairness:
events (avg/stddev): 3729.5000/18.50
execution time (avg/stddev): 9.9993/0.00
=== 3. MEMORIA RAM ===
sysbench 1.0.20 (using system LuaJIT 2.1.1700206165)
Running the test with following options:
Number of threads: 1
Initializing random number generator from current time
Running memory speed test with the following options:
block size: 1024KiB
total size: 2048MiB
operation: write
scope: global
Initializing worker threads...
Threads started!
Total operations: 2048 ( 5285.27 per second)
2048.00 MiB transferred (5285.27 MiB/sec)
General statistics:
total time: 0.3822s
total number of events: 2048
Latency (ms):
min: 0.08
avg: 0.18
max: 0.61
95th percentile: 0.23
sum: 378.50
Threads fairness:
events (avg/stddev): 2048.0000/0.00
execution time (avg/stddev): 0.3785/0.00
=== 4. DISCO (PREPARANDO) ===
sysbench 1.0.20 (using system LuaJIT 2.1.1700206165)
128 files, 8192Kb each, 1024Mb total
Creating files for the test...
Extra file open flags: (none)
Creating file test_file.0
Creating file test_file.1
Creating file test_file.2
Creating file test_file.3
Creating file test_file.4
Creating file test_file.5
Creating file test_file.6
Creating file test_file.7
Creating file test_file.8
Creating file test_file.9
Creating file test_file.10
Creating file test_file.11
Creating file test_file.12
Creating file test_file.13
Creating file test_file.14
Creating file test_file.15
Creating file test_file.16
Creating file test_file.17
Creating file test_file.18
Creating file test_file.19
Creating file test_file.20
Creating file test_file.21
Creating file test_file.22
Creating file test_file.23
Creating file test_file.24
Creating file test_file.25
Creating file test_file.26
Creating file test_file.27
Creating file test_file.28
Creating file test_file.29
Creating file test_file.30
Creating file test_file.31
Creating file test_file.32
Creating file test_file.33
Creating file test_file.34
Creating file test_file.35
Creating file test_file.36
Creating file test_file.37
Creating file test_file.38
Creating file test_file.39
Creating file test_file.40
Creating file test_file.41
Creating file test_file.42
Creating file test_file.43
Creating file test_file.44
Creating file test_file.45
Creating file test_file.46
Creating file test_file.47
Creating file test_file.48
Creating file test_file.49
Creating file test_file.50
Creating file test_file.51
Creating file test_file.52
Creating file test_file.53
Creating file test_file.54
Creating file test_file.55
Creating file test_file.56
Creating file test_file.57
Creating file test_file.58
Creating file test_file.59
Creating file test_file.60
Creating file test_file.61
Creating file test_file.62
Creating file test_file.63
Creating file test_file.64
Creating file test_file.65
Creating file test_file.66
Creating file test_file.67
Creating file test_file.68
Creating file test_file.69
Creating file test_file.70
Creating file test_file.71
Creating file test_file.72
Creating file test_file.73
Creating file test_file.74
Creating file test_file.75
Creating file test_file.76
Creating file test_file.77
Creating file test_file.78
Creating file test_file.79
Creating file test_file.80
Creating file test_file.81
Creating file test_file.82
Creating file test_file.83
Creating file test_file.84
Creating file test_file.85
Creating file test_file.86
Creating file test_file.87
Creating file test_file.88
Creating file test_file.89
Creating file test_file.90
Creating file test_file.91
Creating file test_file.92
Creating file test_file.93
Creating file test_file.94
Creating file test_file.95
Creating file test_file.96
Creating file test_file.97
Creating file test_file.98
Creating file test_file.99
Creating file test_file.100
Creating file test_file.101
Creating file test_file.102
Creating file test_file.103
Creating file test_file.104
Creating file test_file.105
Creating file test_file.106
Creating file test_file.107
Creating file test_file.108
Creating file test_file.109
Creating file test_file.110
Creating file test_file.111
Creating file test_file.112
Creating file test_file.113
Creating file test_file.114
Creating file test_file.115
Creating file test_file.116
Creating file test_file.117
Creating file test_file.118
Creating file test_file.119
Creating file test_file.120
Creating file test_file.121
Creating file test_file.122
Creating file test_file.123
Creating file test_file.124
Creating file test_file.125
Creating file test_file.126
Creating file test_file.127
1073741824 bytes written in 29.93 seconds (34.21 MiB/sec).
=== 5. DISCO (EJECUTANDO) ===
sysbench 1.0.20 (using system LuaJIT 2.1.1700206165)
Running the test with following options:
Number of threads: 1
Initializing random number generator from current time
Extra file open flags: (none)
128 files, 8MiB each
1GiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Initializing worker threads...
Threads started!
File operations:
reads/s: 22.28
writes/s: 14.85
fsyncs/s: 48.05
Throughput:
read, MiB/s: 0.35
written, MiB/s: 0.23
General statistics:
total time: 32.3173s
total number of events: 2625
Latency (ms):
min: 0.01
avg: 11.43
max: 138.34
95th percentile: 41.85
sum: 29994.88
Threads fairness:
events (avg/stddev): 2625.0000/0.00
execution time (avg/stddev): 29.9949/0.00
=== 6. DISCO (LIMPIANDO) ===
sysbench 1.0.2

0 (using system LuaJIT 2.1.1700206165)
```
#### Resultats complementaris de Hardinfo
Hi ha evidències de dues proves locals complementàries: Cache/Memory i Storage R/W Speed. Aquestes proves no substitueixen el benchmark de CPU, però aporten informació sobre el rendiment de la memòria cau i del disc.

Cache/Memory
<img src="../imatges punt 4 i 5/1·12.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

Storage R/W Speed
Figura 8. Resultats locals complementaris de memòria cau i emmagatzematge registrats per Hardinfo.
<img src="../imatges punt 4 i 5/1·41.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

#### Documentar els resultats i valorar les prestacions de l'equip.
Per comprovar el rendiment general de l'ordinador, s'han realitzat diverses proves amb Sysbench, que permeten avaluar el processador, la memòria RAM i el disc dur. En les proves de CPU, el processador va obtenir 192,53 operacions per segon amb un sol fil i 745,27 amb dos fils. La prova de memòria va registrar una velocitat d'escriptura de 5.285,27 MiB/s. Aquests resultats permeten observar el comportament dels components, tot i que cal tenir en compte que l'equip només disposa de 2 GB de RAM.
Pel que fa al disc dur, la prova d'escriptura seqüencial va assolir 34,21 MiB/s. En les operacions aleatòries, els resultats van ser força més baixos: 0,35 MiB/s en lectura i 0,23 MiB/s en escriptura. Això reflecteix les limitacions del disc mecànic a l'hora de gestionar moltes operacions petites.
En general, les proves mostren que l'ordinador té un rendiment limitat, especialment pel que fa a l'emmagatzematge i a la capacitat de memòria disponible. Els resultats també coincideixen amb l'antiguitat del maquinari. Per millorar-ne el funcionament, seria recomanable substituir el disc dur per un SSD i ampliar la memòria RAM, sempre que la placa base ho permeti. Cal recordar que aquestes proves mesuren el rendiment i no substitueixen les comprovacions de salut del disc o de la memòria.

## 5. Diagnòstic de l'equip

### Diagnòstic de la memòria RAM amb Memtest86+
Memtest86+ és una eina que s’executa durant l’arrencada, fora del sistema operatiu, i comprova la memòria mitjançant diferents patrons de lectura i escriptura. S’ha comprovat que el paquet està instal·lat a antiX: la sortida de dpkg mostra la versió 7.20-1 per a l’arquitectura amd64.

dpkg -l | grep memtest

Comprovació de la instal·lació de Memtest86+ (versió 7.20-1):
<img src="../imatges punt 4 i 5/1·11.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

Memtest86+ detectava errors al principi de l’activitat, vam haver d’apagar l’equip, tornar a col·locar el mòdul de RAM i repetir la prova. Els errors persistien, i vam provar el mòdul en una altra ranura compatible, també vam voler substituir-lo. Ls prova final que vam fer abans d'arrencar antix Linux la primera vegada va mostrar tot correcte, un informe positiu.


### Diagnòstic del disc amb Smartmontools
S’ha utilitzat smartctl, inclòs a Smartmontools, per consultar el disc /dev/sda. La sortida identifica el model SAMSUNG HD321KJ, de la família Samsung SpinPoint T166, amb una capacitat de 320 GB i una interfície SATA 2.5 a 3,0 Gb/s. La versió de smartctl visible és la 7.4.

lsblk -o NAME,SIZE,MODEL,TYPE
sudo smartctl -a /dev/sda


Identificació del Samsung HD321KJ i resultat general SMART «PASSED»:
<img src="../imatges punt 4 i 5/1·15.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

L’autodiagnòstic global informa SMART overall-health self-assessment test result: PASSED. Aquest resultat, per si sol, no és suficient per concloure que el disc està en bon estat: cal revisar els atributs individuals i el registre d’errors.

#### Atributs SMART rellevants
| **Atribut** | **Valor brut observat** | **Interpretació** |
| :---: | :---: | :---: |
| Power_On_Hours | 63 | Hores reportades pel dispositiu; no és el criteri principal de salut |
| Power_Cycle_Count | 51 | Nombre d’enceses registrat |
| Reallocated_Event_Count (196) | 0 | No es registren esdeveniments de reassignació en aquest atribut |
| Total_Pending_Sectors (197) | 13 | 13 sectors pendents de reassignació: indicador d’alerta |
| Offline_Uncorrectable (198) | 0 | Valor brut 0 en aquest atribut; no anul·la els errors UNC del registre |
| UDMA_CRC_Error_Count (199) | 0 | No es veuen errors CRC de transmissió |
| Temperature_Celsius (194) | 32ºC | Temperatura reportada pel disc |

Atributs SMART: el valor brut de Total_Pending_Sectors és 13:
<img src="../imatges punt 4 i 5/1·17.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

#### Errors de lectura del registre SMART
El registre d’errors ATA mostra 17 errors acumulats. Entre els errors visibles a les captures hi ha errors UNC (Uncorrectable) durant operacions de lectura:

- Error UNC de 8 sectors a LBA 192.940.032.
- Error UNC de 128 sectors a LBA 12.650.864.

Un error UNC indica que el disc no ha pogut recuperar les dades d’una determinada zona. La presència d’aquests errors, juntament amb els 13 sectors pendents, és compatible amb un deteriorament del suport magnètic i representa un risc per a la integritat de les dades.

Registrer d’errors ATA:
<img src="../imatges punt 4 i 5/1·18.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

Detall de l’error UNC de 28 lectors
Figura 12. Registre d’errors del disc amb lectures UNC no corregibles:
<img src="../imatges punt 4 i 5/1·21.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

#### Prova curta SMART
S’ha iniciat la prova curta amb l’ordre següent:

sudo smartctl -t short /dev/sda

La resposta de smartctl indica que la prova ha començat correctament i que necessita aproximadament dos minuts.

Inici de la prova SMART curta; la sortida indica una durada estimada de dos minuts:
<img src="../imatges punt 4 i 5/1·22.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

#### Valoració del disc: anomalia important
El valor global PASSED no elimina les alertes dels atributs: hi ha 13 sectors pendents i errors UNC enregistrats. S’ha de prioritzar una còpia de seguretat immediata i la substitució del disc. No és recomanable sotmetre’l a proves d’estrès ni a operacions d’escriptura innecessàries abans de protegir les dades,, si fossin importants i necessaris que es continuesin conservant.

### Diagnòstic de temperatures i voltatges amb lm-sensors
S’ha utilitzat lm-sensors per detectar els sensors de la placa base i consultar-ne les lectures. 

La detecció automàtica identifica la placa ASUS P5KPL-AM IN/ROEM/SI i el processador Pentium Dual-Core E5400. S’hi detecta el sensor tèrmic digital Intel (controlador coretemp) i el xip ITE IT8720F Super I/O.

sudo sensors-detect --auto
sensors

Detecció dels sensors Intel i identificació de la placa base:
<img src="../imatges punt 4 i 5/1·23.jpg" alt="008" width="500" style="display: block; margin:0 auto;">

Lectures obtingudes:
| **Paràmetre** | **Valor observat** | **Valor de referència del sensor** |
| :---: | :---: | :---: |
| temperatura cpu (acpi) | 41,0ºC | High 60,0 °C · crític 95,0 °C |
| nucli 0 | 41,0 °C | Crític 100,0 °C |
| nucli 1 | 40,0 °C | Crític 100,0 °C |
| ventilador cpu | 1.683 RPM | Mínim 600 RPM · màxim 7.200 RPM |
| vcore | 1,15 V | 0,85–1,60 V |
| +3,3 V | 3,31 V | 2,97–3,63 V |
| +5 V | 5,07 V | 4,50–5,50 V |
| +12 V | 12,04 V | 10,20–13,80 V |

Sortida de sensors: temperatures dels dos nuclis, velocitat del ventilador i voltatges
<img src="../imatges punt 4 i 5/1·27.jpg" alt="008" width="500" style="display: block; margin:0 auto;">


Les temperatures de 40–41 °C són inferiors als llindars de 60 °C (high) i 95 °C (crític) que indica el sensor ACPI. Els dos nuclis també es troben molt per sota del límit crític de 100 °C. El ventilador funciona a 1.683 RPM i els voltatges mesurats estan dins dels intervals que mostra lm-sensors.

#### Valoració tèrmica: sense anomalies en la lectura
En el moment de la comprovació no s’observen temperatures excessives ni voltatges fora dels intervals indicats pels sensors. No cal cap correcció immediata. En un equip antic és convenient mantenir nets el dissipador i els ventiladors i revisar la pasta tèrmica com a manteniment preventiu. A més a més, es feia servir el PC amb una tapa lateral extreta, per tant, el calor dissipava molt millor a l’aire de l’aula sense resguardar-se dintre del chasis.



## 6. Simulació d'averies
Aquest apartat el vam treballar de manera pràctica al començament de la segona sessió, ja que l'equip va deixar de donar senyal en engegar-lo després d'haver funcionat correctament el primer dia. Per diagnosticar i aïllar la causa de l'avaria vam aplicar un protocol de descarts pas a pas:

1. Comprovació dels perifèrics de sortida: Substitució del monitor i verificació del cable de vídeo.
2. Comprovació dels perifèrics d'entrada: Substitució del ratolí i del teclat.
3. Comprovació de l'alimentació externa: Canvi del cable d'alimentació.
4. Demanar ajuda al professorat: Al cap d'una estona extracció i comprovació de les RAM i els canals.
5. Resultat: un dels canals s'havia espatllat entre la primera i segona sessió, fonent per complet una de les RAM. Aixi que vam passar de 4GB a 2GB.

## 7. Conclusions


