<!-- Aquest codi és necessari només per passar el markdown a pdf amb les pautes demanades a l'activitat -->

<style>
@page {
  margin: 2.5cm;
  @bottom-right {
    content: counter(page);
    font-size: 10pt;
    font-family: sans-serif;
  }
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

.portada {
  text-align: center;
  padding-top: 50px;
}

.portada h1 {
  font-size: 24pt;
  margin-bottom: 20px;
}

.portada h2 {
  font-size: 16pt;
  color: #555;
  margin-bottom: 40px;
}

.portada .dades {
  font-size: 12pt;
  margin-top: 150px;
  text-align: left;
  border-left: 4px solid #ea8000;
  padding-left: 15px;
}

h2 {
  page-break-before: always;
}

.index-personalitzat {
  font-size: 14pt;
  line-height: 2;
}

.nota {
  font-size: 8pt;
  color: rgb(40, 40, 40);
}
</style>

<!-- PORTADA -->

<div class="portada">
  <h1>Activitat 6 Individual. Virtualització.</h1>
  <h3>Implantació de Sistemes Operatius (0369)</h3>

  <div class="dades">
    <p><strong>Cicle Formatiu:</strong> Administració de Sistemes Informàtics en Xarxa, perfil professional Ciberseguretat (ASIX)</p>
    <p><strong>Alumne:</strong> Alex Morcillo Quiñones</p>
    <p><strong>Data:</strong> Octubre 2026</p>
  </div>
</div>

<div style="page-break-after: always;"></div>

<!-- Index -->
<div class="index-personalitzat">

- [Objectius, Competències i Requeriments](#objectius-competències-i-requeriments)
- [Apartat A. Preparació de l'entorn](#apartat-a-preparació-de-lentorn)
- [Apartat B. Teoria de virtualització](#apartat-b-teoria-de-virtualització)
- [Apartat C. Instal·lació d'un sistema operatiu propietari](#apartat-c-instal·lació-dun-sistema-operatiu-propietari)
- [Apartat D. Instal·lació d'un sistema operatiu lliure](#apartat-d-instal·lació-dun-sistema-operatiu-lliure)
- [Apartat E. Arrencada DUAL](#apartat-e-arrencada-dual)
</div>

<div style="page-break-after: always;"></div>

<!-- Aquí comença l'activitat -->

### **Objectius:**  
L’objectiu principal d’aquesta pràctica és estudiar tot allò que està relacionat amb la virtualització de sistemes operatius mitjançant el desenvolupament d’una sèrie de tasques.

### ***Competències professionals, personals i socials***
- Administrar sistemes operatius de servidor, instal·lant i configurant el programari, en condicions de qualitat per assegurar el funcionament del sistema.
- Optimitzar el rendiment del sistema configurant els dispositius maquinari d’acord amb els requisits de funcionament.

### **Requeriments:**
- VirtualBox
- ISO de Windows 10
- ISO d’Ubuntu Desktop 18

## **Apartat A. Preparació de l’entorn**

### **Instal·lació de VirtualBox**
- Suposem que ja teniu instal·lat VirtualBox; si no, instal·la’l.
- Instal·leu l'Extension Pack de VirtualBox que us donarà suport extra.
- Configura, si no ho tens, **la carpeta per defecte** de les teves màquines virtuals perquè apunti a la partició "Dades" que vam crear el dia de la instal·lació. Crea una carpeta que s’anomeni **VirtualMachinesM1** i desa aquí totes les màquines que farem servir a Implantació de Sistemes Operatius.

### **Coneixement de VirtualBox**
- Hauries de fer una ullada al tutorial de VirtualBox que tens al campus virtual per tenir clares totes les opcions disponibles.

### **Adquirir una llicència de Windows 10 o superior**
Pots baixar una ISO de Windows 10:
https://www.microsoft.com/es-es/software-download/windows10ISO

### **Adquirir una llicència d’Ubuntu Desktop 18 o superior**
Pots baixar una ISO des del web oficial d'UBUNTU.

## **Apartat B. Teoria de virtualització**
Has de realitzar aquest apartat mentre s’instal·len les màquines virtuals, ja que triga una mica el procés d’instal·lació.

### **Contesta a les següents preguntes teòriques:**

#### Què és virtualitzar un sistema?
- Virtualitzar un sistema consisteix en la creació d'un recurs tecnològic, com ara el Windows o Ubuntu, amb una versió basada en programari.

#### Quins són els beneficis de la virtualització?
- Ens permet tenir més d'un SO en el mateix disc dur, sense necessitar apagar i engegar el PC. Permet també experimentar en màquines virtuals sense arriscar-nos a corrompre el nostre SO base.

#### Quins són els inconvenients de la virtualització?
- Com que és un SO sobre un programa que corre sobre d'un altre SO, el rendiment és inferior, ja que ha de passar tot per un intermediari. Si tens massa recursos assignats a màquines virtuals pots deixar sense memòria l'ordinador real i trobar problemes de rendiment encara més grans.

#### Quin programari existeix per virtualitzar?
- Tenim el VirtualBox que és de codi obert i gratuït, VMware Workstation, Windows té integrat el Microsoft Hyper-V i per emular sistemes d'Apple se sol recomanar UTM.

## **Apartat C. Instal·lació d’un sistema operatiu propietari**
### **Documenta amb captures de pantalla i les explicacions necessàries, tot el procés que vas a seguir per a realitzar la instal·lació.**

#### Exposa a una taula els requeriments mínims i recomanats de maquinari que té el Sistema Operatiu.

|Windows 11|Mínims|Recomanats|
|:--:|:--:|:--:|
|**CPU**|1Ghz de 2 nuclis o més i que apareguin a la [llista de CPUs aprovades](https://learn.microsoft.com/es-es/windows-hardware/design/minimum/windows-processor-requirements)|Intel Core i5 / AMD Ryzen 5 (11ª Gen o Ryzen 5000 en endavant)|
|**RAM**|4 GB (8 GB com a mínim absolut per multitasking bàsic)|16 GB|
|**Emmagatzematge**|64 GB d'espai|512 GB amb NVMe recomanats|
|**Gràfics**|DirectX 12 / WDDM 2.0|Gràfics integrats moderns o GPUs dedicades|

#### Quanta memòria RAM i capacitat de disc dur podem utilitzar al nostre sistema per obtenir un rendiment òptim? Configura les opcions del VirtualBox per optimitzar el rendiment d’aquesta màquina virtual.
- He utilitzat 6 GB de RAM i 4 nuclis de processador, ja que a l'aula 008 no tenim gaire RAM extra.

#### Utilitza les opcions per defecte durant la instal·lació.

![windows](assets/image-4.png)

![windows_instalat](assets/image-5.png)

#### Un cop acabada la instal·lació, instal·la les Guest Additions.

![guestadditions](assets/image-8.png)

![guestadditions2](assets/image-9.png)

#### Deshabilitarem l’actualització de WINDOWS 10 mitjançant el Servei de Windows Update deshabilitant el servei de Windows.

- Fem Win + R, busquem `services.msc`, a dintre baixem fins a Windows Update, clic dret, propietats i a Startup Type canviem d'automàtic a disabled, apply i ho tenim!

![winupdate](assets/image-10.png)

#### Quan ja ho tinguis tot, exporta la màquina virtual i posa-li com a nom W11Base, així tindrem una màquina enllestida per poder fer altres pràctiques.

![W11Base](assets/image-11.png)

## **Apartat D. Instal·lació d’un sistema operatiu lliure**<section id="Ubuntu">
### **Documenta amb captures de pantalla i les explicacions necessàries, tot el procés que vas a seguir per a realitzar la instal·lació.**

#### Exposa a una taula els requeriments mínims i recomanats de maquinari que té el Sistema Operatiu.

|Ubuntu 26|Mínims|Recomanats|
|:--:|:--:|:--:|
|**CPU**|2Ghz de 2 nuclis o més|Intel Core i5 8ª gen+ / AMD Ryzen 5 2000+|
|**RAM**|6 GB com a mínim per poder arrencar GNOME|16 GB|
|**Emmagatzematge**|25 GB d'espai|100 GB amb NVMe recomanats|
|**Gràfics**|Gràfics integrats bàsics|Intel UHD 630+, Nvidia GTX 900+ (GPUs compatibles amb Vulkan/Wayland)|

#### Quanta memòria RAM i capacitat de disc dur podem utilitzar al nostre sistema per obtenir un rendiment òptim? Configura les opcions del VirtualBox per optimitzar el rendiment d’aquesta màquina virtual.

- He utilitzat 6 GB de RAM i 4 nuclis de processador, ja que a l'aula 008 no tenim gaire RAM extra.

#### Utilitza les opcions per defecte durant la instal·lació.

![insalacion_1](assets/image.png)

![VM](assets/image-1.png)

![instalacion_2](assets/image-2.png)

![Instalat](assets/image-3.png)

#### Un cop acabada la instal·lació, instal·la les Guest Additions.

![guest](assets/image-12.png)

![guestinstall](assets/image-13.png)

**M'he trobat el problema que primer havia d'instal·lar i actualitzar tot.**
- La solució ha estat:

```sudo apt update```  
```sudo apt upgrade -y```  
```sudo apt install build-essential dkms linux-headers-$(uname -r) -y```  

- *Pot ser necessària la instal·lació de bzip2 o gcc:*
```sudo apt install bzip2``` o ```sudo apt install gcc```

![updating](assets/image-14.png)

![essentials](assets/image-15.png)

#### Quan ja ho tinguis tot, exporta la màquina virtual i posa-li com a nom UbuntuDesk18Base, així tindrem una màquina enllestida per poder fer altres pràctiques.

![UbuntuDesk18Base](assets/image-16.png)

## **Apartat E. Arrencada DUAL**
### **Documenta amb captures de pantalla i les explicacions necessàries, tot el procés que vas a seguir.**

#### Crea una nova màquina virtual Windows 11

- Clonem la màquina que ja teníem amb Windows 11.

![windows11dualboot](assets/image-17.png)

#### Instal·leu ara Ubuntu 18 sobre aquesta màquina.

- Per poder fer el dual-boot abans hem de seguir uns passos per assegurar-nos de no perdre res.
- A Windows anem a l'administrador de discos.

    ![particions](assets/image-19.png)

- Fem clic dret al volum principal (anomenat **C:** normalment).

    ![reduim volum](assets/image-20.png)

- Reduïm l'espai necessari, jo només agafo 25 GB però recomano més si és per fer un dual-boot real ja que amb 25 GB et faltarà espai. Ens ha de quedar el total d'espai que volem com a "Unallocated Space" (a la captura podem veure 15 GB, però vaig arreglar l'error ja que el mínim recomanat són 25 GB).

    ![unallocated](assets/image-21.png)
    
- Creem un USB d'arrencada (Recomano fer servir Rufus) si és a una màquina real.
- [TUTORIAL YOUTUBE](https://www.youtube.com/shorts/ZY4lRwsxUmg)
- A VirtualBox anem a Dispositius > Unitats Òptiques > Crear nova i triem la ISO d'Ubuntu 26.

    ![ChooseCreate](assets/image-18.png)

- Per últim hem de desactivar BitLocker.
- Obrim el CMD com a administrador.

    ![cmd](assets/image-25.png)

- Escrivim la següent comanda per desxifrar la unitat C: `manage-bde -off C:` (pot trigar, per veure com progressa podem fer `manage-bde -status C:`).

    ![status](assets/image-26.png)

    ![0percent](assets/image-27.png)


- Ara sí, finalment podem instal·lar Ubuntu!
  - Apaguem la màquina/PC.
  - Al PC anem a la BIOS (premem SUPRIMIR mentre s'encén normalment) i triem el boot amb el pendrive de Rufus.
  - Al VB amb la màquina apagada anem a Configuració (Ctrl + S) > Emmagatzematge.
  - Triem la icona d'afegir disc òptic i triem la nostra ISO.

      ![add](assets/image-22.png)

  - Ara anem a l'apartat de Sistema i canviem el Boot Order, triant el CD com a primera opció.
  - Si ens surt en gris, primer hem de desactivar la UEFI.

      ![gray](assets/image-23.png)

      ![UEFI](assets/image-24.png)

  - Iniciem la màquina virtual i instal·lem Ubuntu com als <a href="#Ubuntu">passos anteriors</a> però amb un petit detall, en comptes de **ERASE DISK AND INSTALL UBUNTU** triem **INSTALL ALONGSIDE WINDOWS**.

      ![windows](assets/image-28.png)

      ![installing](assets/image-29.png)

## Amb els dos sistemes instal·lats, fes que aparegui el menú del Grub per poder seleccionar de quin disc volen arrencar la màquina.

- Una vegada tenim Ubuntu reiniciem. 

![restart](assets/image-30.png)

- Traiem l'USB o desmuntem la ISO virtual i premem Intro.
- Si hem seguit tots els passos hem de tenir Ubuntu i Windows disponibles; en iniciar la màquina veurem el menú GRUB i podrem triar Windows o Ubuntu.

![grub](assets/image-31.png)

<div class="nota">

*Ús de la IA (Gemini): En aquesta activitat he utilitzat la IA per corregir errors ortogràfics, i d'estructura del markdown, juntament amb el corrector de [Softcatalà](https://www.softcatala.org/corrector/) per a la conclusió final, li he passat l'arxiu .md (markdown) sense les preguntes i li he demanat que em digui totes les faltes d'ortografia.*

</div>