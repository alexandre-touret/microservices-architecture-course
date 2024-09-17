--- 
layout: quote
---

# Fondamentaux

## Définition d' Amazon

> Microservices are an architectural and organizational approach to software development where software is composed of small independent services that communicate over well-defined APIs. These services are owned by small, self-contained teams.
> 
> 
> Microservices architectures make applications easier to scale and faster to develop, enabling innovation and accelerating time-to-market for new features.


---

## Monolithe vs Microservices

### Un monolithe

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
        Container(gui,"GUI")
        Container(bogui,"backoffice GUI")
    }
    Container_Boundary(APIMonolith,"Business & Persistence Layer"){
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

Tous les composants sont déployés dans le même livrable et sur la même machine.

---

### Une plateforme microservices

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

Chaque domaine fonctionnel est déployé indépendamment.

---

## Pourquoi ?

* Donner plus d'autonomie aux équipes en charge d'un microservice
* Faciliter la gestion du changement par des déploiements plus unitaires et modules (c.-à-d. plus petits)
* Favoriser l'innovation
* Utiliser la technologie la plus appropriée pour chaque service
* Améliorer et cibler la scalabilité

--- 

## Principes de base

Chaque microservice est composé d'une API et une base de données ou tout autre moyen de stockage (si nécessaire).

Il est développé et opéré par une _"Pizza Team"_ qui fait tout du dev à la prod

Les fonctionnalités ne sont accessibles que par le biais des API --> On n'accède pas directement à la base de données.


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
            Container_Boundary(orderService,"OrderService"){
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
