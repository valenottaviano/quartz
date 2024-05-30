# Control de versiones con Git

%%
Date:: [[2024-05-30]]
Course:: [[Ingeniería de Software I]]
Source:: [[]]
%%

**1. ¿Qué es Git?**
Git es un sistema de control de versiones distribuido que permite a múltiples desarrolladores trabajar en un proyecto simultáneamente sin interferir en el trabajo de los demás. Fue creado por Linus Torvalds en 2005 para el desarrollo del núcleo de Linux.

**2. Repositorio (Repo)**
Un repositorio es el lugar donde Git almacena los archivos del proyecto y el historial de cambios. Puede ser local (en tu máquina) o remoto (en un servidor).

**3. Clonación (Clone)**
Clonar un repositorio significa crear una copia local del repositorio remoto en tu máquina. Este es el primer paso para comenzar a trabajar con un proyecto existente.

```bash
git clone https://github.com/usuario/proyecto.git
```

**4. Área de Preparación (Staging Area)**
Es un área intermedia donde se almacenan los cambios que se desean confirmar (commit). Los archivos modificados deben ser añadidos a esta área antes de ser confirmados.

```bash
git add archivo.txt
```

**5. Confirmación (Commit)**
Es el proceso de guardar los cambios en el repositorio. Cada commit crea un punto en el historial del proyecto al que se puede volver en cualquier momento.

```bash
git commit -m "Mensaje del commit"
```

**6. Ramas (Branches)**
Una rama es una línea de desarrollo independiente. La rama principal suele llamarse `main` o `master`. Se pueden crear nuevas ramas para trabajar en nuevas características o corregir errores sin afectar la rama principal.

```bash
git branch nueva-rama
git checkout nueva-rama
```

**7. Fusión (Merge)**
Fusionar es el proceso de combinar cambios de diferentes ramas en una sola. Puede haber conflictos que deben resolverse manualmente.

```bash
git merge otra-rama
```

**8. Pull**
El comando `git pull` se usa para actualizar tu repositorio local con los cambios del repositorio remoto. Es una combinación de `git fetch` (descargar cambios) y `git merge` (fusionar cambios).

```bash
git pull origin main
```

**9. Push**
El comando `git push` se usa para enviar tus commits locales al repositorio remoto, compartiendo tus cambios con otros colaboradores.

```bash
git push origin main
```

**10. Revertir Cambios (Revert)**
El comando `git revert` se usa para deshacer un commit específico. Esto crea un nuevo commit que invierte los cambios del commit seleccionado.

```bash
git revert <commit-id>
```

**11. Rebase**
El comando `git rebase` se usa para mover o combinar una secuencia de commits a una nueva base. Es útil para mantener un historial de commits limpio y lineal.

```bash
git rebase main
```

**12. Deshacer Cambios (Reset)**
El comando `git reset` se usa para deshacer commits locales o mover el HEAD a un commit anterior. Tiene varias opciones como `--soft`, `--mixed` y `--hard` dependiendo del nivel de reversión deseado.

```bash
git reset --hard <commit-id>
```

**13. Etiquetas (Tags)**
Las etiquetas se usan para marcar puntos específicos en el historial, generalmente para indicar versiones de lanzamiento.

```bash
git tag -a v1.0 -m "Versión 1.0"
git push origin v1.0
```

**14. Estado (Status)**
El comando `git status` muestra el estado de los archivos en el repositorio, indicando cambios no confirmados, archivos en el área de preparación, y archivos no rastreados.

```bash
git status
```

**15. Historial (Log)**
El comando `git log` muestra el historial de commits del repositorio. Puede ser personalizado con diversas opciones para mostrar información específica.

```bash
git log
```

**16. Fetch**
El comando `git fetch` descarga los cambios del repositorio remoto, pero no los fusiona con la rama actual.

```bash
git fetch origin
```

