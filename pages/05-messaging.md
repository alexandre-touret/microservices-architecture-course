---
layout: section
---

# Messageries asynchrones

--- 

Les architectures microservices offrent leur capacité à décomposer les applications en services indépendants et faiblement couplés. 
La communication entre les services est cruciale pour le fonctionnement harmonieux de l'ensemble du système. 

Deux approches principales existent pour orchestrer cette communication : les messageries synchrones (API) et asynchrones. 

Ces dernières améliorent la résilience, la scalabilité et la flexibilité des architectures microservices.

--- 
layout: two-cols
--- 

## Qu'est-ce qu'une messagerie asynchrone ?

### Transaction synchrone 


```plantuml
@startuml
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())

System_Boundary(donutssystem, "Donuts At Home") {


    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API","","Java, Spring Boot, Docker")
            ContainerDb(shoppingDb,"Shopping DB","","PostgreSQL")
        }
       
    }
}

System_Ext(SIPS,Payment System," online secure credit card payment ")



Rel(shoppingService,SIPS,"HTTPS")
'Rel(shoppingService,delivery,"HTTPS")




Rel(shoppingService,shoppingDb,"JDBC")
@enduml
```

::right::


### Transaction asynchrone 


```plantuml
@startuml monolith
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())

System_Boundary(donutssystem, "Donuts At Home") {


    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API","","Java, Spring Boot, Docker")
            ContainerDb(shoppingDb,"Shopping DB","","PostgreSQL")
        }
        System_Boundary(eventProcessing,"Event Processing Service",$tags="newboundary"){
            ContainerQueue(eventManager,"Event Processing","","Kafka")
            Container("paymentconnect","Payment Connector","","Kafka Connect")
        }
    }
}

System_Ext(SIPS,Payment System," online secure credit card payment ")



Rel(shoppingService,shoppingDb,"JDBC")

'Rel(shoppingService,billingService,"HTTPS")
'Rel(shoppingService,SIPS,"HTTPS")
'Rel(shoppingService,delivery,"HTTPS")

Rel(shoppingService,eventManager,"Kafka")

Rel(paymentconnect,SIPS,"HTTPS")
Rel(paymentconnect,eventManager,"Kafka")
@enduml

```
---
layout: two-cols
---

## Pourquoi les utiliser ?

* Les ressources sont libérées plus rapidement
* Résilience accrue
* Scalabilité
* Faible Couplage

## Composants

* Bus de message/Queue
* Producteurs
* Consommateurs

## Exemples

Kakfka, Artemis, RabbitMQ

::right::

![illustration](/public/asynchronous_illustration.png)

---
layout: two-cols
---


## Modèles de communication
### Point-à-Point

```plantuml
@startuml
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())

System_Boundary(donutssystem, "Donuts At Home") {


    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API","","Java, Spring Boot, Docker")

        }
        System_Boundary(eventProcessing,"Event Processing Service",$tags="newboundary"){
            ContainerQueue(eventManager,"Event Processing","","Kafka")
            Container("paymentconnect","Payment Connector","","Application")
        }
    }
}


Rel(shoppingService,eventManager,"Kafka")
Rel(paymentconnect,eventManager,"Kafka")

@enduml
```



::right::

### Publish/Subscribe (Pub/Sub)


```plantuml
@startuml
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())

System_Boundary(donutssystem, "Donuts At Home") {


    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API","","Java, Spring Boot, Docker")

        }
        System_Boundary(eventProcessing,"Event Processing Service",$tags="newboundary"){
            ContainerQueue(eventManager,"Event Processing","","Kafka")
            Container("paymentconnect","Payment Connector","","Application")
            Container("distributorconnect", "Distributor Connect","","Application")
        }
    }
}


Rel(shoppingService,eventManager,"Kafka")
Rel(paymentconnect,eventManager,"Kafka")
Rel(distributorconnect,eventManager,"Kafka")

@enduml
```

---
layout: two-cols 
---

## Avantages 

* Scalabilité améliorée
* Augmente la résilience des plateformes microservices
* Traitement au fil de l'eau des évènements

::right::

## Inconvénients

* La consistence des données est compliquée à mettre en oeuvre
* La gestion des erreurs est plus compliquée
* Il faut superviser le système de messagerie et gérer les cas ou la file d'attente est saturée 

