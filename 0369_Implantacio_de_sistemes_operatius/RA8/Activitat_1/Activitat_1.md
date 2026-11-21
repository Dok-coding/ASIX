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

ul {
  padding-left: 20px;
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

.portada h3 {
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

kbd {
  display: inline-block;
  padding: 2px 6px;
  font-family: monospace;
  font-size: 9.5pt;
  font-weight: bold;
  line-height: 1.1;
  color: #24292f;
  background-color: #f6f8fa;
  border: 1px solid #d0d7de;
  border-bottom-width: 2px;
  border-radius: 4px;
  box-shadow: inset 0 -1px 0 #d0d7de;
}

img {
  display: block;
  margin: 14px auto;
  max-width: 92%;
  object-fit: contain;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
  page-break-inside: avoid;
}

.callout-note, .callout-tip, .callout-important, .callout-warning {
  padding: 10px 14px;
  margin: 14px 0;
  border-left: 4px solid;
  border-radius: 4px;
  background-color: #f8f9fa;
}

.callout-title {
  font-weight: bold;
  display: block;
  margin-bottom: 4px;
}

/* NOTE */
.callout-note { border-color: #0969da; background-color: #f0f7ff; }
.callout-note .callout-title { color: #0969da; }

/* TIP */
.callout-tip { border-color: #1a7f37; background-color: #f0fdf4; }
.callout-tip .callout-title { color: #1a7f37; }

/* IMPORTANT */
.callout-important { border-color: #8250df; background-color: #f8f5ff; }
.callout-important .callout-title { color: #8250df; }

/* WARNING */
.callout-warning { border-color: #d1242f; background-color: #fff5f5; }
.callout-warning .callout-title { color: #d1242f; }
</style>
<script>
document.addEventListener("DOMContentLoaded", () => {
  const types = {
    "[!NOTE]": { cls: "callout-note", label: "ℹ️ Nota" },
    "[!TIP]": { cls: "callout-tip", label: "💡 Consell" },
    "[!IMPORTANT]": { cls: "callout-important", label: "❗ Important" },
    "[!WARNING]": { cls: "callout-warning", label: "⚠️ Atenció" }
  };

  document.querySelectorAll("blockquote").forEach(bq => {
    const firstP = bq.querySelector("p");
    if (!firstP) return;
    const text = firstP.innerHTML.trim();

    for (const [tag, info] of Object.entries(types)) {
      if (text.startsWith(tag)) {
        bq.className = info.cls;
        bq.style.color = "inherit";
        firstP.innerHTML = `<span class="callout-title">${info.label}</span>` + text.slice(tag.length).replace(/^<br\s*\/?>/i, "");
        break;
      }
    }
  });
});
</script>

<!-- PORTADA -->

<div class="portada">
  <h1>Activitat 1 – RA8. Instal·lacions desateses i personalitzades.</h1>
  <h3>Implantació de Sistemes Operatius (0369)</h3>

  <div class="dades">
    <p><strong>Cicle Formatiu:</strong> Administració de Sistemes Informàtics en Xarxa, perfil professional Ciberseguretat (ASIX)</p>
    <p><strong>Alumne:</strong> Alex Morcillo Quiñones</p>
    <p><strong>Data:</strong> Novembre 2026</p>
  </div>
</div>

<div style="page-break-after: always;"></div>

<!-- Index -->

<div class="index-personalitzat">

- [Objectius i Requeriments](#objectius-i-requeriments)
  - [**Objectius:**](#objectius)
  - [**Requeriments:**](#requeriments)
- [1. Preparació de la ISO i instal·lació de NTLite](#1-preparació-de-la-iso-i-installació-de-ntlite)
- [2. Carregar la carpeta i convertir la imatge](#2-carregar-la-carpeta-i-convertir-la-imatge)
- [3. Personalització de la imatge](#3-personalització-de-la-imatge)
  - [**Components:**](#components)
  - [**Característiques:**](#característiques)
  - [**Serveis:**](#serveis)
  - [**Equip Local:**](#equip-local)
  - [**Usuari:**](#usuari)
  - [**Actualitzacions:**](#actualitzacions)
  - [**Desatesa (Unattended):**](#desatesa-unattended)
- [4. Crear la nova ISO](#4-crear-la-nova-iso)
- [5. Creació de la màquina virtual i comprovacions](#5-creació-de-la-màquina-virtual-i-comprovacions)
  - [**Conclusions**](#conclusions)

</div>

<div style="page-break-after: always;"></div>

<!-- Aquí comença l'activitat -->

## Objectius i Requeriments

### **Objectius:**
L’objectiu principal d’aquesta pràctica és estudiar tot allò que està relacionat amb les instal·lacions desateses i personalitzades de diferents sistemes operatius utilitzant NTLite per deixar la ISO de Windows 11 ja configurada abans d'instal·lar-la.

### **Requeriments:**
- VirtualBox
- MV Windows 11 (per treballar amb NTLite)
- ISO de Windows 11

---

## 1. Preparació de la ISO i instal·lació de NTLite

**Passem les nostres ISO de la Maquina Host a la Maquina Virtual.**

Primer ens assegurem de tenir la ISO de Windows 11 a la nostra màquina virtual de treball, ja que NTLite necessita treballar sobre una ISO existent.

<img src="assets/image.png" width="720"/>

Un cop tenim els fitxers extrets, descarreguem l'instal·lador de [NTLite](http://downloads.ntlite.com/files/NTLite_setup_x64.exe) des de la web oficial.

<img src="assets/image-1.png" width="720"/>

Executem l'instal·lador, acceptem l'acord de llicència i deixem la ruta i opcions per defecte fins que acabi la instal·lació.

<img src="assets/image-2.png" width="720"/>

<img src="assets/image-3.png" width="720"/>

<img src="assets/image-4.png" width="720"/>

Quan obrim NTLite per primera vegada ens demana la llicència. Tanquem aquesta finestra, i ja entrem a la pantalla principal utilitzant la versió **Free (Gratuïta)**.

<img src="assets/image-5.png" width="720"/>

<img src="assets/image-6.png" width="720"/>

---

## 2. Carregar la carpeta i convertir la imatge

**Obrim NTLite i afegim una nova carpeta que serà la que acabem d’extreure.**

Anem a **Afegir → Directori d'imatge** i seleccionem la carpeta on hem extret la ISO de Windows 11.

<img src="assets/image-7.png" width="720"/>

Un cop carregada, ens apareixen totes les edicions que porta la ISO de Windows 11 (Home, Education, Pro, etc).

<img src="assets/image-8.png" width="720"/>

**Farem doble clic sobre l’edició de Windows que volem crear i esperem una bona estona mentre es carrega.**

Fem doble clic sobre **Windows 11 Home**. Com que la imatge original ve comprimida en format `.iso`, NTLite ens avisa que l'ha de convertir a `.wim` per poder editar-la. Li diem que sí.

<img src="assets/image-9.png" width="720"/>

<img src="assets/image-10.png" width="720"/>

Aquest procés de conversió a WIM triga una bona estona perquè ha de descomprimir tota la imatge del sistema i muntar-la. Quan acaba, ens surt el punt verd al costat de l'edició indicant que ja la podem modificar.

<img src="assets/image-11.png" width="720"/>

---

## 3. Personalització de la imatge

### **Components:**
- *Només instal·larem l'idioma Español i/o Català*
- *Desactivarem el suport de Windows 11 per a Tablet PC*

Al intentar modificar l'instalació, ho primer que ens trobem es un menú que esns demana triar el nivellj de protecció que rebrem a l'hora de modificar la ISO, jo he triat el **Default +**, ens dona més permisos a l'hora d'editar peró segueix oferint protecció per no desactivar components crítics.

<img src="assets/image-12.png" width="720"/>

Anem a l'apartat **Components** del menú esquerre. A la secció d'idiomes desmarquem tots els paquets que no ens interessen i deixem únicament **Espanyol** i **Català**. Després busquem l'opció de **Tablet PC** i també la desactivem.

<img src="assets/image-13.png" width="720"/>

---

### **Característiques:**
- *No instal·larem el REPRODUCTOR DE WINDOWS MEDIA*
- *No instal·larem WINDOWS POWERSHELL*

Passem a **Característiques** (*Features*). Aquí desmarquem el **Reproductor de Windows Media** (*Windows Media Player*) perquè no vingui instal·lat per defecte.

<img src="assets/image-14.png" width="720"/>

<img src="assets/image-51.png" width="720"/>

A continuació busquem **Windows PowerShell** i desactivem tant la característica principal com els components associats que ens deixa tocar la versió gratuïta.

<img src="assets/image-15.png" width="720"/>

<img src="assets/image-16.png" width="720"/>

<img src="assets/image-17.png" width="720"/>

---

### **Serveis:**
- *Desactivarem el Servei de Telefonia*
- *Deixarem automàtic els serveis d’escriptori remot*

A l'apartat de **Serveis**, busquem el **Servei de Telefonia** (*Telephony*) i li canviem l'estat a **Deshabilitat**. Després busquem els **Serveis d'escriptori remot** (*Remote Desktop Services*) i els posem en mode d'inici **Automàtic**.

<img src="assets/image-18.png" width="720"/>

<img src="assets/image-19.png" width="720"/>

---

<div style="page-break-after: always;"></div>

### **Equip Local:**
- *Desactivem WINDOWS DEFENDER*
- *Buscarem ACTUALITZACIONS MANUALMENT (Windows Update)*
- *Els usuaris no podran iniciar sessió amb comptes MICROSOFT*
- *Desactivem ONEDRIVE de Microsoft*

Entrem a **Configuració** (*Settings*). El primer que intentem desactivar és **Windows Defender**.

<img src="assets/image-21.png" width="720"/>

> [!NOTE]
> Amb Windows Defender m'he trobat el problema que el *Tamper Protection* bloqueja els canvis si no el desactives abans o si no tens la llicència de pagament de NTLite. A les següents captures es veu com vaig haver de desactivar la protecció en temps real per poder-ho gestionar i revisar les dependències del servei a NTLite.

<img src="assets/image-23.png" width="720"/>

<img src="assets/image-24.png" width="720"/>

<img src="assets/image-25.png" width="720"/>

<img src="assets/image-26.png" width="720"/>

<img src="assets/image-27.png" width="720"/>

Després configurem **Windows Update** perquè busqui les actualitzacions de forma **manual** en lloc de baixar-les automàticament.

<img src="assets/image-28.png" width="720"/>

<img src="assets/image-29.png" width="720"/>

> [!WARNING]
> Algunes opcions avançades de NTLite surten bloquejades perquè són de pagament (com es veu a l'avís de llicència), així que apliquem les opcions que ens deixa tocar l'edició gratuïta.

<img src="assets/image-30.png" width="720"/>

<img src="assets/image-31.png" width="720"/>

Tot seguit, a la mateixa secció de configuració, bloquegem l'inici de sessió amb **comptes de Microsoft** i desactivem **OneDrive**.

<img src="assets/image-33.png" width="720"/>

<img src="assets/image-34.png" width="720"/>

---

### **Usuari:**
- *Quan l’usuari obri sessió apareixeran per defecte a l’escriptori les icones de: MI EQUIPO - PANEL DE CONTROL - XARXA. La paperera de reciclatge no ha d’aparèixer.*
- *Desactivem CORTANA*

A l'apartat de configuració d'**Usuari**, activem les icones d'**El meu equip**, **Tauler de control** i **Xarxa**, i ocultem la **Paperera de reciclatge**.

<img src="assets/image-36.png" width="720"/>

Pel que fa a **Cortana**, com estem fent servir una ISO de Windows 11, Cortana ja no hi és perquè Microsoft la va substituir per **Copilot**. Així que el més proper que podem fer és desactivar **Windows Copilot** a les polítiques.

<img src="assets/image-37.png" width="720"/>

<img src="assets/image-38.png" width="720"/>

---

<div style="page-break-after: always;"></div>

### **Actualitzacions:**
- *Afegiu un paquet d’idioma per a Windows*

Anem a l'apartat **Actualitzacions** (*Updates*) i hi afegim el paquet d'idioma corresponent perquè s'integri a la imatge.

<img src="assets/image-39.png" width="720"/>

---

### **Desatesa (Unattended):**
- *Omple totes les opcions necessàries per a que quan s’instal·li Windows sigui de forma desatesa sense demanar dades.*
- *Afegeix un compte d’usuari local.*

Anem a la pestanya **Desatesa** (*Unattended*) i l'habilitem. Ens surt un avís informant-nos de com s'aplicaran aquestes respostes automàtiques durant la instal·lació.

<img src="assets/image-40.png" width="720"/>

<img src="assets/image-41.png" width="720"/>

Omplim tots els camps perquè no ens demani res: acceptació de l'EULA, omissió de les pantalles de benvinguda (*Skip OOBE*), configuració regional i teclat. Després fem clic a **Afegir usuari local**, li posem nom, contrasenya i l'afegim al grup d'administradors.

<img src="assets/image-42.png" width="720"/>

<img src="assets/image-43.png" width="720"/>

<img src="assets/image-44.png" width="720"/>

---

## 4. Crear la nova ISO

Un cop ho tenim tot configurat, anem a l'apartat **Aplicar** (*Apply*). Marquem la casella **Crear ISO**, escollim on volem guardar el fitxer `.iso` nou i li posem un nom i etiqueta.

<img src="assets/image-45.png" width="720"/>

<img src="assets/image-46.png" width="720"/>

Fem clic a **Processar** perquè NTLite apliqui tots els canvis dins de l'arxiu `install.wim` i empaqueti la nova ISO. Durant el procés ens aniran sortint diversos quadres de confirmació per desmuntar la imatge i crear l'arxiu final; els acceptem tots fins que ens surti el missatge de procés completat.

<img src="assets/image-47.png" width="720"/>

<img src="assets/image-48.png" width="720"/>

<img src="assets/image-49.png" width="720"/>

<img src="assets/image-50.png" width="720"/>

<img src="assets/image-52.png" width="720"/>

<img src="assets/image-53.png" width="720"/>

---

## 5. Creació de la màquina virtual i comprovacions

**Per últim crearem una nova màquina virtual amb la ISO que acabem de generar i comprovarem les característiques implementades al configurar la ISO.**

Obrim VirtualBox, fem clic a **Nova** i seleccionem la ISO personalitzada que ens acaba de generar NTLite.

<img src="assets/image-55.png" width="720"/>

> [!IMPORTANT]
> A VirtualBox hem de desmarcar obligatòriament la casella **instal·lació desatesa** (*Proceed with Unattended Installation*). Si no ho fem, VirtualBox intenta fer servir el seu propi script desatès i entra en conflicte amb el fitxer que hem configurat a NTLite.

<img src="assets/image-56.png" width="720"/>

Arrenquem la màquina virtual. Podem veure que només tenim Castellà *i l'Anglès que no podiem desactivar sense lliçencia*, ens demana triar l'idioma i el disc on instal·lar el sistema.

<img src="assets/image-57.png" width="720"/>

<img src="assets/image-58.png" width="720"/>

<img src="assets/image-59.png" width="720"/>

<img src="assets/image-60.png" width="720"/>

<img src="assets/image-61.png" width="720"/>

A partir d'aquí la instal·lació tira sola de manera desatesa: copia els fitxers, reinicia la màquina i configura el perfil sense demanar-nos compte de Microsoft ni cap dada addicional.

<img src="assets/image-62.png" width="720"/>

<img src="assets/image-63.png" width="720"/>

<img src="assets/image-64.png" width="720"/>

<img src="assets/image-65.png" width="720"/>

<img src="assets/image-66.png" width="720"/>

<img src="assets/image-67.png" width="720"/>

Un cop acaba, inicia sessió directament amb el nostre usuari local i prepara l'escriptori.

<img src="assets/image-68.png" width="720"/>

<img src="assets/image-69.png" width="720"/>

<div style="page-break-after: always;"></div>

Finalment comprovem que tot el que hem configurat s'ha aplicat: a l'escriptori ens surten les icones d'**Aquest equip**, **Xarxa** i **Tauler de control**, no hi ha la **Paperera de reciclatge** i **Windows Defender** està desactivat.

<img src="assets/image-70.png" width="720"/>

<img src="assets/image-71.png" width="720"/>

---

### **Conclusions**

Aquesta pràctica m'ha servit per veure com es prepara una imatge personalitzada de Windows perquè s'instal·li tota sola sense haver d'estar pendent de l'assistent ni de treure programari, brossa després. El que més guerra m'ha donat han estat les limitacions de la versió gratuïta de NTLite per desactivar algunes opcions de Windows Defender. Alguns companys van tindre problemes d'espai a l'hora de generar la nova ISO desatesa, però per sort jo no m'he trobat amb problemes durant aquest procés, m'ocupa poc més de 7 GB l'ISO desatesa.

<div class="nota">

*Ús de la IA (Gemini): En aquesta activitat he utilitzat la IA per corregir errors ortogràfics i estructurar el document Markdown, juntament amb el corrector de Softcatalà.*

</div>