//SPDX-License-Identifier: UNLICENSED

//La version du compilateur
pragma solidity >=0.4.22 <0.9.0;
//Déclaration du contrat
contract ShippingContract {        

//Création d'une liste des états possible de la commande
    enum Etat{ Pending, Shipped, Delivered }
    Etat etatcommande;    

//Création des évenements
    event Creation(uint ID, Etat); 
    event Expedition(uint ID, Etat);
    event Livraison(uint ID, Etat);

//Définisition d'une commande
    struct Commande {
        uint ID;
        string State;
    }

// Création de la fonction de creationcommande
    function _creationCommande(uint ID) private { /
        etatcommande = Etat.Pending;
        emit Creation(ID, etatcommande);
    }

// Création de la fonction d'éxpedition de la commande
    function _expeditioncommande(uint ID) private { 
        etatcommande = Etat.Shipped;
        emit Expedition(ID, etatcommande);
    }

// Création de la fonction de livraison de la commande
    function _livraisoncommande(uint ID) private {
        etatcommande = Etat.Delivered;
        emit Livraison(ID, etatcommande);
    }
    
} 
//Création de la fonction qui change le statut de la commande à "Shipped"
    function shipSent() public{
        choix = Etat.Shipped;
    }
//Création de la fonction qui change le statut de la commande à "Delivered"
    function shipDelivered() public{
        choix = Etat.Delivered;
    }

}