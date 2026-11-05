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
  <h1>Activitat 2. Desmuntatge i muntatge d’un ordinador</h1>
  <h2>Activitat grupal</h2>
  <div class="dades">
    <p><strong>Grau superior:</strong> Administració de sistemes informàtics en la xarxa (ASIX), perfil ciberseguretat</p>
    <p><strong>Assignatura:</strong> Fonaments de maquinari
    <p><strong>Alumne:</strong> Alex Morcillo Quiñones
    <p><strong>Alumne:</strong> Miquel Luque Blanch
    <p><strong>Alumne:</strong> Guerau Peguera Rubio
    <p><strong>Data:</strong> 23-10-2026</p>
  </div>
</div>

<div style="page-break-after: always;"></div>



## Activitat 2 - Desmuntatge i muntatge d'un PC

# ALL CREDITS GO TO MY CLASSMATE <a href="https://github.com/MLuque211">Miquel Luque Blanch</a> HE DID ALL THE MARKDOWN FORMATTING AND THE FINAL PDF ON THIS EXERCICE

**Introducció**

A partir de l’ordinador assignat, seguiu els següents passos en l’ordre esmentat i feu fotografies de tot el procés:

- Treure la tapa de l’ordinador, vigilant de no perdre els cargols que serveixen per fixar-la a l’estructura de la caixa.
- Desconnectar els cables de la font d’alimentació de la placa base i de cadascun dels dispositius que necessiten alimentació. Observar amb deteniment com estan connectats i anotar-ho si cal.
- Treure la font d’alimentació de la caixa.
- Desendollar els cables IDE/SATA/Disquetera. Observar amb deteniment com estan connectats i anotar-ho si cal.
- Descargolar els cargols corresponents i treure el disc dur, disquetera i lector CD/DVD (si n’hi ha) de la caixa.
- Treure les targetes d’expansió que hi pugui haver al bus ISA/PCI/AGP/PCI-e.
- Treure els mòduls de memòria dels seus sòcols.
- Desmuntar el sistema de refrigeració del microprocessador, si s’escau.
- Finalment, si és possible treure el microprocessador del seu socket/slot.


## Introducció i dades de l'equip
La víctima d'aquesta activitat ha estat un PC que se'ns ha subministrat a l'aula, el codi del qual és: URIEL KEVIN Nº13. Representada per la següent imatge:

<img src="../Imatges/008.jpeg" alt="039" width="500" style="display: block; margin:0 auto;">

L'equip està conformat per una carcassa de protecció metàl·lica, amb reixes de ventilació disposades a la part frontal i a la part posterior. Tota l'estructura queda subjectada per cargols a si mateixa i els seus components.

La part exterior està conformada per tres sectors diferents; dos en la part posterior y una en la part anterior.

## Anàlisi exterior

### Part posterior [[[[substitols a l'esquerra]]]]
A la part superior hi trobem la _font d'alimentació_, a l'etiqueta de la qual es pot apreciar que permet entrar corrent amb una potència màxima de 230V.

<img src="../Imatges/009.jpeg" alt="039" width="400" style="display: block; margin:0 auto;">

A sota de la font hi trobem els diferents connectors que van directament a la placa base. Aquests, en ordre descendent són:
- Port PS/2: serveixen per connectar el ratolí (verd) i el teclat (lila).
- Port COM2: serveix per connectar mòdems externs.
- Port VGA: serveix per transmetre senyals de vídeo analògiques (aquestes no transmetien àudio).
- Ports USB 2.0: serveixen per connectar fins a 4 unitats per a diferents perifèrics.
- Port LAN: serveix per connectar-te a ethernet a través del cable, conegut col·loquialment com, RJ-45.
- Ports d'input i output d'àudio: El rosa és entrada pel micròfon, el verd és la sortida d'àudio (altaveus o cascos) i el blau és l'entrada d'àudio.

<img src="../Imatges/010.jpeg" alt="039" width="390" style="display: block; margin:0 auto;">

### Part frontal
A la part superior hi trobem dos components diferents. El primer component és l'unitat de lector/gravador de discos físics de la marca LG. Serveix per llegir i gravar CD i DVD. El segon component consisteix en un espai extraïble amb clau per emmagatzemar un disc dur HDD. 

<img src="../Imatges/011.jpeg" alt="039" width="500" style="display: block; margin:0 auto;">

## Procés de desmuntatge, identificació de components i muntatge 

### Interior
Seguint les indicacions de la pràctica, es va procedir a desconnectar la font, retirar lectors, memòries, dissipador i processador.

<img src="../Imatges/012.jpeg" alt="039" width="800" style="display: block; margin:0 auto;">

En aquesta imatge es pot apreciar com ens trobem l'interior de l'ordinador un cop obert. A primera vista es pot apreciar que la **font d'alimentació** es troba a la part superior esquerra i la **placa base** a sota, tal com havíem deduït en mirar la part exterior. La gran majoria de cables estan desconnectats entre ells. A la part dreta hi ha un petit rac completament buit a excepció de la part superior on es pot distingir el lector i l'emmagatzematge **sense disc dur**. També es pot apreciar que no hi ha **gràfica**.


### Font d'alimentació
Pertany a la marca _PC CASE_, model _200XA_. Presenta una potència de 500 W i ha estat fabricat a China. En l'etiqueta es poden distingir les especificacions tècniques de les variacions en potència que podria presentar. Porta integrat un ventilador a la part inferior per dissipar la calor. I es troba connectat directament a la placa base. Les especificacions tècniques s'han deixat per l'annex.

<img src="../Imatges/013.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

### Lector

<img src="../Imatges/014.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

### (Sense) Disc dur

<img src="../Imatges/015.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

### Placa base

![016](../Imatges/016.jpeg)

Tal com es pot veure en la imatge detallarem tot allò que hem distingit. El model de la placa base és _ASUS P5KPL-AM IN/ROEM/SI_. Aquí podem trobar el [manual](https://www.asus.com/latin/supportonly/p5kplam_inroemsi/helpdesk_knowledge/) de la mateixa placa. A través del seu model hem descobert que aquest ordinador pertany al 2009.

1. Processador: En la part superior es pot observar el ventilador que ajuda a dissipar la calor del processador. És un [Intel Pentium E5400](https://www.techpowerup.com/cpu-specs/pentium-e5400.c853). Indica on va ser fabricat i les especificacions del mateix. Un cop desmuntat es va netejar i tornar a posar pasta tèrmica nova per tal de provar més tard el seu funcionament. Les especificacions tècniques s'han deixat per l'annex.

<img src="../Imatges/017.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">
<img src="../Imatges/018.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

2. RAM: A la seva dreta trobem les ranures per a la memòria RAM. Hi ha dues unitats inserides. Aquestes, un cop extretes, es poden apreciar que són de la marca Kingston amb el model exacte de [KVR800D2D6/2G](https://www.kingston.com/dataSheets/KVR800D2N6_2G.pdf). El mateix model t'indica que és un D2 amb una capacitat de 2G; és a dir, forma part de la generació dels DDR2 amb una capacitat de 2GB cada una. Van ser fabricats a China. Les especificacions tècniques s'han deixat per l'annex.

<img src="../Imatges/019.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">


3. Xipset: Just a sota trobem el Northbridge, tapat per un dissipador i més avall el Southbridge. En la imatge no apareix perquè l'estàvem netejant. El dissipador es pot distingir en la imatge del processador, el color coure que hi ha just a sota. [Xips de Lògica](https://theretroweb.com/motherboards/s/asus-p5kpl-am-in-roem-si-rev-1-03g) Central/Core Logic Chipset North brige es un intel g31 B0 i south bridge es un Intel ICH7. Les especificacions tècniques s'han deixat per l'annex.

<img src="../Imatges/020.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

4. PCI: Hi ha tres ranures. La ranura blaca pertany al _PCI express_ i dues de blanques (PCI1,PCI2) més petites que pertanyen als _PCI_ tradicionals amb mida estandard. Els PCI es fan servir per instal·lar targetes d'expansió. Els convencionals comparteixen el bus de dades que utilitzen la resta de components per comunicar-se. En canvi, els PCIe presenten una arquitectura única entre l'origen i el destí, amb busos de dades exclusius entre ells i la ¿CPU? (x1, x2, x4, x8, x16). Les especificacions tècniques s'han deixat per l'annex. Els usos més habituals són:
    - Targetes gràfiques (GPUs): Instal·lada en ranures x16 per gestionar el processament de vídeo i jocs d'amplada de banda alta.
    - Dispositius d'emmagatzematge: Es fa servir per a unitats d'estat sòlid ràpid (NVMe/PCIe SSDs) o controladors d'emmagatzematge/RAID.
    - Adaptadors de xarxa: ES fa servir per a afegir targetes Wi-Fi, targetes Ethernet o interfícies de xarxa de fibra òptica.
    - Targetes d'àudio i captura: ES fa servir per a targetes de so dedicades o targetes de captura de vídeo/TV.
    - Expansió perifèrica: Es fa servir per afegir ports USB addicionals, ports en sèrie o targetes acceleradores especialitzades(GPUs, FPGAs, ASICs, NPU/Acceleradors d'IA...).


<img src="../Imatges/021.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">

5. SATA: Els connectors SATA són de color vermell i estan posicionats a la part inferior dreta. Com que no hi ha cap disc dur no es fan servir. Són la segona generació anomenada SATA II. Les especificacions tècniques s'han deixat per l'annex.

6. Part inferior: A la part inferior trobem de esquerra a dreta:
- AAFP(Advanced Audio Frontal anel): Connector d'àudio frontal. Serveix per connectar els ports de jack de 3.5 mm (auriculars i micròfon) i el circuit d'àudio de la torre a la placa base.
- F_PANEL: Agrupa els pins per als botons del panell frontal, (engegada, reinici, i leds indicadors)
- SB_PWR led: Indicador d'energia en espera, indica si l'equip esta en standby aprofitant que la PSU administra corrent als circuits standy(+5VSB) fins i tot amb el PC apagat
- USB78: Header usb intern (USB 2.0) per afegir 2 ports adicionals (7 i 8)
- USB56: Header usb intern (USB 2.0) per afegir 2 ports adicionals (5 i 6)
- PRI_IDE: Conector IDE primari d'una placa base, utilitzat per comunicar la placa base amb dispositius d'emmagatzematge masiu (disc durs ATA/PATA, CDs/DVDs...)
- CLRTC (Clear RTC RAM): pins utilitzats per esborrar memoria CMOS i resetejar la BIOS a valors de fabrica
- SPEAKER: altaveu intern que emet codis de pitidos durant el POST(Power-On Self-Test) per avisar de possibles errors de inici, l'estandar actual son llums de post que fan mes façil identificar errors.
- PILA de CMOS: Pila (normalment CR2032) que serveix per subministrar energia constant al xip de la BIOS/CMOS quan el PC està fora de la corrent, evitant que es perdin la data, l'hora i la configuració del m

7. Pila: A la part inferior també podem trobar la pila que serveix per mantenir la BIOS actualitzada en data, hora i configuració encara que l'ordinador estigui apagat. Un cop engeguem l'ordinador veurem si s'ha mantingut la bateria després de gairebé divuit anys.


### Muntatge
S'ha procedit a montar l'equip i connectar-lo a una pantalla, però ens hem trobat amb dos problemes inesperats. El primer d'ells, que havíem de seguir un ordre mil·limètric per connectar els leds del panell frontal. Tot i que a la pròpia placa base t'indicava on havia d'anar cada un, no es podia distingir del tot bé per lo petit que era. Així que ens hem aprofitat de la fotografia que li vam fer abans de desmontar-lo per, en combinar-ho amb el panell, poguèssim confirmar al 100% de que ho estàvem fent bé.

<img src="../Imatges/023.jpeg" alt="039" width="300" style="display: block; margin:0 auto;"> 

El segon d'ells, que tot i engegar de manera normal, la pantalla es quedava en negra. Al no tenir coneixements suficients, li hem demanat ajuda a en Jaume. Gràcies a ell, em descobert la funció del **speaker**. Aquest serveix per emetre senyals acústics de manera intermitent quan un ordinador s'engega per tal d'advertir si aquest no arrenca de manera correcta. Voluntàriament vam desconnectar (no recordo quin cable) per tal de probar la seva funció principal. Al no sonar, el vam canviar i continuava sense sonar. Va ser llavors quans ens vam adonar que no haviem connectat un dels cables de la font d'alimentació, concretament l'ATX de 12V. Al fer-ho, vam poder descobrir com llavors l'speaker sí emitia senyals acústics intermitents. Ho vam connectar tot i la pantalla es va engegar. Al no disposar de cap teclat en aquells instants no vam poder accedir a la BIOS. 

<img src="../Imatges/023.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">FALTA MARCAR ELS DOS ERRORS

<img src="../Imatges/024.jpeg" alt="039" width="300" style="display: block; margin:0 auto;">



## Annex
Fitxa de característiques de l’ordinador analitzat

**Característiques del microprocessador**
- Marca: Intel
- Model: Pentium E5400
- Nuclis/fils: 2 niclis/2fils
- Velocitat: 2.70 GHz (Base Clock: 200 MHz, Multiplicador: 13.5x)
- Memòria cau: 2 MB L2
- Bus frontal: 800 MHz
- Memòria cau: 2 MB L2
- Socket: Socket 775 (LGA775)

**Característiques de la placa base**
- Marca: ASUS
- Model: P5KPL-AM IN/ROEM/SI
- Any de fabricació: 2009
- Format (AT/ATX/uATX): uATX (Micro-ATX)
- BIOS: AMI BIOS (64 Mb Flash ROM)
- Tipus de socket de CPU: LGA775
- Xipset Northbridge: Intel G31 B0
- Xipset Southbridge: Intel ICH7 / 82801GB (1.05V)
- Controladora IDE? Quants ports? Sí, 1 port UltraDMA 100/66/33 (permetre connectar fins a 2 dispositius IDE)
- Controladora SATA? Quants ports? Sí, 4 ports SATA 3Gb/s (300 MB/s)
- Altres tipus de controladores de disc? No n'hi ha
- Nombre de bancs de memòria i tipus: 2 bancs (DIMM) per a memòria DDR2 (suport Dual Channel, màx. 4 GB)
- Tipus de slots d’expansió i nombre (ISA / PCI / AGP / PCIe): 1 PCIe x16 (línia dedicada); 2 PCI mida estàndard (línia compartida)
- Tipus de connector de teclat (PS/2, USB): PS/2 (port lila) o USB
- Tipus de connector de ratolí (PS/2, USB): PS/2 (port verd) o USB
- Nº de ports sèrie i paral·lel: 1 port Sèrie (COM2). Sense port paral·lel al panell posterior.
- Vídeo: 1 port VGA (Vídeo analògic)
- Xarxa: 1 port LAN RJ-45 (Ethernet)
- Nº de ports USB i versió: 4 ports USB 2.0 (panell posterior) més 2 que trobem en la placa base per a USB's frontals.
- Àudio: 3x Jacks d'àudio 3.5mm (Rosa - Micròfon, Verd - Sortida de línia, Blau - Entrada de línia)

**Memòria**
- Tipus de memòria instal·lada: DDR2 SDRAM
- Quantitat de mòduls instal·lats: 2 mòduls
- Marca i velocitat: Kingston KVR800D2D6/2G
- Quantitat total de RAM: 4 GB (2 x 2GB)
- Freqüència de rellotge: 800 MHz

**Targeta gràfica** FALTA
- És integrada? Sí. Integrada al Northbridge Intel G31 B0
- Tipus de connector (si no està integrada) (ISA / VLB / PCI / AGP / PCI-e): 
- Marca i model: 
- Xip de la gràfica / GPU: 
- Quantitat de memòria RAM de vídeo: 

**Targeta de so** FALTA
- És integrada?
- Tipus de connector (si no està integrada): 
- Marca i model: 

**Targeta de xarxa** FALTA
- Està integrada?
- Tipus de connector (si no està integrada):
- Marca i model: 
- Xipset de xarxa: 

**Altres targetes d’expansió?**
- Anomena quines i les seves característiques principals: Les ranues de PCIe i PCI es troben buides. 

**Disc dur**
- Tipus de disc dur (IDE / SCSI / SATA / NVME): No n'hi havia
- Marca i model: -
- Capacitat: -

**Altres unitats d’emmagatzematge** FALTA
- Lector de CD i tipus (IDE / SATA). Anotar marca, model i velocitats (L/E): 
- Disquetera (3.5 / 5.25): 

**Font d’alimentació**
- Tipus i font d’alimentació: Font d'alimentació ATX de la marca PC CASE. Model 200XA. Potència màxima: 500 W, entradà de corrent: 230V AC. Compta amb un ventilador inferior integrat per a l'extracció de calor.
- Nombre i tipus de cable d’alimentació (Disquetera, SATA, Molex, PCIe, Auxiliars de placa,...):
    - 1 connector principal ATX de 24 pins
    - Auxiliars: 1 connector ATX de 4 pins de 12V
    - SATA: 2 connectors SATA II
    - Molex: ??????
    - Disquetera: 1 connector de 4 pins
    - PCI i PCIe: No tenen cap de dedicat.