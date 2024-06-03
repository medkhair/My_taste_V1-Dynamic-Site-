-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 mai 2024 à 16:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_taste`
--

-- --------------------------------------------------------

--
-- Structure de la table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `flag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `flag`) VALUES
(15, 'Japan', 'japan.jpg'),
(16, 'Italy', 'italy.jpg'),
(17, 'Saudi Arabia', 'ksa.jpg'),
(18, 'Morocco', 'morocco.jpg'),
(19, 'Lebanon', 'lebanon.jpg'),
(20, 'USA', 'usa.jpg'),
(21, 'Germany', 'germany.jpg'),
(22, 'Iran', 'iran.jpg'),
(23, 'France', 'france.jpg'),
(24, 'China', 'china.jpg'),
(25, 'Mexico', 'mexico.jpg'),
(26, 'Algeria', 'dz.jpg'),
(27, 'United Kingdom', 'uk.jpg'),
(28, 'South Africa', 'rsa.jpg'),
(29, 'Indonesia', 'indonesia.jpg'),
(30, 'Senegal', 'senegal.jpg'),
(31, 'Turkey', 'turkey.jpg'),
(32, 'Croatia', 'croatia.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `meals`
--

INSERT INTO `meals` (`id`, `name`, `time`) VALUES
(33, 'Breakfast', '08:00:00'),
(34, 'Lunch', '12:00:00'),
(35, 'Dinner', '20:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `prepararion_time` time NOT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `time` text NOT NULL,
  `image` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `description`, `prepararion_time`, `ingredients`, `instructions`, `time`, `image`, `country`) VALUES
(1, 'Döner', 'Doner kebab, also spelled as döner kebab, is a dish of Turkish origin made of meat cooked on a vertical rotisserie. Seasoned meat stacked in the shape of an inverted cone is turned slowly on the rotisserie, next to a vertical cooking element.', '01:10:00', '500g lamb mince, 1 small onion, coarsely grated, 4 garlic cloves, minced or finely grated, 100g fresh breadcrumbs, 2 tsp ground cumin, 2 tsp ground coriander, 1 tsp dried oregano, ¼ tsp smoked paprika, sunflower oilfor oiling, pitta breads, shredded red or white cabbage, sliced onion, chopped tomatoes, pickled chillies, chilli sauce (see recipe below), garlic sauce (see recipe below), tahini', 'Heat the oven to 200C/180C fan/gas 6. Tip all the ingredients except the oil into a food processor with a large pinch of salt and lots of ground pepper. Pulse until everything is combined and chopped together. You can also just squish everything together in a bowl but this will give you a looser finish.\r\nOil a large sheet of foil, tip the meat mix in the middle and mould to a very thick sausage, roughly the shape of an aubergine. Roll up the foil tightly, twisting up the ends to create a Christmas cracker shape.\r\nOil a large sheet of foil, tip the meat mix in the middle and mould to a very thick sausage, roughly the shape of an aubergine. Roll up the foil tightly, twisting up the ends to create a Christmas cracker shape.\r\nPlace on a board and carve into thin slices. For full doner mode, you can hold the kebab up with a roasting fork or metal skewer and carve. Serve with warm pitta bread and any of the other accompaniments, including our chilli sauce and garlic yogurt sauce.', 'lunch', 'doener.jpg', 'Germany'),
(2, 'Sushi', 'Sushi is a traditional Japanese dish prepared with vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. It is often served with pickled ginger, wasabi, and soy sauce.', '00:45:00', '500g sushi rice, 600ml water, 6 tbsp rice vinegar, 4 tbsp caster sugar, 2 tsp salt, Nori seaweed sheets, Assorted fillings such as raw fish (e.g., salmon, tuna), cooked seafood (e.g., crab, shrimp), vegetables (e.g., cucumber, avocado), Tropical fruits (e.g., mango, pineapple) (optional), Soy sauce, Wasabi, Pickled ginger', 'Rinse the sushi rice in a sieve under cold running water until the water runs clear. Drain the rice well and place it in a saucepan with the water. Bring to a boil, then reduce the heat to low, cover, and cook for 10-12 minutes or until the water is absorbed and the rice is tender. Remove from the heat and let it stand, covered, for 10 minutes. In a small bowl, mix the rice vinegar, sugar, and salt until dissolved. Transfer the cooked rice to a large bowl and gently fold in the vinegar mixture using a spatula or rice paddle. Allow the rice to cool to room temperature. Lay a sheet of nori seaweed on a bamboo sushi mat or a clean tea towel. Spread a thin layer of sushi rice evenly over the nori, leaving a 1-inch gap at the top. Arrange your desired fillings in a line across the center of the rice. Using the bamboo mat or tea towel, roll up the sushi tightly, pressing gently as you roll to seal. Wet the top edge of the nori with a little water to seal the roll. Use a sharp knife to slice the sushi roll into bite-sized pieces. Serve with soy sauce, wasabi, and pickled ginger.', 'dinner', 'sushi.jpg', 'Japan'),
(4, 'Vegetarian Dish', 'A delicious vegetarian dish made with fresh and flavorful ingredients, suitable for vegans and vegetarians alike.', '00:30:00', 'Assorted vegetables (e.g., bell peppers, zucchini, mushrooms, onions), Olive oil, Salt and pepper to taste, Herbs and spices (e.g., thyme, rosemary, paprika), Optional: tofu or tempeh for added protein', 'Preheat the oven to 200°C (400°F). Wash and chop the vegetables into bite-sized pieces. Toss the vegetables with olive oil, salt, pepper, and your choice of herbs and spices. Spread the seasoned vegetables evenly on a baking sheet. Roast in the preheated oven for 20-25 minutes or until the vegetables are tender and slightly browned. Serve hot as a main dish or side dish.', 'dinner', 'vegetarian.jpg', 'USA'),
(3, 'Tajine', 'A classic Moroccan dish cooked in a traditional clay pot called a tagine, combining aromatic spices with tender meat, vegetables, and fruits.', '02:30:00', '500g lamb or chicken, cubed, 2 onions, chopped, 2 cloves garlic, minced, 2 tomatoes, diced, 2 carrots, peeled and sliced, 1 zucchini, sliced, 1 preserved lemon, chopped, 1 cup dried apricots, 1 cup chicken or vegetable broth, 2 tbsp olive oil, 1 tsp ground ginger, 1 tsp ground cumin, 1 tsp ground cinnamon, 1 tsp ground paprika, Salt and pepper to taste, Fresh cilantro or parsley for garnish', 'In a large tagine or Dutch oven, heat the olive oil over medium heat. Add the onions and garlic, and sauté until softened. Add the meat to the tagine and brown on all sides. Stir in the spices and cook for another minute. Add the tomatoes, carrots, zucchini, preserved lemon, apricots, and broth to the tagine. Season with salt and pepper to taste. Cover and simmer over low heat for 2 hours or until the meat is tender and the flavors have melded together. Garnish with fresh cilantro or parsley before serving. Serve hot with couscous or bread.', 'dinner', 'moroccan.jpg', 'Morocco'),
(6, 'Pizza', 'A classic Italian dish consisting of a yeasted flatbread topped with tomato sauce, cheese, and various toppings, baked in an oven.', '01:30:00', 'For the dough: 500g bread flour, 1 tsp instant yeast, 1 tsp salt, 1 tbsp olive oil, 300ml warm water, For the toppings: Tomato sauce, Mozzarella cheese, Assorted toppings (e.g., pepperoni, mushrooms, bell peppers, olives, onions)', 'In a large bowl, mix together the flour, yeast, and salt. Make a well in the center and add the olive oil and warm water. Mix until a dough forms. Knead the dough on a floured surface for about 10 minutes or until smooth and elastic. Place the dough in a greased bowl, cover with a clean kitchen towel, and let it rise in a warm place for about 1 hour or until doubled in size. Preheat the oven to its highest temperature (usually around 250°C or 500°F). Divide the dough into desired portions and shape into rounds. Roll out each portion of dough into a thin circle. Place the dough on a pizza peel or baking sheet dusted with cornmeal. Spread a thin layer of tomato sauce over the dough, leaving a border around the edges. Sprinkle grated mozzarella cheese over the sauce, then add your desired toppings. Transfer the pizza to the preheated oven and bake for 10-12 minutes or until the crust is golden brown and the cheese is bubbly and melted. Remove from the oven and let it cool slightly before slicing. Serve hot and enjoy!', 'dinner', 'pizza.jpg', 'Italy'),
(7, 'Crepes', 'Thin French pancakes made from a simple batter of flour, eggs, milk, and butter, typically served with sweet or savory fillings.', '00:30:00', 'For the batter: 1 cup all-purpose flour, 2 eggs, 1 cup milk, 1/4 cup water, 2 tbsp melted butter, Pinch of salt, For the filling: Nutella, sliced bananas, whipped cream (optional), Powdered sugar (optional)', 'In a mixing bowl, whisk together the flour, eggs, milk, water, melted butter, and salt until smooth. Heat a lightly greased non-stick skillet or crepe pan over medium heat. Pour about 1/4 cup of batter into the skillet, swirling to evenly coat the bottom. Cook for 1-2 minutes or until the edges start to lift and the bottom is lightly golden brown. Flip the crepe and cook for another 1-2 minutes or until cooked through. Remove from the skillet and repeat with the remaining batter. Spread Nutella on one half of each crepe, then top with sliced bananas and whipped cream if desired. Fold the crepes in half and then in quarters to form triangles. Dust with powdered sugar if desired. Serve warm and enjoy!', 'breakfast', 'crepes.jpg', 'France'),
(8, 'Tacos', 'A Mexican dish consisting of a corn or wheat tortilla filled with various ingredients, such as meat, beans, vegetables, cheese, and salsa.', '00:45:00', 'For the filling: 500g ground beef or chicken, 1 onion, chopped, 2 cloves garlic, minced, 1 bell pepper, chopped, 1 cup canned black beans, drained and rinsed, 1 cup corn kernels, 1 tsp chili powder, 1 tsp ground cumin, 1 tsp paprika, Salt and pepper to taste, For serving: Corn or flour tortillas, Shredded lettuce, Diced tomatoes, Shredded cheese, Sour cream, Salsa, Guacamole', 'In a large skillet, heat some oil over medium heat. Add the onion and garlic and sauté until softened. Add the ground meat to the skillet and cook until browned, breaking it up with a spoon. Add the bell pepper, black beans, corn, chili powder, cumin, paprika, salt, and pepper to the skillet. Cook for another 5-7 minutes or until the vegetables are tender and the flavors have melded together. Warm the tortillas in a dry skillet or microwave. Spoon the filling onto the center of each tortilla. Top with lettuce, tomatoes, cheese, sour cream, salsa, and guacamole. Fold the tortillas in half and serve immediately. Enjoy your delicious tacos!', 'dinner', 'tacos.jpg', 'Mexico'),
(9, 'Kabsa', 'A traditional Saudi Arabian dish made with fragrant rice cooked with meat (usually chicken, lamb, or goat) and flavored with a blend of aromatic spices.', '02:00:00', 'For the rice: 2 cups basmati rice, washed and drained, 4 cups water, 1 onion, chopped, 2 cloves garlic, minced, 2 tomatoes, chopped, 1 carrot, peeled and diced, 1 bell pepper, diced, 1 cup frozen peas, Salt to taste, For the meat: 500g chicken, lamb, or goat, cut into pieces, 2 tbsp vegetable oil, 1 onion, chopped, 2 cloves garlic, minced, 1 tsp ground cumin, 1 tsp ground coriander, 1 tsp ground cinnamon, 1 tsp ground cardamom, 1/2 tsp ground turmeric, Salt and pepper to taste', 'In a large pot, heat the vegetable oil over medium heat. Add the onion and garlic and sauté until softened. Add the meat to the pot and brown on all sides. Stir in the spices and cook for another minute. Add enough water to cover the meat and bring to a boil. Reduce the heat to low, cover, and simmer for about 1 hour or until the meat is tender. In another pot, bring 4 cups of water to a boil. Add the rice and cook for about 10 minutes or until partially cooked. Drain the rice and set aside. In the same pot, heat some oil over medium heat. Add the onion and garlic and sauté until softened. Add the chopped tomatoes, carrot, bell pepper, and peas to the pot. Cook for about 5 minutes or until the vegetables are tender. Season with salt to taste. Spread the partially cooked rice over the cooked meat in the pot. Cover and cook for another 20-25 minutes or until the rice is cooked through and the flavors have melded together. Fluff the rice with a fork before serving. Serve hot with salad and yogurt on the side. Enjoy your flavorful kabsa!', 'dinner', 'kabssa.jpg', 'KSA'),
(10, 'Spaghetti Bolognese', 'A classic Italian pasta dish made with spaghetti noodles tossed in a rich and flavorful meat sauce.', '01:30:00', 'For the sauce: 500g ground beef, 1 onion, chopped, 2 cloves garlic, minced, 2 carrots, peeled and diced, 2 celery stalks, diced, 2 tomatoes, diced, 1 cup tomato sauce, 1 cup beef broth, 1/2 cup red wine (optional), 2 tbsp olive oil, 1 tsp dried oregano, 1 tsp dried basil, Salt and pepper to taste, For serving: Cooked spaghetti noodles, Grated Parmesan cheese, Fresh basil leaves', 'In a large pot, heat the olive oil over medium heat. Add the onion, garlic, carrots, and celery, and sauté until softened. Add the ground beef to the pot and cook until browned, breaking it up with a spoon. Stir in the diced tomatoes, tomato sauce, beef broth, red wine (if using), oregano, basil, salt, and pepper. Bring the sauce to a simmer, then reduce the heat to low, cover, and cook for about 1 hour, stirring occasionally. Meanwhile, cook the spaghetti noodles according to the package instructions until al dente. Drain the noodles and set aside. Once the sauce has thickened and the flavors have melded together, remove it from the heat. Serve the spaghetti noodles topped with the Bolognese sauce. Garnish with grated Parmesan cheese and fresh basil leaves. Enjoy your delicious spaghetti Bolognese!', 'dinner', 'spagetti.jpg', 'Italy'),
(11, 'Koshari', 'A popular Egyptian street food dish made with a combination of rice, lentils, and pasta, topped with spicy tomato sauce, caramelized onions, and crispy chickpeas.', '01:00:00', 'For the koshari: 1 cup rice, washed and drained, 1 cup brown lentils, 1 cup short pasta (e.g., elbow macaroni), 1 onion, thinly sliced, 2 cloves garlic, minced, 1 can chickpeas, drained and rinsed, 2 tbsp vegetable oil, Salt to taste, For the tomato sauce: 2 tomatoes, chopped, 2 cloves garlic, minced, 1 tsp ground cumin, 1 tsp ground coriander, 1/2 tsp cayenne pepper, Salt to taste', 'In a large pot, bring 4 cups of water to a boil. Add the rice and lentils to the pot and cook for about 20 minutes or until tender. Drain the rice and lentils and set aside. In another pot, cook the pasta according to the package instructions until al dente. Drain the pasta and set aside. In a skillet, heat the vegetable oil over medium heat. Add the sliced onion and cook until caramelized, about 10-15 minutes. Remove the onion from the skillet and set aside. In the same skillet, add the minced garlic and chickpeas. Cook until the chickpeas are crispy and golden brown, about 10 minutes. Remove the chickpeas from the skillet and set aside. In a small saucepan, combine the chopped tomatoes, minced garlic, ground cumin, ground coriander, cayenne pepper, and salt. Cook the sauce over medium heat for about 10 minutes, stirring occasionally, until thickened. To serve, divide the rice, lentils, and pasta among serving plates. Top with the spicy tomato sauce, caramelized onions, and crispy chickpeas. Enjoy your delicious koshari!', 'lunch', 'kochari.jpg', 'Egypt'),
(12, 'Rice Cake', 'A Korean dessert made from glutinous rice flour and sugar, often flavored with various ingredients such as red bean paste, sesame seeds, or fruits.', '01:00:00', 'For the rice cake: 2 cups glutinous rice flour, 1/2 cup sugar, 1 cup water, Pinch of salt, For the filling (optional): Red bean paste, Sweetened coconut flakes, Chopped nuts, For the topping: Roasted sesame seeds, Chopped fruit (e.g., strawberries, kiwi)', 'In a large bowl, combine the glutinous rice flour, sugar, and salt. Gradually add the water while stirring until a smooth dough forms. Divide the dough into equal portions and shape each portion into a ball. Flatten each ball into a disc and place your desired filling in the center (if using). Fold the edges of the dough over the filling and pinch to seal. Roll the filled dough into a smooth ball. Repeat with the remaining dough and filling. Bring a pot of water to a boil. Carefully drop the rice cakes into the boiling water and cook for about 5-7 minutes or until they float to the surface. Remove the cooked rice cakes from the water using a slotted spoon and drain them on a plate lined with paper towels. Sprinkle the rice cakes with roasted sesame seeds and top with chopped fruit if desired. Serve warm or chilled. Enjoy your delicious rice cakes!', 'breakfast', 'rice-cake.jpg', 'China'),
(13, 'Grilled Steak', 'A classic dish featuring tender steak grilled to perfection, seasoned with simple yet flavorful marinades or rubs.', '00:20:00', '2 beef steaks (e.g., ribeye, sirloin), Salt and pepper to taste, For the marinade (optional): 2 cloves garlic, minced, 2 tbsp soy sauce, 1 tbsp Worcestershire sauce, 1 tbsp olive oil, 1 tsp Dijon mustard, 1 tsp honey, 1/2 tsp black pepper', 'Preheat the grill to high heat. Season the steaks generously with salt and pepper. In a small bowl, whisk together the marinade ingredients if using. Brush the marinade over both sides of the steaks. Place the steaks on the grill and cook for 3-5 minutes per side for medium-rare, or until desired doneness is reached. Remove the steaks from the grill and let them rest for a few minutes before slicing. Serve hot with your favorite sides. Enjoy your grilled steak!', 'dinner', 'grilled-steak.jpg', 'USA'),
(14, 'Couscous', 'A staple dish in North African cuisine made from steamed semolina grains, typically served with meat, vegetables, and a flavorful broth.', '00:45:00', 'For the couscous: 2 cups couscous, 2 cups chicken or vegetable broth, 2 tbsp olive oil, Salt to taste, For the topping: Assorted vegetables (e.g., carrots, zucchini, bell peppers, onions), cubed meat (e.g., chicken, lamb), 1 onion, chopped, 2 cloves garlic, minced, 2 tomatoes, chopped, 1 tsp ground cumin, 1 tsp ground coriander, 1/2 tsp ground cinnamon, 1/2 tsp ground ginger, Salt and pepper to taste, Fresh parsley or cilantro for garnish', 'In a large bowl, combine the couscous, chicken or vegetable broth, olive oil, and salt. Cover and let it sit for 5-10 minutes or until the liquid is absorbed. Fluff the couscous with a fork to separate the grains. Meanwhile, prepare the topping. In a large skillet, heat some olive oil over medium heat. Add the chopped onion and garlic and sauté until softened. Add the cubed meat to the skillet and cook until browned on all sides. Stir in the chopped tomatoes, ground cumin, ground coriander, ground cinnamon, ground ginger, salt, and pepper. Cook for another 5-7 minutes or until the tomatoes have softened and the flavors have melded together. Steam the assorted vegetables until tender. To serve, fluff the couscous again with a fork and transfer it to a serving platter. Arrange the cooked meat and vegetables on top of the couscous. Garnish with fresh parsley or cilantro. Serve hot with additional broth on the side if desired. Enjoy your flavorful couscous!', 'dinner', 'couscous.jpg', 'Morocco'),
(5, 'Moroccan', 'A classic Moroccan dish', '00:30:00', '', '', 'breakfast', 'moroccan.jpg', 'Morocco');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
