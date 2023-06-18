# TFG_UNIR

Universidad Internacional de La Rioja
Escuela Superior de Ingeniería y Tecnología 
Grado en Ingeniería Informática

## Frameworks frontend JavaScript: Análisis y estudio práctico

### Backend

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


### Referencias

#### Status

Github Actions

![branch main](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg)

![branch main](https://github.com/isidromerayo/TFG_UNIR/actions/workflows/maven.yml/badge.svg?branch=develop)

Circle CI
[![CircleCI - develop](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/develop.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/develop)

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/isidromerayo/TFG_UNIR/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/isidromerayo/TFG_UNIR/tree/main)

#### Backend

https://vladmihalcea.com/the-best-way-to-use-the-manytomany-annotation-with-jpa-and-hibernate/

#### Frontend

