## Cómo crear una nueva rama

```bash
git checkout -b "nombre de la rama"
```

- Se suele utilizar
	- *features/description* Ej: *features/new_navbar*
	- *ticket de jira* Ej: *TECH-13*


Si la branch fue creada localmente, es necesario enviarlo al repositorio en la nube

```bash
git push origin "nombre de la rama"
```