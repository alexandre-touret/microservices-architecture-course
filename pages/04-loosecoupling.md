
# Couplage lâche

> Le couplage fait référence au <span v-mark.circle.red>degré d'interdépendance entre les différents modules</span>, composants ou classes d'un système logiciel. Un couplage fort signifie que les modules sont fortement interconnectés et dépendent étroitement les uns des autres, tandis qu'un couplage faible indique une interdépendance minimale entre les modules. 
> Le couplage est une mesure importante de la qualité du design logiciel, car <span v-mark.circle.red>un couplage fort peut rendre le système difficile à maintenir, à modifier et à tester</span>. En revanche, un couplage faible favorise la modularité, la réutilisabilité et la maintenabilité du code.

---

## Qu'est-ce qui crée du couplage dans les architectures microservices ?

### Couplage comportemental

* Description : Se produit lorsque des services partagent des responsabilités dans les processus métier. 
* Conséquence : Si un service nécessite l'aide directe d'un autre pour accomplir ses tâches, cela indique que les périmètres des services n'ont pas été correctement définis.

### Couplage des connaissances

* Description : Se produit lorsque les services connaissent trop bien les implémentations internes des autres.

### Couplage des schémas

* Description : Se produit lorsque les services sont liés à un ensemble commun d'interfaces ou de schémas.

---

### Couplage temporel

* Description : Se produit lorsqu'un service attend une réponse immédiate d'un autre avant de pouvoir continuer.



### Couplage des processus

* Description : Se produit lorsque les services commencent à assumer trop de responsabilités distinctes.
* Conséquence : Donne lieu à des implémentations de services difficiles à mettre à l'échelle ou à modifier. 


### Couplage d'implémentation

* Description : Se produit lorsque les services partagent des détails d'implémentation plutôt que des contrats ou des schémas.
* Conséquence : Les API qui laissent échapper des détails d'implémentation.

### Couplage basé sur la localisation :

* Description : Se produit lorsqu'un service s'attend à ce qu'une ressource existe à un emplacement spécifique.

<!-- 
Couplage comportemental :

Description : Se produit lorsque des services partagent des responsabilités dans les processus métier. Par exemple, plusieurs services peuvent être impliqués dans la production d'une facture.
Conséquence : Si un service nécessite l'aide directe d'un autre pour accomplir ses tâches, cela indique que les périmètres des services n'ont pas été correctement définis.
Solution : Redéfinir les frontières entre services pour éliminer les communications excessivement fréquentes. Opter pour des interactions basées sur des événements via la messagerie plutôt que des commandes directes ou des interactions de type RPC.

Couplage des connaissances :

Description : Se produit lorsque les services connaissent trop bien les implémentations internes des autres. Par exemple, l'émetteur d'une requête sait comment le récepteur répondra.
Conséquence : Crée une dépendance car les services deviennent dépendants des mécanismes internes des autres services.
Couplage des schémas :

Description : Se produit lorsque les services sont liés à un ensemble commun d'interfaces ou de schémas.
Conséquence : Les services doivent pouvoir modifier leurs données internes sans rien casser. Modifier les interfaces de données externes est plus délicat car cela impacte les services collaboratifs.
Solution : Les clients doivent agir en tant que lecteurs tolérants, en ne consommant que les parties nécessaires d'un contrat d'API, réduisant ainsi leur vulnérabilité aux changements d'API.

Couplage temporel :

Description : Se produit lorsqu'un service attend une réponse immédiate d'un autre avant de pouvoir continuer.
Contexte : Prévalent dans les systèmes utilisant de nombreuses interactions de type requête/réponse, comme les microservices basés sur REST ou gRPC.
Solution : Revoir les périmètres de service pour éviter les attentes sur les services externes. En cas de services plus petits, il est crucial d'avoir une gestion robuste des échecs pour gérer les délais d'attente et les erreurs transitoires.

Couplage des processus :

Description : Se produit lorsque les services commencent à assumer trop de responsabilités distinctes.
Conséquence : Donne lieu à des implémentations de services gonflées difficiles à mettre à l'échelle ou à modifier. Les plateformes CRM ou ERP comme Salesforce ou SAP sont des exemples extrêmes de ce type.

Couplage d'implémentation :

Description : Se produit lorsque les services partagent des détails d'implémentation plutôt que des contrats ou des schémas.
Exemple : Un service utilise la bibliothèque cliente d'un autre pour communiquer. Cela lie les services à un langage ou un cadre spécifique s'ils souhaitent collaborer.
Conséquence : Les API qui laissent échapper des détails d'implémentation sous forme de constructions spécifiques à la plate-forme peuvent entraîner ce type de couplage.
Couplage basé sur la localisation :

Description : Se produit lorsqu'un service s'attend à ce qu'une ressource existe à un emplacement spécifique.
Solution : Utiliser une forme de courtier ou de localisateur de services qui mappe une série de destinations logiques à leurs emplacements physiques.

-->

---

## Exemple de couplage fort

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
System_Ext(SIPS,"SIPS")


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

---

## Comment découpler les appels externes ?

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
        Container(fogui,"GUI")
        Container(bogui,"backoffice GUI")
        Container(foapi,"Back for Front GUI")
        Container(boapi,"Back for Backoffice GUI")
    }

    System_Boundary(api,"Service Layer") {
        System_Boundary(shoppingAPI,"Shopping Service",$tags="newboundary"){
            Container(shoppingService,"Shopping API",)
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
        System_Boundary(eventProcessing,"Event Processing Service",$tags="eventBoundary"){
            ContainerQueue(eventManager,"Event Processing")
            Container("paymentconnect","Payment Connector")
            Container("deliveryconnect","Delivery Connector")
        }


    }
}

System_Ext(delivery,"Delivery Information System", "handles delivery orders")
System_Ext(SIPS,"SIPS"," online secure credit card payment ")


Rel(customer,fogui,"HTTPS")
Rel(fogui, foapi,"HTTPS")

Rel(foapi,shoppingService,"HTTPS")
Rel(shoppingService,shoppingDb,"JDBC")

Rel(customerService,customerDb,"JDBC")
'Rel(shoppingService,billingService,"HTTPS")
'Rel(shoppingService,SIPS,"HTTPS")
'Rel(shoppingService,delivery,"HTTPS")
Rel(billingService,billingDb,"JDBC")
Rel(billingService,billingS3,"HTTPS")

Rel(user,bogui,"HTTPS")
Rel(bogui,boapi,"HTTPS")
Rel(boapi,customerService,"HTTPS")
Rel(boapi,billingService,"HTTPS")
Rel(boapi,shoppingService,"HTTPS")

Rel(shoppingService,eventManager,"Kafka",$tags="eventRel")
Rel(billingService,eventManager,"Kafka",$tags="eventRel")
Rel(deliveryconnect,eventManager,"Kafka")
Rel(deliveryconnect,delivery,"HTTPS",$tags="eventRel")
Rel(paymentconnect,SIPS,"HTTPS",$tags="eventRel")
Rel(paymentconnect,eventManager,"Kafka")
Lay_D(billingAPI,customerAPI)
Lay_R(eventManager,paymentconnect)
Lay_R(eventManager,deliveryconnect)
@enduml

```