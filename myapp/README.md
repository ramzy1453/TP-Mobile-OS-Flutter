# TP 2 Flutter - Rapport

## Kemmoun Ramzy / Abadli Baddredine M2 IV

## Exercice 1

Nous avons d'abord importé le package material.dart pour utiliser les composants Flutter. Ensuite, nous avons créé un répertoire nommé images dans le projet et ajouté des images dedans. Pour rendre ces images disponibles, nous les avons déclarées dans le fichier pubspec.yaml sous assets. Enfin, dans notre code Flutter, nous avons créé un widget Stateful et utilisé Image.asset('images/It.png') pour afficher l'image directement.

nous avons créé aussi une fonction rotate qui gère la rotation d'une image en incrémentant un angle à chaque clic sur un bouton. L'angle est mis à jour dans la méthode setState, permettant à l'interface de se rafraîchir. Un FloatingActionButton a été ajouté avec une étiquette "Rotate" qui appelle cette fonction lorsqu'il est pressé. L'image est affichée à l'aide d'un widget Transform.rotate, qui applique la rotation basée sur l'angle en radians, permettant ainsi à l'utilisateur de faire pivoter l'image en continu.

[Image Rotation](https://cdn.discordapp.com/attachments/951922266369851422/1299378651346899025/image.png?ex=671cfc2b&is=671baaab&hm=c58799494ff4cb38a75323c85304642c928a777af5d2de07699739b9e0a9b230&)

## Exercice 2

Dans cet exercice, nous avons implémenté la navigation, pour cela nous avons créé une seconde fenêtre en ajoutant un widget StatelessWidget pour la nouvelle page, et nous avons ajouté une instruction Navigator.push pour permettre de passer de la première à la deuxième fenêtre. et un button dans la deuxième fenêtre pour retourner à la première page.

[Navigation](https://cdn.discordapp.com/attachments/951922266369851422/1299378710767599646/image.png?ex=671cfc39&is=671baab9&hm=9d62930a5bb216be1da9124e19276799c748680da14dc3a504a517c703940d28&)

## Exercice 3

Dans le troisième exercice, nous avons mis en place une galerie d'images en utilisant le package image_picker, que j'ai installé pour permettre à l'utilisateur de sélectionner des images à partir de la galerie de son appareil. J'ai ensuite utilisé un GridView.count pour afficher ces images sous forme de grille. Chaque image est cliquable et, lorsque l'on appuie dessus, elle redirige vers un écran de détails de l'image, permettant d'afficher l'image sélectionnée en plus grande taille et avec plus d'informations.

Dans l'utilisation de la bibliothèque image_picker, nous utilisons les mots-clés async et Future pour gérer les opérations asynchrones. Lorsqu'un utilisateur sélectionne une image, une fonction marquée async permet d'attendre le résultat du Future retourné par le image_picker. Cela garantit que notre application reste réactive pendant que l'image est chargée, sans bloquer l'interface utilisateur. Cette approche rend le processus de sélection d'image plus fluide et agréable pour l'utilisateur.

[Gallery](https://cdn.discordapp.com/attachments/951922266369851422/1299378795228172460/image.png?ex=671cfc4e&is=671baace&hm=21c1ede1ceb558fba60a373563c2b47e164b3132e64e34c366d239da7bece4e7&)

[Pick from gallery](https://cdn.discordapp.com/attachments/951922266369851422/1299378879512842300/image.png?ex=671cfc62&is=671baae2&hm=f828ff3318039a0b6145c86b436205de0b113f7cbdeb45b51ed135f783f61ac5&)

[Images Grid](https://cdn.discordapp.com/attachments/951922266369851422/1299378927164199002/image.png?ex=671cfc6d&is=671baaed&hm=df4a66d937091a29555b826ccb200e1984b92d1590847631aed87aec2d99d449&)

[Image Details](https://cdn.discordapp.com/attachments/951922266369851422/1299378957992329348/image.png?ex=671cfc74&is=671baaf4&hm=463385e0409d883dfc552a4a98257b9a7ecf81e7200d7cfc3642b04e13db344c&)

En conclusion, Flutter facilite grandement le développement d'applications mobiles grâce à sa large gamme de packages disponibles. Ces outils permettent d'intégrer rapidement des fonctionnalités complexes, comme la sélection d'images avec image_picker, tout en offrant une interface utilisateur intuitive. L'utilisation de GridView pour afficher des galeries d'images montre à quel point Flutter rend la création d'interfaces visuellement attrayantes et interactives simple et efficace. Ainsi, les développeurs peuvent se concentrer sur l'expérience utilisateur sans se soucier des détails techniques sous-jacents.
