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
  <h1>Projecte 3. Gestió d’arxius i E/S en un SO
Gestió de fitxers i E/S en Linux</h1>
  <h3>Implantació de Sistemes Operatius (0369)</h3>

  <div class="dades">
    <p><strong>Cicle Formatiu:</strong> Administració de Sistemes Informàtics en Xarxa, perfil professional Ciberseguretat (ASIX)</p>
    <p><strong>Alumne:</strong> Alex Morcillo Quiñones</p>
    <p><strong>Data:</strong> Octubre 2026</p>
  </div>
</div>

<div style="page-break-after: always;"></div>

<div class="index-personalitzat">

- [Activitat 1 – On sóc?](#activitat-1--on-sóc)
- [Activitat 2 – Què hi ha al directori?](#activitat-2--què-hi-ha-al-directori)
- [Activitat 3 – Crear un directori](#activitat-3--crear-un-directori)
- [Activitat 4 – Crear un fitxer](#activitat-4--crear-un-fitxer)
- [Activitat 5 – Afegir informació](#activitat-5--afegir-informació)
- [Activitat 6 – Copiar un fitxer](#activitat-6--copiar-un-fitxer)
- [Activitat 7 – Crear una carpeta i moure un fitxer](#activitat-7--crear-una-carpeta-i-moure-un-fitxer)
- [Activitat 8 – Canviar el nom d'un fitxer](#activitat-8--canviar-el-nom-dun-fitxer)
- [Activitat 9 – Eliminar un fitxer](#activitat-9--eliminar-un-fitxer)
- [Activitat 10 – La jerarquia de directoris](#activitat-10--la-jerarquia-de-directoris)
- [Activitat 11 – Tornem al nostre directori](#activitat-11--tornem-al-nostre-directori)
- [Activitat 12 – Els permisos](#activitat-12--els-permisos)
- [Activitat 13 – Els dispositius](#activitat-13--els-dispositius)
- [Activitat 14 – Què és l'E/S?](#activitat-14--què-és-les)
- [Activitat 15 – Un exemple d'E/S](#activitat-15--un-exemple-des)
- [Activitat 16 – Com gestiona l'ordinador les E/S?](#activitat-16--com-gestiona-lordinador-les-es)
- [Activitat 17 – Repàs de comandes](#activitat-17--repàs-de-comandes)
- [Activitat final – La meva carpeta Linux](#activitat-final--la-meva-carpeta-linux)
- [Conclusions](#conclusions)

</div>

<div style="page-break-after: always;"></div>

<!-- Aquí comença la activitat -->

## **Activitat 1 – On sóc?**

Obre una terminal. Escriu: ```pwd```

#### Què fa aquesta comanda?
- La comanda ```pwd``` ens indica en quin directori estem treballant.
### **Tasca**
#### Executa la comanda.
#### Fes una captura de pantalla. 

![pwd](assets/image.png)

#### Escriu:
- El resultat de ```pwd``` indica que estic al directori: de "/home/alex"

## **Activitat 2 – Què hi ha al directori?**

Executa: ```ls``` Ara executa: ```ls -l```  
La comanda ```ls``` ens permet veure els fitxers i directoris que hi ha en un lloc.  
L'opció ```-l``` mostra informació addicional.

### **Respon**
#### Quina diferència observes entre ```ls``` i ```ls -l```?
- ```ls``` llista els directoris, i ```ls -l``` fa una llista detallada dels directoris amb info extra
### Quants elements apareixen amb ```ls```?
- 11 elements a la meva carpeta de home

Fes una captura de pantalla on es vegin les dues comandes.
![ls i ls -l](assets/image-1.png)

## **Activitat 3 – Crear un directori**

Ara crearàs una carpeta per fer les proves del projecte. Executa: ```mkdir proves_projecte_3```  
La comanda mkdir serveix per crear un directori.  
Comprova que s'ha creat: ```ls```  
Ara entra al directori: ```cd proves_projecte_3```  
I comprova on ets: ```pwd```  

### **Respon:**

#### Què fa ```mkdir```?
- ```mkdir``` crea un directori **M**a**K**e**DIR**ectory
#### Què fa ```cd```?
- ```cd``` canvia de directori a la ruta que li demanis **C**hange**D**irectory

Fes una captura de pantalla del resultat.
![projecte3](assets/image-2.png)

## **Activitat 4 – Crear un fitxer**
Ara crearàs el teu primer fitxer.  
Executa: ```touch document.txt```  
La comanda ```touch``` permet crear un fitxer buit.  
Comprova que existeix: ```ls```  
Ara escriu informació dins del fitxer: ```echo "Aquest és el meu primer fitxer Linux" > document.txt```  
Per veure el contingut: ```cat document.txt```  

### **Respon:**
#### Quin nom té el fitxer?
- document
#### Quin text conté?
- Aquest és el meu primer fitxer Linux
#### Per a què serveix ```cat```?
- ```cat``` s'utilitza per llegir els continguts del fitxer indicat

Fes una captura on es vegi el fitxer i el seu contingut.
![echo document.txt](assets/image-3.png)

## **Activitat 5 – Afegir informació**

Ara afegirem una segona línia al fitxer.  
Executa: ```echo "Estic aprenent a utilitzar Linux" >> document.txt```  
I comprova el resultat: ```cat document.txt```  

### **Observa**
Abans havíem utilitzat: ```>``` Ara hem utilitzat: ```>>```

### **Respon:**

#### Quina diferència observes?
- El >> demana que s'escrigui al final de l'arxiu

![echo >>](assets/image-4.png)

## **Activitat 6 – Copiar un fitxer**
Executa: ```cp document.txt copia.txt```  
La comanda cp serveix per copiar fitxers.  
Comprova-ho: ```ls```  
Ara tens dos fitxers.  
Consulta el contingut de la còpia: ```cat copia.txt```  

### **Respon:**
#### Quins dos fitxers tens ara?
- Tinc el fitxer de document.txt i el de copia.txt
#### Tenen el mateix contingut?
- Sí, tenen exactament el mateix
#### Què fa la comanda ```cp```?
- Demana al sistema que generi una còpia de l'arxiu seleccionat amb el nom que tu tries, en aquest cas copia.txt **C**o**P**y

![cp](assets/image-5.png)

## **Activitat 7 – Crear una carpeta i moure un fitxer**
Crea una carpeta: ```mkdir documents```  
Ara mou copia.txt dins de la carpeta: ```mv copia.txt documents/```  
Comprova què tens: ```ls``` I després: ```ls documents```  

### **Respon:**

#### On es troba ara copia.txt?
- La copia.txt es troba a la carpeta documents
#### Quina funció té ```mv```?
- ```mv``` té la funció de moure i reanomenar arxius i directoris **M**o**V**e
#### Representa l'estructura

```Taula
/proves_projecte_3  
    └── document.txt
    └── documents
        └── copia.txt
```
![mv copia](assets/image-6.png)

## **Activitat 8 – Canviar el nom d'un fitxer**

Ara canvia el nom de document.txt.  
Executa: ```mv document.txt informe.txt```  
Comprova: ```ls```  

### **Respon:**
#### Quin era el nom original?
- documents
#### Quin és el nom actual?
- informe
#### S'ha creat una còpia del fitxer?
- No, al fer ```mv``` sense triar un nou directori el que fem és canviar el nom de l'arxiu, si volem fer una còpia hem de fer cp
#### Què podem utilitzar ```mv``` per fer?
- Podem utilitzar ```mv``` per moure o reanomenar arxius i directoris

![mv name change](assets/image-7.png)

## **Activitat 9 – Eliminar un fitxer**
Ara elimina informe.txt.
Executa: ```rm informe.txt```
I comprova: ```ls``
La comanda rm serveix per eliminar fitxers.

*⚠️ Important:*
*La comanda ```rm``` s'ha d'utilitzar amb molta precaució. Abans d'eliminar alguna cosa, has de comprovar que és realment el fitxer que vols eliminar.*

### **Respon:**

#### Què ha passat amb informe.txt?
- Que l'hem eliminat utilitzant la comanda ```rm``` **R**e**M**ove

![rm informe](assets/image-8.png)

## **Activitat 10 – La jerarquia de directoris**
Ara veurem una part important de Linux.

Executa: ```cd /``` Després: ```pwd```

El resultat hauria de ser: ``/``

Ara: ```ls```

Observa els directoris que apareixen.
Entre d'altres, pots trobar:
>home  
>etc  
>tmp  
>usr  
>var  
>dev  

No cal memoritzar-los tots.
### **Investiga**
Consulta el contingut de: ```ls /home```
I després: ```ls /tmp```

### **Respon:**
#### Què és ```/```?
- ```/``` és el directori base de Linux
#### Què és /home?
- ```/home``` és el directori principal de Linux on s'emmagatzemen els usuaris
#### Quina diferència observes entre /home i /tmp?
- ```/home``` només té el directori de alex i ```/tmp``` té molts més directoris, que són directoris temporals

![ls /](assets/image-9.png)
![ls home i tmp](assets/image-10.png)

## **Activitat 11 – Tornem al nostre directori**
Executa: ```cd ~```
I després: ```pwd```
El símbol ~ representa el directori personal de l'usuari.
### **Respon:**

#### Quina diferència hi ha entre ```cd /``` i ```cd ~```?
- Que ```cd /``` ens porta al directori absolut i ```cd ~``` ens porta al directori principal de l'usuari

![cd / vs cd ~](assets/image-11.png)

## **Activitat 12 – Els permisos**

Torna al directori del projecte: ```cd ~/prova_projecte_3```
Crea un fitxer: ```touch permisos.txt```
Ara executa: ```ls -l permisos.txt```
Al principi de la línia apareixeran unes lletres semblants a: ```-rw-r--r--```
En aquesta activitat només ens fixarem en tres lletres:
**r = lectura**
**w = escriptura**
**x = execució**

### **Respon:**
#### Quina lletra representa la lectura?
- la lectura es representa amb la R de read
#### Quina representa l'escriptura?
- L'escriptura la representem amb la W de write
#### Quina representa l'execució?
- L'execució la representem amb la X de eXecute
#### Quines lletres apareixen als permisos del teu fitxer?
- -rw-r--r--

Fes una captura de:
ls -l permisos.txt
![ls permisos](assets/image-12.png)

## **Activitat 13 – Els dispositius**
Linux també representa els dispositius de l'ordinador dins del sistema de fitxers.
Executa: ```ls /dev```

Apareixeran molts elements.

No cal que els memoritzis.

L'objectiu és entendre que Linux també gestiona els dispositius mitjançant el sistema operatiu.

Si tens disponible la comanda lsusb, executa: ```lsusb```

Aquesta comanda mostra dispositius USB detectats per l'ordinador.

### **Respon:**
#### Quins dispositius USB detecta el teu ordinador?
- Detecta 10 dispositius
#### Per què creus que és necessari que el sistema operatiu gestioni aquests dispositius?
- Per poder identificar que és cada dispositiu i donar-li accés als drivers necessaris pel seu correcte funcionament

![ls dev](assets/image-13.png)
![lsusb](assets/image-14.png)

## **Activitat 14 – Què és l'E/S?**
Les sigles E/S volen dir Entrada/Sortida.

Un ordinador necessita comunicar-se constantment amb dispositius.

Exemples d'entrada
- teclat; 
- ratolí; 
- micròfon; 
- càmera. 

Exemples de sortida
- pantalla; 
- impressora; 
- altaveus. 

Alguns dispositius poden fer les dues coses.

Per exemple, un disc pot rebre informació quan hi guardem un fitxer i proporcionar informació quan el llegim.

### **Exercici:**

#### Completa la taula:
|Dispositiu|Entrada|Sortida|
|:---:|:---:|:---:|
|Teclat|[X]|[ ]|
|Ratolí|[X]|[ ]|
|Pantalla|[ ]|[X]|
|Impressora|[ ]|[X]|
|Micròfon|[X]|[ ]|
|Altaveus|[ ]|[X]|
|Disc|[X]|[X]|

## **Activitat 15 – Un exemple d'E/S**

Pensa què passa quan fas aquesta acció:

Obres un fitxer que està guardat al disc.

### **Completa l'esquema:**

```mermaid
flowchart LR
    A[DISC] --> B[RAM] --> C[SISTEMA OPERATIU] --> D[APLICACIÓ] --> E[PANTALLA]
    
```

#### Explica breument què passa en cada pas.
- El disc li dona informació al sistema operatiu per un bus d'entrada i el SO fa aparèixer a la pantalla el fitxer.

## **Activitat 16 – Com gestiona l'ordinador les E/S?**
El sistema operatiu disposa de diferents mecanismes per gestionar les operacions d'entrada i sortida.

En aquest projecte coneixeràs tres conceptes: 

**E/S programada**

El sistema operatiu controla directament l'operació d'E/S.

**E/S per interrupcions**

El dispositiu avisa el processador quan necessita atenció.

**DMA**

Permet transferir dades entre un dispositiu i la memòria amb poca intervenció directa del processador.

### **Tasca**

#### Fes un petit esquema comparant els tres sistemes.

|E/S PROGRAMADA|E/S PER INTERRUPCIONS|DMA|
|:---:|:---:|:---:|
|La CPU pregunta repetidament si el dispositiu està preparat, el principal inconvenient és que fa un ús ineficient de la CPU|El dispositiu avisa a la CPU quan necessita atenció, el principal inconvenient és la sobrecàrrega de la CPU|El dispositiu transfereix dades amb poca intervenció de la CPU, el principal inconvenient és que hi ha un gran risc de conflictes de bus i la inactivitat de la CPU|

*No cal explicar-los amb molt detall. L'objectiu és saber què són i distingir-los.*

## **Activitat 17 – Repàs de comandes**

### **Completa la taula amb les teves paraules.**

|Comanda|Per a què serveix?|
|:---|:---:|
|**```pwd```**|Et mostra el directori al qual et trobes, print working directory|
|**```ls```**|Fa una llista dels directoris i arxius emmagatzemats al directori on et trobes, list|
|**```cd```**|Et mou al directori que demanis segons la ruta introduïda, change directory|
|**```mkdir```**|Crea un nou directori al directori on li demanis (si no introdueixes directori la fa on et trobes), make directory|
|**```touch```**|Crea arxius nous amb el nom i extensió que li demanis|
|**```cat```**|S'utilitza per llegir els continguts del fitxer indicat|
|**```cp```**|Crea una còpia de l'arxiu o directori que indiquis, copy|
|**```mv```**|Mou o canvia el nom de l'arxiu o directori indicat, move|
|**```rm```**|Elimina el directori o arxiu que li indiquis, remove|
|**```ls -l```**|Fa una llista molt més detallada amb informació extra dels arxius i directoris que estan dins del directori que li indiquis|

*Important: no copiïs les definicions del professor o d'Internet. Escriu-les com les explicaries a un company.*

## **Activitat final – La meva carpeta Linux**

Ara hauràs de demostrar que has après les operacions bàsiques.

### **Crea aquesta estructura:**

```Taula
/projecte_final  
    └── fitxer1.txt
    └── fitxer2.xtx
        └── documents
            └── document1.txt
            └── document2.txt
```
Els fitxers han de contenir text escrit per tu.

Has de ser capaç de fer-ho utilitzant les comandes que has après durant el projecte.

Quan acabis

#### Executa:

```ls``` i ```ls documents```

Fes captures de pantalla que permetin comprovar l'estructura.

![projectefinal](assets/image-15.png)
![echo](assets/image-16.png)

## **Conclusions**

### **Respon amb les teves paraules:**
#### Què és un fitxer?
- És una col·lecció de dades emmagatzemades en una unitat bàsica d'info
#### Què és un directori?
- Un directori és una carpeta, on es poden emmagatzemar diferents directoris i fitxers
#### Quina diferència hi ha entre copiar i moure un fitxer?
- En copiar es deixa el fitxer al directori original i al nou, i al moure es canvia el directori d'un directori a un altre
#### Per a què serveixen els permisos?
- Per poder donar capacitats de lectura/escriptura/execució a l'usuari propietari, al grup del propietari i a tothom
#### Què significa E/S?
- Entrada Sortida
#### Escriu tres comandes que ara saps utilitzar i explica per a què serveixen.
- Comanda 1: ```cd``` per canviar de directoris

- Comanda 2: ```ls -al``` per fer una llista de quins fitxers i arxius es troben, ocults i no ocults al directori

- Comanda 3: ```rm``` per eliminar un arxiu o directori

#### Quina comanda t'ha resultat més fàcil?
- La comanda que més fàcil m'ha resultat és la comanda de ```cd```, ja que és una comanda que estava molt familiaritzat
#### Quina t'ha costat més?
- Realment coneixia totes les comandes ja, però ```rm``` encara és una comanda que costa o fa por, ja que si l'executes de manera incorrecta pots fer un error molt greu

<div class="nota">

*Ús de la IA(Gemini): En aquesta activitat he utilitzat la IA  per corregir errors ortogràfics, i d'estructura del markdown, juntament amb el corrector de [Softcatalà](https://www.softcatala.org/corrector/) per a la conclusió final, li he passat l'arxiu .md (markdown) sense les preguntes i li he demanat que em digui totes les faltes d'ortografia.*

</div>