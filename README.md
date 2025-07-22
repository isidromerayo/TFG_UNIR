# TFG_UNIR

### Universidad Internacional de La Rioja

### Escuela Superior de Ingeniería y Tecnología 

#### Grado en Ingeniería Informática

## Frameworks frontend JavaScript: Análisis y estudio práctico

### Backend

Es necesaria una versión de Java 17, para utilizar Spring Boot 3.0.x

```
cd backend
./mvnw clean install
```

#### BBDD: MariaDB para producción

```
$ mariadb --version
mariadb  Ver 15.1 Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64) using readline 5.2
```

##### Crear base de datos y usuario

```
MariaDB [(none)]> create database tfg_unir; -- create NEW database
MariaDB [(none)]> create user 'user_tfg'@'%' identified by 'tfg_un1r_PWD'; -- create user
MariaDB [(none)]> grant all on tfg_unir.* to 'user_tfg'@'%'; -- give all privileges to the user
```

##### Carga inicial de datos

```
mariadb -u user_tfg -ptfg_un1r_PWD tfg_unir < recursos/db/dump.mariadb.sql 
```

Backup con mysql de datos

```
mysqldump -u user_tfg -ptfg_un1r_PWD tfg_unir > recursos/db/dump.mariadb.sql 
```

#### Docker MariaDB

Carga inicial para utilizar por el backend con Spring Boot con datos de pruebas del directorio recursos/db

`docker run --name mariadb-tfg -p 3306:3306 -d isidromerayo/mariadb-tfg`

Para publicar en docker hub `docker push isidromerayo/mariadb-tfg:X.Y.Z`

#### BBDD: H2 para test


#### Lanzar aplicación con Spring Boot 3

Es necesario disponer de BBDD

Lanzar aplicación desde consola

```
cd backend
./mvnw spring-boot:run
```

Visualizar API expuesta

http://localhost:8080/api


Swagger

http://localhost:8080/swagger-ui.html

#### Docker Spring Boot 

Construir imagen de aplicación con el jar generado del backend (con el `spring.datasource.url=jdbc:mariadb://app_db:3306/tfg_unir` en el application.properties) hay que ejecutar un maven para generar


```
cd backend
./mvnw clean install
docker build -t isidromerayo/spring-backend-tfg:VERSION-X.Y.Z .
```

https://spring.io/guides/topicals/spring-boot-docker/
https://javatodev.com/docker-compose-for-spring-boot-with-mariadb/

#### docker compose

Con docker compose se montará un contendor con MariaDB (datos precargados) y otro con la aplicación de Spring Boot 3 con el API 

Nota: application.properties debe apuntar al alias de docker 'app_db' y no a localhost en `spring.datasource.url=jdbc:mariadb://app_db:3306/tfg_unir`


```
cd backend
docker compose up
```

MariaDB correra en el puerto por defecto *3306* y Spring Boot 3 en el *8080*, así no tendremos montado lo necesario para tener el backend y probar la aplicación con los diferentes frameworks.

Con `docker compose up -d` corre en segundo plano y liberamos la terminal

```
[+] Running 2/2
 ✔ Container backend-maria_db-1     Started     0.4s 
 ✔ Container backend-api_service-1  Started     0.6s 

```

Para detener las instancias de los contenedores `docker compose stop`.

```
[+] Stopping 2/2
 ✔ Container backend-api_service-1  Stopped     0.3s 
 ✔ Container backend-maria_db-1     Stopped     0.5s 
```

##### Publicar imagen en docker

Deberemos estar logeados en nuestra cuenta de docker

`docker push isidromerayo/spring-backend-tfg:X.Y.Z`

### Frontend

Estudiar:

* Angular
* React
* Vue.js


#### Versiones

Windows 

```
>npm version
{
  npm: '9.5.1',
  node: '18.16.0',
  acorn: '8.8.2',
  ada: '1.0.4',
  ares: '1.19.0',
  brotli: '1.0.9',
  cldr: '42.0',
  icu: '72.1',
  llhttp: '6.0.10',
  modules: '108',
  napi: '8',
  nghttp2: '1.52.0',
  nghttp3: '0.7.0',
  ngtcp2: '0.8.1',
  openssl: '3.0.8+quic',
  simdutf: '3.2.2',
  tz: '2022g',
  undici: '5.21.0',
  unicode: '15.0',
  uv: '1.44.2',
  uvwasi: '0.0.15',
  v8: '10.2.154.26-node.26',
  zlib: '1.2.13'
}
```

#### Usuarios de prueba

*Activos*

Usuario: __c@example.com__
Contraseña: __1234__

Usuario: __ines@localhost__
Contraseña: __1234__


*Pendientes*

Usuario: __maria@localhost__
Contraseña: __1234__


#### Angular

Versiones:

```
Angular CLI: 20.1.1
Node: 22.17.1
Package Manager: npm 10.9.2
OS: linux x64

Angular: 20.1.1
... animations, cli, common, compiler, compiler-cli, core, forms
... platform-browser, platform-browser-dynamic, router

Package                         Version
---------------------------------------------------------
@angular-devkit/architect       0.2001.1
@angular-devkit/build-angular   20.1.1
@angular-devkit/core            20.1.1
@angular-devkit/schematics      20.1.1
@schematics/angular             20.1.1
rxjs                            7.8.2
typescript                      5.8.3
zone.js                         0.15.1

```

##### Instalar y ejecutar

*Desarrollo*

```
cd frontend-angular
npm install
ng serve
```

http://localhost:4200

*Producción*

```
cd frontend-angular
npm install
ng build
```

##### Testing

*Unitarios e integración*

Jasmine y Karma

Por defecto `ng test` lanzar en el navegador el test runner 

Sin lanzar navegador `npm run test-headless`

*End to end*

cypress

Por defecto `ng e2e` 

#### React (+NEXT.js)


```
$ npx create-next-app frontend-react

Need to install the following packages:
  create-next-app@13.4.10
Ok to proceed? (y) Y
✔ Would you like to use TypeScript? … No / Yes
✔ Would you like to use ESLint? … No / Yes
✔ Would you like to use Tailwind CSS? … No / Yes
✔ Would you like to use `src/` directory? … No / Yes
✔ Would you like to use App Router? (recommended) … No / Yes
✔ Would you like to customize the default import alias? … No / Yes
```

##### Instalar y ejecutar

*Desarrollo*

```
cd frontend-react
npm install
npm run dev
```

http://localhost:3000


*Producción*

Arranca un servidor web ligero basado en Node.js server

```
cd frontend-react
npm install
npm run build
npm run start
```

http://localhost:3000

##### Testing

```
npm run test
```

#### Vue.js

Para installar y ejecutar la última versión (16/07/2023), debemos tener una versión de node: '>=v16.20.0'

```
$ npm init vue@latest
Need to install the following packages:
  create-vue@3.7.1
Ok to proceed? (y) y
npm WARN EBADENGINE Unsupported engine {
npm WARN EBADENGINE   package: 'create-vue@3.7.1',
npm WARN EBADENGINE   required: { node: '>=v16.20.0' },
npm WARN EBADENGINE   current: { node: 'v16.17.1', npm: '8.15.0' }
npm WARN EBADENGINE }

Vue.js - The Progressive JavaScript Framework

✔ Project name: … frontend-vue
✔ Add TypeScript? … No / Yes
✔ Add JSX Support? … No / Yes
✔ Add Vue Router for Single Page Application development? … No / Yes
✔ Add Pinia for state management? … No / Yes
✔ Add Vitest for Unit Testing? … No / Yes
✔ Add an End-to-End Testing Solution? › Cypress
✔ Add ESLint for code quality? … No / Yes
✔ Add Prettier for code formatting? … No / Yes
```

##### Instalar y ejecutar

*Desarrollo*

```
cd frontend-vue
npm install
npm run format
npm run dev
```

http://localhost:5173/

*Producción*

```
cd frontend-vue
npm install
npm run build
npm run preview
```

http://localhost:4173

##### Testing

 `npm run test:unit`

#### Librerías de terceros

[sweetalert2](https://sweetalert2.github.io/) - A beautiful, responsive, customizable, accessible (WAI-ARIA) replacement for JavaScript's popup boxes

[axios](https://axios-http.com/) - Axios is a simple promise based HTTP client for the browser and node.js. Axios provides a simple to use library in a small package with a very extensible interface.

[Yup](https://github.com/jquense/yup) - Yup is a schema builder for runtime value parsing and validation. Define a schema, transform a value to match, assert the shape of an existing value, or both. Yup schema are extremely expressive and allow modeling complex, interdependent validations, or value transformation.

[Zustand](https://docs.pmnd.rs/zustand/getting-started/introduction?ref=hackernoon.com) - A small, fast, and scalable bearbones state management solution. Zustand has a comfy API based on hooks. It isn't boilerplatey or opinionated, but has enough convention to be explicit and flux-like.

[React Hook Form](https://www.react-hook-form.com/) - Performant, flexible and extensible forms with easy-to-use validation.

#### Status

Github Actions

[![Java CI with Maven](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg)](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml)

[![Java CI with Maven](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg?branch=develop)](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml)

Circle CI

[![CircleCI develop](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/develop.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/develop)

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/main)

SonarQube/SonarCloud

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=isidromerayo_TFG_UNIR)](https://sonarcloud.io/summary/new_code?id=isidromerayo_TFG_UNIR)

### Referencias

#### Backend

https://vladmihalcea.com/the-best-way-to-use-the-manytomany-annotation-with-jpa-and-hibernate/
https://cloudinfrastructureservices.co.uk/how-to-install-mariadb-on-ubuntu-20-04/
https://docs.spring.io/spring-data/jpa/docs/3.1.x/reference/html/https://docs.spring.io/spring-data/jpa/docs/3.1.x/reference/html

#### Frontend

##### Nextjs

Nextjs testing: https://nextjs.org/docs/pages/building-your-application/optimizing/testing

##### Vue3

Testing https://vuejs.org/guide/scaling-up/testing.html
Navigation guards:  https://v3.router.vuejs.org/guide/advanced/navigation-guards.html#global-before-guards

