# Project Karate
Project for test concept of framework test Karate

## Getting Started
These instrucions will get you a copy of the project up and running on your local machine for development and testing purposes.See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Para la ejecución en local:
- Java 8
- Intellij Idea
- Maven

### Instalación de local:
```
$ mvn clean install
```

### Conseguir Key - Postman:
```
 URL : https://web.postman.co/settings/me/api-keys
```

### Running tests in local with threads "X" , tags @X and postman token= "PMAK-XXX"
```
mvn test -Dkarate.env=dev "-Dkarate.options=--tags @regresion" -Dthreads='3' -Dapi_key="PMAK-XXXXX-XXXXX"

```

### To view the reports
In case that load the test in local enviroment the results of the tests are stored in the target/karate-reports folder as karate-summary.html

## Built with
* [Karate](https://github.com/karatelabs/karate) - The framework used for automates apis
* [Java](https://www.java.com/es/) - Used to make the scripts

## Versioning
We use [Github](https://github.com/) - for versioning.For the versions available, see the [tags on this repository](https://github.com/richie07/projectKarate)

## Authors
* **Richard Francisco Pinedo**

## Acknowledgments
* Hat tip to anyone who's code was used
* Inspiration
* etc