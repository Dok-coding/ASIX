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
  <h1>Activitat 7. Instal·lació i Administració de programari base.</h1>
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
L’objectiu principal d’aquesta pràctica és posar en pràctica conceptes bàsics sobre l’administració d’un sistema operatiu mitjançant el desenvolupament d’una sèrie de tasques de forma individual.

### **Competències professionals, personals i socials**
Avaluar el rendiment dels dispositius maquinari identificant-ne possibilitats de millora segons les necessitats de funcionament.

### **Requeriments:** 
- A partir d’una màquina virtual ja existent amb Ubuntu, crea un clon. Recorda reiniciar l’adreça mac d’aquesta nova màquina per a no tenir conflictes.

## **Apartat A. Comandes bàsiques arxius i carpetes**

#### 1. Crea al teu home, el directori ACTIVITAT7. Dins, crea la següent estructura de directoris, creant els directoris d’un en un.

```Taula
/ACTIVITAT7 
    └── Exercici1
        └── Primer
            └── aplicacions
            └── programacio
            └── maquinari
        └── Segon
            └── bd
            └── fol
            └── sistemes
```
- Per fer aquesta estructura només hem de fer servir dues comandes **`mkdir`** i **`cd`**
    - Primer ens asegurem d'estar al nostre directori **/home/el_teu_usuari** fent `cd`, veurem **usuari@maquina:~$**
    - Començem amb `mkdir ACTIVITAT7` i entrem al directori amb `cd ACTIVITAT7`
    - Fem el seguent directori amb `mkdir Exercici1` i entrem amb `cd Exercici1`
    - Ara que som al directori **~/ACTIVITAT7/Exercici1** aprofitem per crear el directori **Primer** i **Segon**
    - `mkdir Primer` i `mkdir Segon` i entrem a Primer amb `cd Primer`
    - Una vegada al directori podem crear els tres directoris utilitzant `mkdir`
    - Per tornar a **~/ACTIVITAT7/Exercici1** utilitzarem `cd ..` (`cd ..` sempre ens fa retrocedir un directori) alternativament podem fer `cd ~/ACTIVITAT7/Exercici1`
    - Entrem al directori anomenat Segon amb `cd` i una vegada dins creem els tres directoris amb `mkdir`

![mkdir](assets/image.png)

#### 2. Crea a ACTIVITAT7 el directori exercici2 i dins, els directoris amb una sola ordre, segons la següent estructura de directoris.

```Taula
/ACTIVITAT7 
    └── Exercici2
        └── Primer
            └── ofimatica
            └── xarxes
        └── Segon
            └── empresa
            └── administracio
```
- En aquest apartat utilitzarem mkdir d'una manera mes avançada/optimitzada, peró es igual de facil!
    - Amb una unica comanda creem tot `mkdir -p ACTIVITAT7/Exercici2/{Primer/{ofimatica,xarxes},Segon/{empresa,administracio}}`
    - `mkdir` ja sabem que es per crear un directori, `-p` s'utilitza per crear directoris "pare" si es que no existeixen (en aquest cas crea Exercici2) i separem les capes amb `{}`, **Primer** i **Segon** i dintre de cada directori amb un altre `{}` la resta de directoris. Separem tots els noms amb `,`
    - Verifiquem que estigue tot correcte amb `tree ACTIVITAT7`

#### 3. Crea a ACTIVITAT7 el directori Exercici3. Sitúa’t a Exercici2 i crea dins de Exercici3 els directoris Primer i Segon. Sitúa’t al directori /home/usuari/practica2/exercici3/primer i crea els directoris projecte i practiques.

#### 4. Sitúa’t al teu directori home i executa les següents comandes:

`man ls > llistat.txt`

`man cp > copia.txt`

#### 5. Mostra per pantalla el contingut del teu directori de treball o directori home.

#### 6. Fes una còpia de l’arxiu “llistat.txt” a “llistat2.txt”

#### 7. Crea amb una comanda l’arxiu “notes.txt”

#### 8. Mou l’arxiu “notes.txt” al directori primer (de Exercici3)

#### 9. Renombra l’arxiu “notes.txt” com a expedient.txt des del teu directori de treball

#### 10. Esborra el fitxer “llistat.txt” des del teu directori de treball.

#### 11. Esborra el directori primer (de Exercici3), utilizant ruta absoluta

#### 12. Esborra el directorio segon (de Exercici3), des del teu directori de treball, utilizant ruta relativa.

#### 13. Sitúa’t al directori Exercici1 i esborra el directori Exercici3.

#### 14. Sitúa’t al directori primer (de Exercici2) i esborra el directori segon (de Exercici1).

#### 15. Sitúa’t al directori Exercici2 i esborra Exercici1.

#### 16. Esborra el directori ACTIVITAT7.