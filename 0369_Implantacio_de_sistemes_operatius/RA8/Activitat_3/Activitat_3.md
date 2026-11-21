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
  max-width: 95%;
  object-fit: contain;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
  page-break-inside: avoid;
}

.fila-sbs {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 18px;
  margin: 14px 0;
  page-break-inside: avoid;
}

.fila-sbs img {
  margin: 0;
  flex-shrink: 0;
}

.fila-sbs .text-costat {
  flex: 1;
}

.callout-note, .callout-tip, .callout-important, .callout-warning {
  padding: 10px 14px;
  margin: 14px 0;
  border-left: 4px solid;
  border-radius: 4px;
  background-color: #f8f9fa;
  page-break-inside: avoid;
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
  <h1>Activitat 3 – RA8: Assistència Remota i gestió d’incidències</h1>
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
- [Part 1: Assistència remota](#part-1-assistència-remota)
  - [1. Windows a Windows (Remote Desktop)](#1-windows-a-windows-remote-desktop)
    - [Configuració de l'equip remot (PC al qual ens connectarem)](#configuració-de-lequip-remot-pc-al-qual-ens-connectarem)
    - [Connexió des del PC client (`W11 Remote`)](#connexió-des-del-pc-client-w11-remote)
  - [2. Linux a Linux (Remmina)](#2-linux-a-linux-remmina)
    - [Configuració de l'escriptori remot a Ubuntu](#configuració-de-lescriptori-remot-a-ubuntu)
    - [Connexió des de Fedora amb Remmina](#connexió-des-de-fedora-amb-remmina)
  - [3. Windows a Linux (RustDesk)](#3-windows-a-linux-rustdesk)
    - [Instal·lació a Windows 11](#installació-a-windows-11)
    - [Instal·lació a Ubuntu i connexió remota](#installació-a-ubuntu-i-connexió-remota)
- [Part 2: Gestió d’incidències (OPCIONAL)](#part-2-gestió-dincidències-opcional)
- [Conclusions i Webgrafia](#conclusions-i-webgrafia)
  - [**Conclusions**](#conclusions)
  - [**Webgrafia**](#webgrafia)

</div>

<div style="page-break-after: always;"></div>

<!-- Aquí comença l'activitat -->

## Objectius i Requeriments

### **Objectius:**
L’objectiu principal d’aquesta pràctica és conèixer les diferents eines d’assistència remota i de gestió d’incidències disponibles al mercat.

### **Requeriments:**
- VirtualBox
- 2 màquines virtuals Windows 11 (edició Pro o superior)
- Màquina virtual Ubuntu Desktop (i l'amfitrió Fedora per a les proves Linux a Linux)

---

## Part 1: Assistència remota

### 1. Windows a Windows (Remote Desktop)

*Enunciat: Feu un testeig de les eines d’assistència remota REMOTE DESKTOP de Windows.*

> [!WARNING]
> És necessari **Windows Pro o superior** per poder actuar com a equip remot (*host* de la sessió). Les edicions Home només permeten connectar-se com a client, però no rebre connexions d'Escriptori remot.

<div class="fila-sbs">
  <div class="text-costat">
    <p>Primer de tot preparem dues màquines virtuals amb Windows 11 Pro a VirtualBox per poder fer la prova entre elles (<code>W11 Remote</code> i <code>W11_Base</code>).</p>
    <p>A més, perquè es vegin a la xarxa local sense bloquejos de NAT, a totes dues màquines virtuals configurem l'adaptador de xarxa en mode <strong>Adaptador pont</strong> (<em>Bridged Adapter</em>).</p>
  </div>
  <img src="assets/image.jpg" width="280"/>
</div>

<div class="fila-sbs">
  <img src="assets/image-20.jpg" width="320"/>
  <img src="assets/image-21.jpg" width="360"/>
</div>

#### Configuració de l'equip remot (PC al qual ens connectarem)

En primer lloc configurem el PC que rebrà la connexió remota (`W11_Base`). Obrirem **Configuració** (*Settings*) → **Sistema** → **Escriptori remot** (*Remote Desktop*) i activem l'interruptor.

<img src="assets/image-4.jpg" width="520"/>

<img src="assets/image-5.jpg" width="560"/>

En activar-ho ens demana confirmació. Un cop habilitat, ja ens mostra el port per defecte (`3389`) i el **nom del PC** (`alex`), que necessitarem després per connectar-nos.

<img src="assets/image-6.jpg" width="600"/>

<img src="assets/image-7.jpg" width="480"/>

També podem verificar i gestionar l'accés des de **Sistema → Informació → Configuració avançada del sistema** (pestanya *Accés remot*) i prement sobre **Usuaris d'Escriptori remot** per assegurar-nos que el nostre usuari té permisos d'accés. Si cal afegir-ne algun: *Agregar → Opciones avanzadas → Buscar ahora → seleccionem l'usuari → Aceptar*.

<img src="assets/image-9.jpg" width="620"/>

<img src="assets/image-10.jpg" width="620"/>

<img src="assets/image-11.jpg" width="600"/>

Tot seguit comprovem el **Firewall de Windows Defender amb seguretat avançada** per verificar que les regles d'entrada d'*Escriptori remot* (TCP/UDP) i de sortida d'*Assistència remota* estan habilitades i permeten el trànsit.

<img src="assets/image-12.jpg" width="520"/>

<img src="assets/image-13.jpg" width="620"/>

<img src="assets/image-14.jpg" width="620"/>

<img src="assets/image-15.jpg" width="620"/>

Finalment confirmem el nom exacte de l'equip (`hostname` a la consola `cmd` o bé mirant a *Sistema → Informació*). En aquest cas el nom del PC és `alex` (i el meu usuari local és `alec` perquè vaig tenir un *typo* en crear-lo).

<img src="assets/image-16.jpg" width="480"/>

<img src="assets/image-17.jpg" width="580"/>

#### Connexió des del PC client (`W11 Remote`)

Ara anem a l'altre Windows 11, obrim l'aplicació **Remote Desktop Connection** i despleguem *Show Options* per introduir les dades de connexió.

<img src="assets/image-1.jpg" width="540"/>

<div class="fila-sbs">
  <img src="assets/image-2.jpg" width="330"/>
  <img src="assets/image-3.jpg" width="330"/>
</div>

<div class="fila-sbs">
  <img src="assets/image-18.jpg" width="330"/>
  <div class="text-costat">
    <p>A <strong>Computer</strong> posem el nom de l'equip remot (<code>alex</code>) i a <strong>User name</strong> les credencials de l'usuari amb què iniciem sessió allà. Fem clic a <strong>Connect</strong>.</p>
  </div>
</div>

Ens demanarà la contrasenya de l'usuari remot i ens sortirà l'avís de certificat autofirmat, fem clic a **Yes** per continuar.

<img src="assets/image-19.jpg" width="420"/>

<img src="assets/image-22.jpg" width="720"/>

<div class="fila-sbs">
  <img src="assets/image-23.jpg" width="340"/>
  <div class="text-costat">
    <p>Acceptem l'avís de seguretat del certificat i s'inicia la sessió remota.</p>
  </div>
</div>

Un detall important de l'Escriptori remot natiu de Windows és que **bloqueja la sessió local** a la màquina remota mentre estem connectats (només permet una sessió activa a la vegada per defecte): si tornem a iniciar sessió directament a la finestra de la VM remota, ens tanca la connexió RDP al client.

<img src="assets/image-24.jpg" width="720"/>

<img src="assets/image-25.jpg" width="720"/>

<img src="assets/image-26.jpg" width="720"/>

---

### 2. Linux a Linux (Remmina)

*Enunciat: Instal·la l’eina de gestió remota REMMINA en Ubuntu. Fes una prova de connexió a altre equip ubuntu amb el protocol VNC.*

Per a aquesta prova connectarem el meu equip amfitrió **Fedora** amb la màquina virtual **Ubuntu 26** (que actuarà com a equip remot al qual ens connectarem). Instal·lem `remmina` als dos sistemes mitjançant el gestor de paquets (`sudo dnf install remmina` a Fedora i `sudo apt install remmina` a Ubuntu) i l'executem.

<img src="assets/image-27.jpg" width="620"/>

<img src="assets/image-28.jpg" width="600"/>

<img src="assets/image-29.jpg" width="620"/>

#### Configuració de l'escriptori remot a Ubuntu

A la màquina virtual d'Ubuntu entrem a **Configuració → Sistema → Escritorio remoto**. Activem tant **Compartición de escritorio** com **Control remoto**, i premem la icona del llapis per definir una contrasenya d'accés.

<img src="assets/image-30.jpg" width="560"/>

<img src="assets/image-31.jpg" width="560"/>

<img src="assets/image-32.jpg" width="560"/>

<img src="assets/image-33.jpg" width="560"/>

Si també desbloquegem la pestanya d'*Inicio de sesión remoto*, GNOME Remote Desktop ens avisa que **canvia el port d'escolta del `3389` al `3390`** perquè el servei de sessions remotes té prioritat sobre el port estàndard.

<img src="assets/image-34.jpg" width="560"/>

<img src="assets/image-35.jpg" width="460"/>

> [!IMPORTANT]
> Com que ha canviat el port al `3390`, obrim aquest port al tallafocs d'Ubuntu amb `sudo ufw allow 3390/tcp` per evitar que bloquegi la connexió entrant.

<img src="assets/image-36.jpg" width="560"/>

Igual que a l'apartat anterior, comprovem que la xarxa de la VM estigui en mode **Adaptador pont** i mirem la IP assignada amb `ip a` (`192.168.1.45`).

<img src="assets/image-37.jpg" width="460"/>

<img src="assets/image-40.jpg" width="600"/>

#### Connexió des de Fedora amb Remmina

Obrim **Remmina** a Fedora i fem clic al botó **+** per crear un perfil de connexió nou. Tot i que l'enunciat menciona VNC, avui dia **VNC està antiquat i GNOME a Ubuntu fa servir RDP de forma nativa**, així que triem el protocol **RDP** i li donem un nom.

<img src="assets/image-38.jpg" width="580"/>

<img src="assets/image-39.jpg" width="580"/>

A la següent comparativa es veu d'on surt cada dada que posem a Remmina:
* **Servidor:** la IP d'Ubuntu seguida del port nou (`192.168.1.45:3390`).
* **Nombre de usuario** i **Contraseña:** els que apareixen a l'apartat *Detalles del inicio de sesión* de la configuració d'Escriptori remot d'Ubuntu.

<img src="assets/image-41.jpg" width="680"/>

<img src="assets/image-42.jpg" width="620"/>

Fem clic a **Guardar y conectar**, acceptem el certificat de GNOME prement **Sí** i ja tenim el control total de l'escriptori d'Ubuntu des de Fedora.

<div class="fila-sbs">
  <img src="assets/image-43.jpg" width="420"/>
  <div class="text-costat">
    <p>Acceptem la empremta digital del certificat TLS generat per GNOME Remote Desktop.</p>
  </div>
</div>

<img src="assets/image-44.jpg" width="720"/>

---

### 3. Windows a Linux (RustDesk)

*Enunciat: Teamviewer. Fes proves de connexió a altres equips amb les dues eines.*

Com que el professor va comentar que podíem fer servir una alternativa a TeamViewer, he decidit utilitzar **RustDesk**, ja que és *open source*, gratuït, multiplataforma i ja hi estic familiaritzat.

#### Instal·lació a Windows 11

Accedim a la [web oficial de Rustdesk](rustdesk.com), anem a l'apartat de descàrregues de GitHub i baixem l'instal·lador. A Windows triem `.exe` o `.msi` i per Ubuntu tenim el paquet `.deb` .

<img src="assets/image-45.jpg" width="600"/>

<img src="assets/image-46.jpg" width="600"/>

Executem l'assistent d'instal·lació a Windows, acceptem la llicència, deixem la ruta per defecte (`C:\Program Files\RustDesk\`) i fem clic a **Install**.

<div class="fila-sbs">
  <img src="assets/image-47.jpg" width="340"/>
  <img src="assets/image-48.jpg" width="340"/>
</div>

<div class="fila-sbs">
  <img src="assets/image-49.jpg" width="340"/>
  <img src="assets/image-50.jpg" width="340"/>
</div>

En acabar s'obre automàticament mostrant el nostre **ID** (`131 518 676`) i la contrasenya d'un sol ús (*One-time password*).

<img src="assets/image-51.jpg" width="580"/>

#### Instal·lació a Ubuntu i connexió remota

Ara anem a la màquina virtual d'Ubuntu, fem doble clic sobre el fitxer `rustdesk-1.5.3-x86_64.deb` a la carpeta de descàrregues i l'instal·lem des del Centre d'aplicacions introduint la nostra contrasenya.

<img src="assets/image-52.jpg" width="560"/>

<img src="assets/image-53.jpg" width="560"/>

<img src="assets/image-54.jpg" width="460"/>

Un cop instal·lat, ens apareix la icona de RustDesk a la barra superior. Fem clic sobre seu i premem **Abrir**.

<img src="assets/image-55.jpg" width="580"/>

<img src="assets/image-56.jpg" width="580"/>

Introduïm l'**ID del Windows** (`131 518 676`) al camp *Controlar escritorio remoto* i premem **Conectar**. A la màquina de Windows salta l'avís de connexió entrant on podem acceptar manualment l'accés.

<img src="assets/image-57.jpg" width="680"/>

<img src="assets/image-58.jpg" width="720"/>

> [!TIP]
> Si volem evitar que l'altre equip ens hagi d'acceptar manualment cada vegada, podem introduir directament la contrasenya que apareix al seu *One-time password* (`4zvije`) i marcar la casella **Recordar contraseña**.

<div class="fila-sbs">
  <img src="assets/image-59.jpg" width="420"/>
  <img src="assets/image-60.jpg" width="240"/>
</div>

Ja estem dins de l'escriptori de Windows des d'Ubuntu, amb la barra superior de controls de RustDesk desplegada, i la connexió queda desada automàticament a l'apartat de sessions recents per a futures connexions.

<img src="assets/image-61.jpg" width="720"/>

<img src="assets/image-62.jpg" width="580"/>

---

## Part 2: Gestió d’incidències (OPCIONAL)

1. Feu una instal·lació i unes proves de l’eina de gestió de tickets OSTICKET per Ubuntu. Feu proves de creació i manipulació de tickets creant usuaris de prova.

- Descàrrega oficial: https://osticket.com/download/
- Guia d'instal·lació: https://computingforgeeks.com/how-to-install-osticket-on-ubuntu-18-04-bionic-beaver/

---

## Conclusions i Webgrafia

### **Conclusions**

Aquesta pràctica m'ha servit per comparar diferents maneres de gestionar equips en remot segons el sistema operatiu i l'escenari:
- L'**Escriptori remot natiu de Windows (RDP)** funciona molt bé dins d'una xarxa local sense instal·lar res addicional, però requereix tenir edició Pro o superior i bloqueja la sessió local de l'usuari mentre hi ets connectat.
- Entre sistemes **Linux (Fedora i Ubuntu)**, **Remmina** utilitzant el protocol **RDP** natiu de GNOME ofereix una connexió molt fluida un cop obert el port corresponent al tallafocs (`3390` en aquest cas).
- Per a connexions **multiplataforma (Windows – Linux)** sense haver d'obrir ports al router ni configurar xarxes en pont, **RustDesk** és una opció molt còmoda, ràpida i completament gratuïta al ser *open source*. La meva experiència amb **RustDesk** des de abans de fer l'activitat ja era positiva, però era exclusivament connectant Windows a Windows, ara que veig que funciona igual de bé amb connexions multiplataforma, és possible que sigui una eina que utilitzi encara més.

### **Webgrafia**
- [PDF Moodle escriptori remot](https://moodle.iescarlesvallbona.cat/pluginfile.php/185083/mod_resource/content/17/Configuraci%C3%B3%20del%20escriptori%20remot%20Windows.pdf)
- [How to EASILY Set Up Remote Desktop on Windows 10/11](https://www.youtube.com/watch?v=RHGYx921Q9I)
- [RustDesk – Pàgina oficial i descàrregues](https://rustdesk.com/)
- [Remmina – Documentació oficial](https://remmina.org/)

<div class="nota">

*Ús de la IA (Gemini): En aquesta activitat he utilitzat la IA per corregir errors ortogràfics i estructurar el document Markdown, juntament amb el corrector de [Softcatalà](https://www.softcatala.org/corrector/).*

</div>