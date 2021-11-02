-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 11:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Type_1` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Type_2` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Region` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Evolution` int(11) NOT NULL,
  `Image` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Description` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`Id`, `Name`, `Type_1`, `Type_2`, `Region`, `Evolution`, `Image`, `Description`) VALUES
(1, 'Bulbasaur', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/XZZWfVi.png', 'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.'),
(2, 'Ivysaur', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/HsXY90v.png', 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'),
(3, 'Venusaur', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/VpRW5Mu.png', 'Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'),
(4, 'Charmander', 'Fire', '', 'Kanto', 3, 'https://i.imgur.com/Y8nL9pV.png', 'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.'),
(5, 'Charmeleon', 'Fire', '', 'Kanto', 3, 'https://i.imgur.com/Gaja13B.png', 'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.'),
(6, 'Charizard', 'Fire', 'Flying', 'Kanto', 3, 'https://i.imgur.com/3D3oxTm.png', 'It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.'),
(7, 'Squirtle', 'Water', '', 'Kanto', 3, 'https://i.imgur.com/r8F9PFF.png', 'When it retracts its long neck into its shell, it squirts out water with vigorous force.'),
(8, 'Wartortle', 'Water', '', 'Kanto', 3, 'https://i.imgur.com/EN5XZ6C.png', 'It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.'),
(9, 'Blastoise', 'Water', '', 'Kanto', 3, 'https://i.imgur.com/lQpJ7Ad.png', 'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.'),
(10, 'Caterpie', 'Bug', '', 'Kanto', 3, 'https://i.imgur.com/baKVCuj.png', 'For protection, it releases a horrible stench from the antenna on its head to drive away enemies.'),
(11, 'Metapod', 'Bug', '', 'Kanto', 3, 'https://i.imgur.com/Aq55Hvm.png', 'It is waiting for the moment to evolve. At this stage, it can only harden, so it remains motionless to avoid attack.'),
(12, 'Butterfree', 'Bug', 'Flying', 'Kanto', 3, 'https://i.imgur.com/YsXnqF2.png', 'In battle, it flaps its wings at great speed to release highly toxic dust into the air.'),
(13, 'Weedle', 'Bug', 'Poison', 'Kanto', 3, 'https://i.imgur.com/T9MVSpf.png', 'Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.'),
(14, 'Kakuna', 'Bug', 'Poison', 'Kanto', 3, 'https://i.imgur.com/5KP3Iuz.png', 'Able to move only slightly. When endangered, it may stick out its stinger and poison its enemy.'),
(15, 'Beedrill', 'Bug', 'Poison', 'Kanto', 3, 'https://i.imgur.com/iX0oB2G.png', 'It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.'),
(16, 'Pidgey', 'Normal', 'Flying', 'Kanto', 3, 'https://i.imgur.com/hqD59aS.png', 'Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.'),
(17, 'Pidgeotto', 'Normal', 'Flying', 'Kanto', 3, 'https://i.imgur.com/tJha0pv.png', 'This Pokémon is full of vitality. It constantly flies around its large territory in search of prey.'),
(18, 'Pidgeot', 'Normal', 'Flying', 'Kanto', 3, 'https://i.imgur.com/Wt6nU2o.png', 'This Pokémon flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.'),
(19, 'Rattata', 'Normal', '', 'Kanto', 2, 'https://i.imgur.com/Pj3eqAw.png', 'Will chew on anything with its fangs. If you see one, you can be certain that 40 more live in the area.'),
(20, 'Raticate', 'Normal', '', 'Kanto', 2, 'https://i.imgur.com/BlFDjD7.png', 'Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.'),
(21, 'Spearow', 'Normal', 'Flying', 'Kanto', 2, 'https://i.imgur.com/MUHOsEc.png', 'Inept at flying high. However, it can fly around very fast to protect its territory.'),
(22, 'Fearow', 'Normal', 'Flying', 'Kanto', 2, 'https://i.imgur.com/0qtB9r8.png', 'A Pokémon that dates back many years. If it senses danger, it flies high and away, instantly.'),
(23, 'Ekans', 'Poison', '', 'Kanto', 2, 'https://i.imgur.com/zY6NNXA.png', 'The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.'),
(24, 'Arbok', 'Poison', '', 'Kanto', 2, 'https://i.imgur.com/lBNaJbx.png', 'The frightening patterns on its belly have been studied. Six variations have been confirmed.'),
(25, 'Pikachu', 'Electric', '', 'Kanto', 2, 'https://i.imgur.com/PJZtS98.png', 'Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.'),
(26, 'Raichu', 'Electric', '', 'Kanto', 2, 'https://i.imgur.com/DpLWR1b.png', 'Its long tail serves as a ground to protect itself from its own high-voltage power.'),
(27, 'Sandshrew', 'Ground', '', 'Kanto', 2, 'https://i.imgur.com/hS9xwBv.png', 'It loves to bathe in the grit of dry, sandy areas. By sand bathing, the Pokémon rids itself of dirt and moisture clinging to its body.'),
(28, 'Sandslash', 'Ground', '', 'Kanto', 2, 'https://i.imgur.com/1ylfavz.png', 'The drier the area Sandslash lives in, the harder and smoother the Pokémon’s spikes will feel when touched.'),
(29, 'Nidoran♀', 'Poison', '', 'Kanto', 3, 'https://i.imgur.com/XvhGNL0.png', 'Females are more sensitive to smells than males. While foraging, they’ll use their whiskers to check wind direction and stay downwind of predators.'),
(30, 'Nidorina', 'Poison', '', 'Kanto', 3, 'https://i.imgur.com/TVkMzSU.png', 'The horn on its head has atrophied. It’s thought that this happens so Nidorina’s children won’t get poked while their mother is feeding them.'),
(31, 'Nidoqueen', 'Poison', 'Ground', 'Kanto', 3, 'https://i.imgur.com/WX3kueZ.png', 'Nidoqueen is better at defense than offense. With scales like armor, this Pokémon will shield its children from any kind of attack.'),
(32, 'Nidoran♂', 'Poison', '', 'Kanto', 3, 'https://i.imgur.com/cB1Gzgx.png', 'The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.'),
(33, 'Nidorino', 'Poison', '', 'Kanto', 3, 'https://i.imgur.com/6RgUuOD.png', 'With a horn that’s harder than diamond, this Pokémon goes around shattering boulders as it searches for a moon stone'),
(34, 'Nidoking', 'Poison', 'Ground', 'Kanto', 3, 'https://i.imgur.com/p1wTxTX.png', 'When it goes on a rampage, it’s impossible to control. But in the presence of a Nidoqueen it’s lived with for a long time, Nidoking calms down.'),
(35, 'Clefairy', 'Fairy', '', 'Kanto', 3, 'https://i.imgur.com/atiSbcb.png', 'It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.'),
(36, 'Clefable', 'Fairy', '', 'Kanto', 3, 'https://i.imgur.com/k0Oa5x4.png', 'A timid fairy Pokémon that is rarely seen, it will run and hide the moment it senses people.'),
(37, 'Vulpix', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/gmpApra.png', 'While young, it has six gorgeous tails. When it grows, several new tails are sprouted.'),
(38, 'Ninetales', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/EebSzOo.png', 'It is said to live 1,000 years, and each of its tails is loaded with supernatural powers.'),
(39, 'Jigglypuff', 'Fairy', '', 'Kanto', 3, 'https://i.imgur.com/xUSIUKe.png', 'Jigglypuff has top-notch lung capacity, even by comparison to other Pokémon. It won’t stop singing its lullabies until its foes fall asleep.'),
(40, 'Wigglytuff', 'Fairy', 'Normal', 'Kanto', 3, 'https://i.imgur.com/Qj8Vc7P.png', 'The more air it takes in, the more it inflates. If opponents catch it in a bad mood, it will inflate itself to an enormous size to intimidate them.'),
(41, 'Zubat', 'Poison', 'Flying', 'Kanto', 3, 'https://i.imgur.com/EmqB5kS.png', 'It emits ultrasonic waves from its mouth to check its surroundings. Even in tight caves, Zubat flies around with skill.'),
(42, 'Golbat', 'Poison', 'Flying', 'Kanto', 3, 'https://i.imgur.com/b8yZoZf.png', 'It loves to drink other creatures’ blood. It’s said that if it finds others of its kind going hungry, it sometimes shares the blood it’s gathered.'),
(43, 'Oddish', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/z48441w.png', 'If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.'),
(44, 'Gloom', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/JThQgLi.png', 'Its pistils exude an incredibly foul odor. The horrid stench can cause fainting at a distance of 1.25 miles.'),
(45, 'Vileplume', 'Grass', 'Poison', 'Kanto', 3, 'https://i.imgur.com/NisMIc7.png', 'It has the world’s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.'),
(46, 'Paras', 'Bug', 'Grass', 'Kanto', 2, 'https://i.imgur.com/qPJ3oZ6.png', 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.'),
(47, 'Parasect', 'Bug', 'Grass', 'Kanto', 2, 'https://i.imgur.com/l600hsF.png', 'The bug host is drained of energy by the mushroom on its back. The mushroom appears to do all the thinking.'),
(48, 'Venonat', 'Bug', 'Posion', 'Kanto', 2, 'https://i.imgur.com/N9Bin3G.png', 'Its large eyes act as radar. In a bright place, you can see that they are clusters of many tiny eyes'),
(49, 'Venomoth', 'Bug', 'Posion', 'Kanto', 2, 'https://i.imgur.com/pai1vdo.png', 'The powdery scales on its wings are hard to remove from skin. They also contain poison that leaks out on contact.'),
(50, 'Diglett', 'Ground', '', 'Kanto', 2, 'https://i.imgur.com/ktUctju.png', 'If a Diglett digs through a field, it leaves the soil perfectly tilled and ideal for planting crops.'),
(51, 'Dugtrio', 'Ground', '', 'Kanto', 2, 'https://i.imgur.com/gOh4aq8.png', 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.'),
(52, 'Meowth', 'Normal', '', 'Kanto', 2, 'https://i.imgur.com/7CNO2uJ.png', 'It loves to collect shiny things. If it’s in a good mood, it might even let its Trainer have a look at its hoard of treasures.'),
(53, 'Persian', 'Normal', '', 'Kanto', 2, 'https://i.imgur.com/To8Opyc.png', 'Getting this prideful Pokémon to warm up to you takes a lot of effort, and it will claw at you the moment it gets annoyed.'),
(54, 'Psyduck', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/zr2PO00.png', 'Psyduck is constantly beset by headaches. If the Pokémon lets its strange power erupt, apparently the pain subsides for a while.'),
(55, 'Golduck', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/V01Rh0d.png', 'This Pokémon lives in gently flowing rivers. It paddles through the water with its long limbs, putting its graceful swimming skills on display.'),
(56, 'Mankey', 'Fighting', '', 'Kanto', 2, 'https://i.imgur.com/qDUKZqb.png', 'An agile Pokémon that lives in trees. It angers easily and will not hesitate to attack anything.'),
(57, 'Primeape', 'Fighting', '', 'Kanto', 2, 'https://i.imgur.com/hsFnUkS.png', 'It stops being angry only when nobody else is around. To view this moment is very difficult.'),
(58, 'Growlithe', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/vYp4XtW.png', 'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
(59, 'Arcanine', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/hH9fJQK.png', 'The sight of it running over 6,200 miles in a single day and night has captivated many people.'),
(60, 'Poliwag', 'Water', '', 'Kanto', 3, 'https://i.imgur.com/BC8upe6.png', 'For Poliwag, swimming is easier than walking. The swirl pattern on its belly is actually part of the Pokémon’s innards showing through the skin.'),
(61, 'Poliwhirl', 'Water', '', 'Kanto', 3, 'https://i.imgur.com/fJIaEA3.png', 'Staring at the swirl on its belly causes drowsiness. This trait of Poliwhirl’s has been used in place of lullabies to get children to go to sleep.'),
(62, 'Poliwrath', 'Water', 'Fighting', 'Kanto', 3, 'https://i.imgur.com/Um1q6NX.png', 'Its body is solid muscle. When swimming through cold seas, Poliwrath uses its impressive arms to smash through drift ice and plow forward.'),
(63, 'Abra', 'Psychic', '', 'Kanto', 3, 'https://i.imgur.com/DidyysW.png', 'This Pokémon uses its psychic powers while it sleeps. The contents of Abra’s dreams affect the powers that the Pokémon wields.'),
(64, 'Kadabra', 'Psychic', '', 'Kanto', 3, 'https://i.imgur.com/09dGJjs.png', 'Using its psychic power, Kadabra levitates as it sleeps. It uses its springy tail as a pillow.'),
(65, 'Alakazam', 'Psychic', '', 'Kanto', 3, 'https://i.imgur.com/lQUfd7n.png', 'It has an incredibly high level of intelligence. Some say that Alakazam remembers everything that ever happens to it, from birth till death.'),
(66, 'Machop', 'Fighting', '', 'Kanto', 3, 'https://i.imgur.com/u4bsVvz.png', 'Its whole body is composed of muscles. Even though it’s the size of a human child, it can hurl 100 grown-ups.'),
(67, 'Machoke', 'Fighting', '', 'Kanto', 3, 'https://i.imgur.com/z0PpyKh.png', 'Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.'),
(68, 'Machamp', 'Fighting', '', 'Kanto', 3, 'https://i.imgur.com/TP13rYV.png', 'It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles.'),
(69, 'Bellsprout', 'Grass', 'Poision', 'Kanto', 3, 'https://i.imgur.com/DKgJVdv.png', 'Prefers hot and humid places. It ensnares tiny bugs with its vines and devours them.'),
(70, 'Weepinbell', 'Grass', 'Poision', 'Kanto', 3, 'https://i.imgur.com/vCh87EW.png', 'When hungry, it swallows anything that moves. Its hapless prey is dissolved by strong acids.'),
(71, 'Victreebel', 'Grass', 'Poision', 'Kanto', 3, 'https://i.imgur.com/df68f4T.png', 'Lures prey with the sweet aroma of honey. Swallowed whole, the prey is dissolved in a day, bones and all.'),
(72, 'Tentacool', 'Water', 'Poision', 'Kanto', 2, 'https://i.imgur.com/ojyKRVH.png', 'Tentacool is not a particularly strong swimmer. It drifts across the surface of shallow seas as it searches for prey.'),
(73, 'Tentacruel', 'Water', 'Poision', 'Kanto', 2, 'https://i.imgur.com/jpraAX2.png', 'When the red orbs on Tentacruel’s head glow brightly, watch out. The Pokémon is about to fire off a burst of ultrasonic waves.'),
(74, 'Geodude', 'Rock', 'Ground', 'Kanto', 3, 'https://i.imgur.com/tf8ycbB.png', 'Commonly found near mountain trails and the like. If you step on one by accident, it gets angry.'),
(75, 'Graveler', 'Rock', 'Ground', 'Kanto', 3, 'https://i.imgur.com/RNRmGO9.png', 'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.'),
(76, 'Golem', 'Rock', 'Ground', 'Kanto', 3, 'https://i.imgur.com/RRGvhHT.png', 'Once it sheds its skin, its body turns tender and whitish. Its hide hardens when it’s exposed to air.'),
(77, 'Ponyta', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/keSsyJr.png', 'It can’t run properly when it’s newly born. As it races around with others of its kind, its legs grow stronger.'),
(78, 'Rapidash', 'Fire', '', 'Kanto', 2, 'https://i.imgur.com/8gD2M59.png', 'This Pokémon can be seen galloping through fields at speeds of up to 150 mph, its fiery mane fluttering in the wind.'),
(79, 'Slowpoke', 'Water', 'Psychic', 'Kanto', 2, 'https://i.imgur.com/B9yrBEZ.png', 'Slow-witted and oblivious, this Pokémon won’t feel any pain if its tail gets eaten. It won’t notice when its tail grows back, either.'),
(80, 'Slowbro', 'Water', 'Psychic', 'Kanto', 2, 'https://i.imgur.com/6Hli5RW.png', 'Slowpoke became Slowbro when a Shellder bit on to its tail. Sweet flavors seeping from the tail make the Shellder feel as if its life is a dream.'),
(81, 'Magnemite', 'Electric', 'Steel', 'Kanto', 3, 'https://i.imgur.com/Jo6fJ8o.png', 'At times, Magnemite runs out of electricity and ends up on the ground. If you give batteries to a grounded Magnemite, it’ll start moving again.'),
(82, 'Magneton', 'Electric', 'Steel', 'Kanto', 3, 'https://i.imgur.com/DZ4uCk4.png', 'This Pokémon is three Magnemite that have linked together. Magneton sends out powerful radio waves to study its surroundings.'),
(83, 'Farfetch’d', 'Normal', 'Flying', 'Kanto', 3, 'https://i.imgur.com/TmCPX3y.png', 'The stalk this Pokémon carries in its wings serves as a sword to cut down opponents. In a dire situation, the stalk can also serve as food.'),
(84, 'Doduo', 'Normal', 'Flying', 'Kanto', 2, 'https://i.imgur.com/UAHoXGO.png', 'Its short wings make flying difficult. Instead, this Pokémon runs at high speed on developed legs.'),
(85, 'Dodrio', 'Normal', 'Flying', 'Kanto', 2, 'https://i.imgur.com/dfnwhb1.png', 'One of Doduo’s two heads splits to form a unique species. It runs close to 40 mph in prairies.'),
(86, 'Seel', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/EdBbj2q.png', 'Loves freezing-cold conditions. Relishes swimming in a frigid climate of around 14 degrees Fahrenheit.'),
(87, 'Dewgong', 'Water', 'Ice', 'Kanto', 2, 'https://i.imgur.com/y7efMGs.png', 'Its entire body is a snowy white. Unharmed by even intense cold, it swims powerfully in icy waters.'),
(88, 'Grimer', 'Poison', '', 'Kanto', 2, 'https://i.imgur.com/HTsoE0i.png', 'Made of congealed sludge. It smells too putrid to touch. Even weeds won’t grow in its path.'),
(89, 'Muk', 'Poison', '', 'Kanto', 2, 'https://i.imgur.com/QUwYfMg.png', 'Smells so awful, it can cause fainting. Through degeneration of its nose, it lost its sense of smell.'),
(90, 'Shellder', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/a74qem3.png', 'It swims facing backward by opening and closing its two-piece shell. It is surprisingly fast.'),
(91, 'Cloyster', 'Water', 'Ice', 'Kanto', 2, 'https://i.imgur.com/QOFm09S.png', 'Its shell is extremely hard. It cannot be shattered, even with a bomb. The shell opens only when it is attacking.'),
(92, 'Gastly', 'Ghost', 'Poison', 'Kanto', 2, 'https://i.imgur.com/KlIGhyg.png', 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
(93, 'Haunter', 'Ghost', 'Poison', 'Kanto', 2, 'https://i.imgur.com/EKxo4G5.png', 'Its tongue is made of gas. If licked, its victim starts shaking constantly until death eventually comes.'),
(94, 'Gengar', 'Ghost', 'Poison', 'Kanto', 2, 'https://i.imgur.com/kw4dDlX.png', 'On the night of a full moon, if shadows move on their own and laugh, it must be Gengar’s doing.'),
(95, 'Onix', 'Rock', 'Ground', 'Kanto', 2, 'https://i.imgur.com/jdhu72B.png', 'As it digs through the ground, it absorbs many hard objects. This is what makes its body so solid.'),
(96, 'Drowzee', 'Psychic', '', 'Kanto', 2, 'https://i.imgur.com/YJHBUEQ.png', 'If you sleep by it all the time, it will sometimes show you dreams it had eaten in the past.'),
(97, 'Hypno', 'Psychic', '', 'Kanto', 2, 'https://i.imgur.com/oOVX6yD.png', 'Avoid eye contact if you come across one. It will try to put you to sleep by using its pendulum.'),
(98, 'Krabby', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/2oO03F1.png', 'It can be found near the sea. The large pincers grow back if they are torn out of their sockets.'),
(99, 'Kingler', 'Water', '', 'Kanto', 2, 'https://i.imgur.com/nNjYWXq.png', 'Its large and hard pincer has 10,000-horsepower strength. However, being so big, it is unwieldy to move.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
