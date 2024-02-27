# Hola :)

## Comandos para iniciar el repositorio local con Git:

```
git init
git remote add origin https://github.com/DenilsonNM/SISI-2024.git
git branch -M main
git status
git pull origin main
git status 
```
Siempre usa `git status` para saber los cambios del repositorio.

---

- Modelo (Model): Representa los datos y la lógica de negocio. Aquí se maneja la interacción con la base de datos, la validación de datos y las operaciones relacionadas con la información. En resumen, el Modelo es la capa que gestiona los datos subyacentes.

- Vista (View): Es la interfaz de usuario con la que el usuario interactúa. La Vista se encarga de mostrar los datos al usuario y recibir sus acciones (como clics o entradas). No contiene lógica de negocio, solo presenta la información de manera visual.

- Controlador (Controller): Actúa como intermediario entre el Modelo y la Vista. Recibe las acciones del usuario desde la Vista y decide qué operaciones realizar en el Modelo. También actualiza la Vista con los cambios en los datos. En resumen, el Controlador maneja la lógica de la aplicación.