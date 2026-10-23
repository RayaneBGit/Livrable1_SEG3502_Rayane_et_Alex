# SentierCairn

Structure initiale du backend Kotlin préparée pour la partie II du Livrable 1.
Elle comprend les paquetages des sous-domaines, les interfaces de cas
d'utilisation, les DTO et les contrats initiaux Cucumber. Elle ne constitue pas
une application complète : la persistance, les points de terminaison Web, les
intégrations et la logique métier ne sont pas implémentés.

## Structure

- `src/main/kotlin/ca/sentiercairn/domain` : un sous-paquetage et un bref
  `README.md` pour chacun des huit sous-domaines identifiés.
- `src/main/kotlin/ca/sentiercairn/application/usecases` : interfaces Kotlin
  des cas d'utilisation inclus dans ce livrable.
- `src/main/kotlin/ca/sentiercairn/application/dtos/queries` : DTO de requête
  utilisés pour invoquer ces interfaces.
- `src/main/kotlin/ca/sentiercairn/application/dtos/results` : DTO de résultat
  associés à certains cas d'utilisation.
- `src/test/resources/contracts` : neuf fichiers de fonctionnalités Gherkin
  décrivant les contrats initiaux.

Conformément aux consignes, les interfaces des cas d'utilisation **Sign In**
(se connecter), **Sign Out** (se déconnecter) et **Generate Trail Usage Report**
(générer un rapport d'utilisation des sentiers) ne sont pas incluses.
Les sous-domaines correspondants restent présents dans `domain`.

Les fichiers `.feature` sont des contrats Gherkin, et non des tests Cucumber
exécutables : aucun lanceur Cucumber ni aucune définition d'étapes n'est
configuré. Les DTO de requête décrivent les données nécessaires aux cas
d'utilisation; l'identité et les autorisations de l'acteur doivent provenir du
contexte de sécurité authentifié, et non de valeurs fournies par le client.
