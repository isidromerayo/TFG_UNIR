# TFG_UNIR

Universidad Internacional de La Rioja

Escuela Superior de Ingeniería y Tecnología 

Grado en Ingeniería Informática

## Frameworks frontend JavaScript: Análisis y estudio práctico

### Backend

Es necesaria una versión de Java 17, para utilizar Spring Boot 3.0.x

```
cd backend
./mvnw clean install
```

#### BBDD: MariaDB para producción

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


### Frontend

Estudiar:

* Angular
* React
* Vue.js

#### Angular

Versiones:

```
Angular CLI: 16.0.6
Node: 16.20.1
Package Manager: npm 8.19.4

OS: linux x64

Angular: 16.1.1
... animations, common, compiler, compiler-cli, core, forms
... platform-browser, platform-browser-dynamic, router

Package                         Version
---------------------------------------------------------
@angular-devkit/architect       0.1601.0
@angular-devkit/build-angular   16.1.0
@angular-devkit/core            16.1.0
@angular-devkit/schematics      16.0.6
@angular/cli                    16.0.6
@schematics/angular             16.0.6
rxjs                            7.8.1
typescript                      5.0.4
```

##### Instalar y ejecutar

```
cd frontend-angular
npm install
ng serve
```

http://localhost:4200


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


```
cd frontend-react
npm install
npm run dev
```

http://localhost:3000


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

```
cd frontend-vue
npm install
npm run format
npm run dev
```

http://localhost:5173/


#### Status

Github Actions

![branch main](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg)

![branch main](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg?branch=develop)

Circle CI
[![CircleCI - develop](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/develop.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/develop)

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/main)


### Referencias

#### Backend

https://vladmihalcea.com/the-best-way-to-use-the-manytomany-annotation-with-jpa-and-hibernate/
https://cloudinfrastructureservices.co.uk/how-to-install-mariadb-on-ubuntu-20-04/
https://docs.spring.io/spring-data/jpa/docs/3.1.x/reference/html/https://docs.spring.io/spring-data/jpa/docs/3.1.x/reference/html

#### Frontend