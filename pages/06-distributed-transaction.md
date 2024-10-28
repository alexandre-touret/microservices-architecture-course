---
layout: section
---

# Transactions distribuées

---

## Rappels : ACID

* Atomicité
* Cohérence
* Isolation
* Durabilité

Source: Wikipedia [@acid]

```plantuml
@startuml monolith
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())
AddBoundaryTag("eventBoundary", $bgColor="46beaa",$borderColor="green", $fontColor="white", $shadowing="true", $shape = EightSidedShape())
AddRelTag("eventRel", $textColor="green", $lineColor="green", $lineStyle="boldStyle", $sprite="eventRel,scale=2,color=green", $legendText="firewall")


Person(user, "Donuts At Home Admins")
Person(customer, "Customer")


System_Boundary(donutssystem, "Donuts At Home") {
    System_Boundary("GUI","Presentation Layer"){
        Container(gui,"GUI")
        Container(bogui,"backoffice GUI")
    }
    Container_Boundary(APIMonolith,"Business & Persistence Layer",$tags="newboundary"){
        Component(businessLayer,"Business Layer")
        Component(persistenceLayer,"Persistence Layer")
    }
    ContainerDb(db,"Database","...")
}
Rel(customer,gui," ","HTTPS")
Rel(user,bogui,"","HTTPS")
Rel(gui,businessLayer,"","HTTPS")
Rel(bogui,businessLayer,"","HTTPS")
Rel(businessLayer,persistenceLayer,"","method")
Rel(persistenceLayer,db," ","JDBC")
@enduml

```

--- 

## Comment faire dans une architecture distribuée ?
### Exemple


```plantuml
@startuml monolith
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

Person(user, "Donuts At Home Admins")
Person(customer, "Customer")


System_Boundary(donutssystem, "Donuts At Home") {
    System_Boundary("GUI","Presentation Layer"){
        Container(fogui,"GUI")
        Container(bogui,"backoffice GUI")
    }

    Container_Boundary(customerService,"CustomerService"){
        Component(customerBusinessLayer,"Business Layer")
        Component(customerPersistenceLayer,"Persistence Layer")
        ContainerDb(customerDb,"Customer DB")
    }
        Container_Boundary(billingService,"BillingService"){
            Component(billingBusinessLayer,"Business Layer")
            Component(billingPersistenceLayer,"Persistence Layer")
            ContainerDb(billingDb,"Billing DB")
        }
            Container_Boundary(orderService,"CustomerService"){
                Component(orderBusinessLayer,"Business Layer")
                Component(orderPersistenceLayer,"Persistence Layer")
                ContainerDb(orderDb,"Order DB")
            }
}
Rel(customer,fogui,"")
Rel(user,bogui,"")
Rel(fogui,orderService,"Orders")
Rel(bogui,customerService,"Customer management")
Rel(orderService,billingService,"Orders")
Rel(bogui,billingService,"manages Billing")


@enduml

```

<span v-click>Si dans l'appel à ``BillingService`` échoue:</span>
* <span v-click>Comment traiter les erreurs et garantir la cohérence des données dans ``CustomerService`` ?</span>
* <span v-click>Comment piloter une transaction de bout en bout ?</span> 

---
layout: center
---
## Les Long Running Actions

### Définition

Les "long running actions" dans le contexte des microservices sont des opérations qui durent longtemps, souvent beaucoup plus que la durée typique d'une requête HTTP. 

Ces opérations prolongées peuvent inclure des traitements complexes, des calculs intensifs, la génération de rapports, l'intégration avec des systèmes externes, la migration de données, etc. 

Gérer ces actions efficacement est crucial pour maintenir la performance, la scalabilité et la résilience de l'ensemble du système de microservices.

---

### Exemple

```plantuml
@startuml monolith
!include <C4/C4_Container>
!include <C4/C4_Context>
!include <C4/C4_Component>

LAYOUT_LANDSCAPE()
HIDE_STEREOTYPE()

AddBoundaryTag("newboundary", $bgColor="e1f3f8",$borderColor="447870", $fontColor="447870", $shadowing="true", $shape = RoundedBoxShape())
AddRelTag("newrel", $textColor="green", $lineColor="green", $lineStyle="boldStyle", $sprite="eventRel,scale=2,color=green", $legendText="firewall")


Person(user, "Donuts At Home Admins")
Person(customer, "Customer")

System_Boundary(donutssystem, "Donuts At Home") {
    System_Boundary("GUI","Presentation Layer"){
        Container(fogui,"GUI")
        Container(bogui,"backoffice GUI")
        Container(foapi,"Back for Front GUI")
        Container(boapi,"Back for Backoffice GUI")
    }

    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API")
            ContainerDb(shoppingDb,"Shopping DB")
        }
        System_Boundary(customerAPI,"Customer Service",$tags="newboundary"){
            Container(customerService,"Customer API")
            ContainerDb(customerDb,"Customer DB")
        }
        System_Boundary(billingAPI,"Billing Service",$tags="newboundary"){
            Container(billingService,"Billing API")
            ContainerDb(billingDb,"Billing DB")
            ContainerDb(billingS3,"Billing Object Storage")
        }

    }
}

System_Ext(delivery,"Delivery Information System")
System_Ext(SIPS,Payment System)


Rel(customer,fogui,"HTTPS")
Rel(fogui, foapi,"HTTPS")

Rel(foapi,shoppingService,"HTTPS")
Rel(shoppingService,shoppingDb,"JDBC")

Rel(customerService,customerDb,"JDBC")
Rel(shoppingService,billingService,"HTTPS")
Rel(shoppingService,SIPS,"HTTPS")
Rel(shoppingService,delivery,"HTTPS")
Rel(billingService,billingDb,"JDBC")
Rel(billingService,billingS3,"HTTPS")

Rel(user,bogui,"HTTPS")
Rel(bogui,boapi,"HTTPS")
Rel(boapi,customerService,"HTTPS")
Rel(boapi,billingService,"HTTPS")
Rel(boapi,shoppingService,"HTTPS")

Lay_D(billingAPI,customerAPI)

@enduml

```

### Caractéristiques

| Durée prolongée| Complexité | État Intermédiaire  | Scalabilité | Tolérance aux Erreurs 
| --- | --- | --- |--- | --- |

<!--
Durée Prolongée : Ces actions peuvent prendre des secondes, des minutes, voire des heures pour se terminer.
Complexité : Souvent impliquent des opérations complexes avec plusieurs étapes ou dépendances.
État Intermédiaire : Les actions prolongées peuvent nécessiter la gestion de l'état intermédiaire pour assurer la reprise après une interruption.
Scalabilité : Doivent pouvoir être mises à l'échelle horizontalement, par exemple en ajoutant des instances supplémentaires de services worker.
Tolérance aux Erreurs : Doivent gérer les échecs de manière appropriée et pouvoir redémarrer ou compenser les opérations échouées.

-->
---

## Les Long Running Actions en Java

### Modèle

![Exemple](https://download.eclipse.org/microprofile/microprofile-lra-2.0/images/lra.png)

* ![Article présentant les LRA](https://blog.sciam.fr/2023/12/07/lra-demo.html)
* ![Spécification MicroProfile LRA 2.0](https://download.eclipse.org/microprofile/microprofile-lra-2.0/microprofile-lra-spec-2.0.html)

---

## Le pattern SAGA

![saga1](https://microservices.io/i/sagas/From_2PC_To_Saga.png)[@saga-pattern]

Source: [Microservices Patterns](https://microservices.io/patterns/data/saga.html)