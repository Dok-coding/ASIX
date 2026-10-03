# Implantacion SO
---
22/09
---
### Fundamentos de SO
1. Conceptos Basicos

    Proceso es un programa que ha iniciado su ejecución
    El SO gestiona ejecuciones de procesos en mono o multi programacion
    Hay 2 tipos de procesos 
    Interactivo
    Por lotes: es una cola donde esoerab su turno el so 

    En la **monoprogramacion** se ubica en la memoria principal y no se inicia hasta que finaliza el programa en ejecución, siempre que hay una operación de e/s se hace una llamada al so, al acabar esa operacion se genera una interrupciónn que llama al so de nuevo, la memoria casi siempre queda cupada, desaprovechando memoria, tambien se desaprovecha procesador y perifericos ya que se usan uno a uno
        
    En la **multiprogramacion** clasica, se ejecuta un proceso cuando se bloquea otro proceso, en la mas evolicuonada el so puede interrumpir un proceso 

    Las diferencias principales son, el no tener que esperar a procesos, aprovechan los tiempos muertos del procesador y perifericos, y el espacio no ocupado en la memoria principal, 

    Un proceso nonato es un programa en espera de ejecutarse, un preparado no esta bloqueado y espera ejecucion, el activo es el que esta en funcionamiento, uno bloqueado esta en espera de su turno de nuevo y el concluido es aquel proceso que ya se ha completado

    Linux introduce los threads, que es un proceso capaz de escomponerse en diferentes tareas

    Intercambio de pemoria principal/disco, en un sistema con tiempo compartido 

2. Gestión del procesador

3. Gestión de la memoria

---
23/09
---
### [Video Referencia](https://www.youtube.com/watch?v=V4--MPYajUk)

## Medida de prestaciones 

- Productividad o rendimiento
- Tasa utilización del procesador
- Tiempo procesamiento de cpu
- Tiempo entrada y salida
- Tiempo de espera

## Sistemas Multiprocesamiento

- Asimetrico
- Simetrico

### Planificadores
- Largo plazo
- Mediano plazo
- Corto plazo

## Estrategias Asignación

- No apropiativa 
    - SO No puede interrumpir
- Apropiativa  
    - SO va interrumpiendo

***Video hasta Algoritmos basicos de planificación***

