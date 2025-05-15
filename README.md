# Dominic Toretto

Vamos a trabajar con una simulación inspirada en el personaje Dominic Toretto de la saga *Rápidos y Furiosos*.  
Tu objetivo será programar la lógica de Dominic, que pueda preparar sus autos para las carreras de la temporada.

---

## Preparando las carreras

Dominic cuenta con muchos autos. Hace pruebas de velocidad y busca los mejores para las carreras. Tiene un taller donde pone en condiciones los autos que tienen problemas.  

Las acciones que se realizan son:

- Dominic compra (o consigue) autos, que pasan a ser suyos.  
- Encontrar cuáles de sus autos no están en condiciones para correr y mandarlos a su taller.  
- Cuando se trabaja en el taller, se reparan todos los autos que haya allí.  
- Dominic hace pruebas de velocidad en todos sus autos, lo que eventualmente podría afectar la disponibilidad de los autos para la próxima carrera.  
- Al final de la temporada vende todos sus vehículos.  

En cualquier momento se quiere averiguar:

- El promedio de velocidades máximas de todos sus autos, estén en condiciones o no.  
- El auto más rápido que tiene, entre los que están en condiciones de correr.  
- Si la velocidad del auto más rápido es más del doble que el promedio de velocidades máximas de todos los autos.

---

## Los autos

### La Ferrari

- Tiene un motor que inicialmente está funcionando en un **87%** (puede oscilar entre 0 y 100%).  
- Está en condiciones para correr si el motor está funcionando en al menos un **65%**.  
- Al reparar el motor, queda funcionando al **100%**.  
- Su velocidad máxima es **110 km/s**, más **15 km/s adicionales** si el motor está funcionando por encima del 75%.  
- En una prueba de velocidad, el motor se daña disminuyendo en **30 unidades** su nivel de funcionamiento actual.

---

### La flecha rubí

- Tiene un nivel de combustible inicial de **100 litros**.  
- Inicialmente utiliza **gasolina**, pero puede cambiar su combustible por **nafta** o **nitrógeno líquido**.  
- El color inicial es **azul**.  

#### Condiciones para correr:
- Tiene más de **85 litros de gasolina** o **50 litros de nafta**.  
- En caso de tener **nitrógeno líquido**, alcanza con que no esté totalmente vacío.  
- Además, para poder correr debe estar **pintado de rojo**.

#### Reparación en el taller:
- Se **duplica la cantidad de combustible** que tenga.  
- Se **cambia el color** del auto:
  - Rojo → Azul  
  - Azul → Verde  
  - Verde → Rojo

#### Prueba de velocidad:
- El auto consume **5 litros** del combustible que sea.

#### Velocidad máxima:
- Es el **doble de los litros de combustible** que tenga.  
- Además:
  - Si es **gasolina**, se le agregan **10 km/s**.  
  - Si es **nafta**, se pierde un **10%**.  
  - Si es **nitrógeno líquido**, se **multiplica por 10**.

---

### El intocable

- A veces está en condiciones y otras no; puede variar.  
- La prueba de velocidad lo deja **fuera de condiciones**.  
- Cuando lo reparan, queda nuevamente **en condiciones de correr**.  
- Tiene una **velocidad máxima fija de 45**.

---

### Inventado

- Definir un nuevo auto que pueda ser comprado por Dominic, con el mismo objetivo que los otros autos.  
- Debe tener una **implementación diferente**.  
- **No debe ser tan trivial como el Intocable**, ni tan compleja como la Flecha Rubí.  
- Debe poder ser utilizado en el taller como los otros.

---

## Requerimientos

- Definir los **objetos necesarios** para simular el funcionamiento descripto.  
- Hacer algunos **tests que prueben aspectos importantes** del sistema.
