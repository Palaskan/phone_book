# Phone Book App

La aplicación Phone Book es una simple aplicación creada con Ruby on Rails que permite a los usuarios gestionar una lista de contactos con operaciones CRUD (Crear, Leer, Actualizar, Eliminar).

Cada contacto consta de un nombre, apellido y número de teléfono.

## Requisitos previos

- Ruby 3.2 o superior
- Rails 7.0 o superior
- SQLite3

## Configuración

Sigue estos pasos para configurar la aplicación en tu entorno local:

1. Clona este repositorio a tu entorno local.

- `git clone https://github.com/Palaskan/phone_book.git`

2. Navega al directorio de la aplicación.

- `cd phone_book`

3. Instala las dependencias.

- `bundle install`

4. Crea y migra la base de datos.

- `rails db:create`
- `rails db:migrate`

5. Ejecuta el servidor de desarrollo de Rails.

- `rails server` o `rails s`

Una vez que el servidor está en funcionamiento, puedes abrir tu navegador y navegar a `http://localhost:3000` para ver la aplicación en acción.

## Ejecutar pruebas

Esta aplicación viene con un conjunto de pruebas que puedes ejecutar para comprobar su funcionamiento. Para ejecutar las pruebas, usa el siguiente comando:

- `rails test`