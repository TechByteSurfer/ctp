Questions Ouvertes 5 points
---

Création d'un Service Account :

● « Décrivez les étapes pour créer un Service Account dans GCP. Quelles sont les
bonnes pratiques à suivre en matière de gestion des clés et de sécurité ? »
Pour creer un Service Account dans GCP on se rends dans `IAM` puis `compte de service`, ici on  selectionne `cree un compte de service`, on donne un nom puis on selectionne uniquement les droits necessaire a ce compte pour qu'il en est le moins possible et qu'il puisse faire uniquement ce pour quoi il a ete creer. Pour les cles on fait une cle json pas exemple que l'on stock dans une variable secrete pour quel ne soit pas accessible a tous.

Création d'un Bucket :

● « Comment créer un bucket sur Google Cloud Storage ? Précisez les configurations
importantes à définir (localisation, politique de conservation, etc.) et comment celles-ci
impactent la sécurité et la performance. »
Dans GCP, on se rends dans `Cloud Storage` puis `Buckets`, on rentre un nom. Pour la configuration l'emplacement est tres important celui-ci va definir si l'on souhaite une disponibilite plus importante (Multi-region) ou un latence la plus faible possible (Region).
Concernant la classe de stockage cela permet de definir la qualite et redondance des informations (par exemple il y a une grande difference entre des donnees d'archive et des donnees qui vont etre modifier toutes les minutes). On peut aussi selectionner le niveau d'acces, soit global, soit au cas par cas. Pour finir on choisi comment sont proteges les donnees suppression reversible ou non, controle de version et conservation pour empecher la suppression. 

Gestion des droits (IAM) :

● « En quoi consiste la gestion des identités et des accès (IAM) sur GCP ? Donnez un
exemple concret de configuration des droits pour limiter l'accès à une ressource critique.
»
L'IAM permet de definir ce que va pouvoir faire l'utilisateur ou le compte de service permettant alors de l'empecher de faire certaines action. Par exemple en ne donnant uniquement l'access Developpeur Cloud Run a un compte celui ne pourra uniquement que consulte et modifier les instances Cloud Run existante.

Configuration de la facturation :

● « Expliquez comment configurer la facturation sur GCP. Quelles précautions
recommanderiez-vous pour éviter des coûts imprévus lors du déploiement de projets ?
»
Pour la facturatio, on peut mettre en place un budget avec des alertes pour nous avertir quand certains sont atteinds pour que l'on puisse reagir en consequence.

Regles de vie :

● « Quelle est la chose importante que l'on dit à la fin du cours en quittant la salle de TP ?
»
Enrevoir

---

