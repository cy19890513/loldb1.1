DROP TABLE IF EXISTS `champions`;
CREATE TABLE IF NOT EXISTS `champions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `championName` varchar(255) DEFAULT NULL,
  `badAgainst1` varchar(255) DEFAULT NULL,
  `badAgainst2` varchar(255) DEFAULT NULL,
  `badAgainst3` varchar(255) DEFAULT NULL,
  `badAgainst4` varchar(255) DEFAULT NULL,
  `badAgainst5` varchar(255) DEFAULT NULL,
  `badAgainst6` varchar(255) DEFAULT NULL,
  `goodAgainst1` varchar(255) DEFAULT NULL,
  `goodAgainst2` varchar(255) DEFAULT NULL,
  `goodAgainst3` varchar(255) DEFAULT NULL,
  `goodAgainst4` varchar(255) DEFAULT NULL,
  `goodAgainst5` varchar(255) DEFAULT NULL,
  `goodAgainst6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `champions` (`id`, `championName`, `badAgainst1`,`badAgainst2`,`badAgainst3`,`badAgainst4`,`badAgainst5`,`badAgainst6`,`goodAgainst1`,`goodAgainst2`,`goodAgainst3`,`goodAgainst4`,`goodAgainst5`,`goodAgainst6`) VALUES
(NULL, 'Aatrox', 'Jax','Fiora','Pantheon','Teemo','Renekton','Riven','Yasuo','Darius','Akali','Katarina','Zed','Ryze'),
(NULL, 'Ahri', 'LeBlanc','Swain','Yasuo','Diana','Talon','Syndra','Karthus','Azir','Katarina','Gragas',"Vel'Koz",'Xerath'),
(NULL, 'Akali', 'Lee Sin','Rumble','Mordekaiser','Annie','Syndra','Malzahar','Karthus','Yasuo','Teemo',"Vel'Koz",'Nidalee','Yasuo'),
(NULL, 'Alistar', 'Janna','Vayne','Caitlyn','Tristana','Lulu','Morgana','Blitzcrank','Leona','Thresh','Katarina','Braum','Yasuo'),
(NULL, 'Amumu', 'Shyvana','Xin Zhao','Lee Sin','Shaco','Dr.Mundo','Olaf','Blitzcrank','Graves','Jax','Yasuo','Ryze','Renekton'),
(NULL, 'Anivia', 'Fizz','Kassadin','Diana','LeBlanc','Orianna','Syndra','Ryze','Lissandra','Kayle','Karthus','Heimerdinger','Yasuo'),
(NULL, 'Annie', 'Brand','Orianna','LeBlanc','Syndra','Morgana','Lux','Yasuo','Akali','Fizz','LeBlanc','Kayle','Katarina'),
(NULL, 'Ashe', 'Ezreal',"Kha'Zix",'Jinx','Graves','Sivir','Caitlyn','Bard','Vayne','Udyr',"Kog'Maw",'Jinx','Draven'),
(NULL, 'Azir', 'Ziggs','Talon','Xerath','Syndra','Fizz','Zed','Yasuo','Teemo','Heimerdinger','Nasus','Yasuo','Katarina'),
(NULL, 'Bard', 'Morgana','Teemo','Blitzcrank','Sivir','Thresh','Soraka','Urgot','Yorick','Heimerdinger','Nasus','Udyr','Sona'),
(NULL, 'Blitzcrank', 'Morgana','Alistar','Leona','Sivir','Ezreal','Thresh',"Kog'Maw",'Sona','Draven','Varus','Katarina','Caitlyn'),
(NULL, 'Brand', 'Kassadin','Zed','Galio','LeBlanc','Syndra','Fizz','Annie','Ziggs','Ryze','Malzahar','Heimerdinger','Lissandra'),
(NULL, 'Braum', 'Morgana','Zyra','Karma','Lulu','Vayne','Leona','Caitlyn','Blitzcrank','Miss Fortune','Lucian','Galio','Thresh'),
(NULL, 'Caitlyn', 'Sivir','Jinx','Braum','Varus','Jinx','Yasuo','Vayne','Quinn','Bard','Corki','Graves','Twitch'),
(NULL, 'Cassiopeia', 'Galio','Diana','Talon','Veigar','LeBlanc','Syndra','Ryze','Mordekaiser','Yasuo','Fizz','Nunu','Katarina'),
(NULL, "Cho'Gath", "Kog'Maw",'Warwick','Vayne','Jax','Lee Sin','Renekton','Yorick','Riven','Diana','Katarina','Teemo','Malphite'),
(NULL, 'Corki', 'Caitlyn','Draven','Zilean','LeBlanc','Ashe','Varus','Jinx','Tristana','Twitch','Vayne','Graves','Ezreal'),
(NULL, 'Darius', 'Yorick','Kayle','Jayce','Zed','Pantheon','Teemo','Yasuo','Fiora','Wukong','Riven','Nasus','Gnar'),
(NULL, 'Diana', 'Mordekaiser',"Cho'Gath",'Irelia','Syndra','Heimerdinger','Riven','Katarina','Kennen','Twisted Fate','LeBlanc','Ahri','Akali'),
(NULL, 'Dr.Mundo', 'Olaf',"Kog'Maw",'Trundle','Riven','Fizz','Darius','Teemo','Tryndamere','Singed','Jax','Nasus','Maokai'),
(NULL, 'Draven', 'Varus','Thresh','Blitzcrank','Nami','Quinn','Caitlyn','Ezreal','Vayne','Jinx','Lucian','Tristana','Miss Fortune'),
(NULL, 'Ekko', 'LeBlanc',"Cho'Gath",'Diana','Tryndamere','Yasuo','Heimerdinger','Rengar','Rengar','Nasus','Lee Sin','Akali','Fiora'),
(NULL, 'Elise', 'Kassadin','Yorick','Wukong','Mordekaiser','Gangplank','Malzahar','Pantheon','Singed','Renekton','Shyvana','Olaf','Darius'),
(NULL, 'Evelynn', 'Ekko','Ryze','Mordekaiser','Kassadin','Cassiopeia','Xin Zhao','Fiddlesticks','Karthus','Gragas','Sejuani','Fizz','Talon'),
(NULL, 'Ezreal', 'Draven','Graves','Bard','Miss Fortune','Akali','Twitch','Jinx','Ashe','Blitzcrank','Lucian','Jinx','Nami'),
(NULL, 'Fiddlesticks', 'Janna','Evelynn','Xin Zhao',"Cho'Gath",'Diana','Kassadin','Katarina','Vladimir','Akali','Fizz','LeBlanc','Yasuo'),
(NULL, 'Fiora', 'Jax','Pantheon','Darius','Renekton','Malphite','Singed','Yasuo','Gangplank','Gnar','Aatrox','Rengar','Nasus'),
(NULL, 'Fizz', 'Kayle','Lissandra','Ryze','Mordekaiser','LeBlanc','LeBlanc','Karthus','Twisted Fate','Ekko',"Vel'Koz",'Veigar','Katarina'),
(NULL, 'Galio', 'Irelia','Udyr','Malphite','Braum','Riven','Yasuo','LeBlanc','Cassiopeia','Brand','Malzahar','Veigar','Swain'),
(NULL, 'Gangplank', 'Pantheon','Fiora','Riven','Udyr','Jax','Poppy','Malzahar','Kassadin','Lee Sin','Aatrox','Nasus','Elise'),
(NULL, 'Garen', 'Teemo','Darius','Pantheon','Elise','Gnar','Yorick','Riven','Akali','Irelia','Jax','Nasus','Wukong'),
(NULL, 'Gnar', 'Pantheon','Nidalee','Irelia','Fiora','Jayce','Vladimir','Soraka','Jax','Singed','Garen','Nasus','Renekton'),
(NULL, 'Gragas', 'Yasuo','Yasuo','Ahri','LeBlanc','Syndra','Ziggs','Lux','Karthus','Kayle','Xerath','Orianna','Katarina'),
(NULL, 'Graves', 'Sivir','Caitlyn','Urgot','Corki','Miss Fortune','Draven','Varus','Ezreal','Vayne','Jinx','Lucian','Ashe'),
(NULL, 'Hecarim', 'Nasus','Sejuani','Aatrox','Vi','Darius','Sejuani',"Kha'Zix",'Ahri','Janna','Master Yi','Soraka','Akali'),
(NULL, 'Heimerdinger', 'Syndra','Xerath','Malzahar','Lux','Ziggs',"Vel'Koz",'Katarina','Kassadin','Yasuo','Diana','Akali','LeBlanc'),
(NULL, 'Irelia', 'Olaf','Udyr','Garen','Darius','Pantheon','Nasus','Zed','Gnar','Diana','Aatrox','Galio','Ryze'),
(NULL, 'Janna', 'Sona','Fiddlesticks','Nami','Nidalee','Sivir','Blitzcrank','Kennen','Alistar','Fiddlesticks','Leona','Morgana','Thresh'),
(NULL, 'Jarven IV', 'Yorick','Vi','Renekton','Elise','Jax','Lee Sin','Vladimir','Ryze','Kayle','Riven','Nasus','Teemo'),
(NULL, 'Jax', 'Malphite','Pantheon','Ryze','Renekton','Singed','Gnar','Yasuo','Aatrox','Fiora','Master Yi','Xin Zhao','Zed'),
(NULL, 'Jayce', 'Yorick','Xin Zhao','Fiora','Pantheon','Nidalee','Irelia','Darius','Shen','Gnar','Jax',"Kha'Zix",'Singed'),
(NULL, 'Jinx', 'Ezreal','Corki','Sivir','Varus','Draven','Quinn','Caitlyn','Caitlyn','Ashe','Twitch','Tristana',"Kog'Maw"),
(NULL, 'Kalista', 'Ashe','Caitlyn','Vayne','Quinn','Graves','Talon','Ezreal','Thresh','Jinx','Sivir','Twitch','Xerath'),
(NULL, 'Karma', 'Veigar','Malzahar','Swain','Nami','Xerath','Talon','Morgana','LeBlanc','Braum','Leona','Fizz','Vi'),
(NULL, 'Karthus', 'Soraka','Kassadin','Fizz','LeBlanc','Lux','Veigar','Heimerdinger','Yasuo','Karma',"Vel'Koz",'Teemo','Heimerdinger'),
(NULL, 'Kassadin', 'Talon','Kennen','Pantheon','Heimerdinger',"Kha'Zix",'Mordekaiser','Karthus','Lissandra','Brand','Elise','Veigar','Katarina'),
(NULL, 'Katarina', 'Diana','Fiddlesticks','Lulu','Lissandra','Malzahar','Riven','Karthus',"Vel'Koz",'Nidalee','Zyra','Akali','Veigar'),
(NULL, 'Kayle', 'Annie','Pantheon','Orianna','Ziggs','Xin Zhao','Gragas','Zed','Darius','Yasuo','Fizz','Zed','Singed'),
(NULL, 'Kennen', 'Diana','Janna','Yorick','Swain','Ryze','Vladimir','Kassadin','Riven','Renekton','Olaf','Katarina','Singed'),
(NULL, "Kha'Zix", 'Lee Sin','Yorick','Pantheon','Jayce','Rengar','Tryndamere','Kassadin','Ashe','Yasuo','Twisted Fate','Fizz','Akali'),
(NULL, "Kog'Maw", 'Blitzcrank','Lucian','Miss Fortune','Ashe','Teemo','Poppy','Dr.Mundo',"Cho'Gath",'Vayne','Sivir','Olaf','Caitlyn'),
(NULL, 'LeBlanc', 'Galio','Morgana','Diana','Syndra','Talon','Annie',"Vel'Koz",'Karthus','Ahri','Ziggs','Fizz','Katarina'),
(NULL, 'Lee Sin', 'Trundle','Udyr','Udyr','Pantheon','Garen','Riven','Akali','Shaco','Wukong',"Kha'Zix",'Talon','Twitch'),
(NULL, 'Leona', 'Morgana','Alistar','Lulu','Janna','Karma','Thresh','Blitzcrank','Sona','Varus','Braum','Draven','Caitlyn'),
(NULL, 'Lissandra', 'Kassadin','Diana','Syndra','Brand','LeBlanc','Anivia','Katarina','Zed','Fizz','Akali','Ahri','Katarina'),
(NULL, 'Lucian', 'Vayne','Draven','Tristana','Graves','Vayne','Caitlyn','Varus','Jinx','Tristana',"Kog'Maw",'Caitlyn','Thresh'),
(NULL, 'Lulu', 'Syndra','Soraka','Sona','Brand','Morgana','Ziggs','Katarina','Thresh','Leona','Akali','Braum','Nami'),
(NULL, 'Lux', 'Talon','Yasuo','Fizz','Gragas','Kassadin','Orianna','Karthus','Ryze','Heimerdinger','Mordekaiser','Brand','Swain'),
(NULL, 'Malphite', 'Zac','Rumble',"Cho'Gath",'Olaf','Yorick','Shen','Jax','Fiora','Xin Zhao','Nasus','Pantheon','Riven'),
(NULL, 'Malzahar', 'Gangplank','Galio','Morgana','Syndra','Annie','Brand','Katarina','Yasuo','Zed','Akali','Heimerdinger','Vladimir'),
(NULL, 'Maokai', 'Shyvana','Nasus','Swain','Yorick','Pantheon','Dr.Mundo','Riven','Kassadin','Volibear','Fiora','Katarina','Darius'),
(NULL, 'Master Yi', 'Jax','Pantheon','Teemo','Tryndamere','Rammus',"Cho'Gath",'Karthus','Twisted Fate','Ashe','Bard','Lux','Yasuo'),
(NULL, 'Miss Fortune', 'Tristana','Draven','Braum','Quinn','Caitlyn','Taric','Ezreal','Soraka','Vayne',"Kog'Maw",'Graves','Lucian'),
(NULL, 'Mordekaiser', 'Lux','Zyra','Yorick','Cassiopeia','Malzahar','Garen','Diana','Akali','Fizz','Talon','Kassadin','Yasuo'),
(NULL, 'Morgana', 'Karma','Talon','Zed','Akali','Vladimir','Fizz','Braum','Blitzcrank','Leona','LeBlanc','Thresh','Akali'),
(NULL, 'Nami', 'Lulu','Ezreal','Fizz','Leona','Blitzcrank','Morgana','Draven','Taric','Thresh','Braum','Janna','Urgot'),
(NULL, 'Nasus', 'Teemo','Olaf','Pantheon','Rumble','Ryze','Darius','Hecarim','Zed','Irelia','Wukong','Jax','Maokai'),
(NULL, 'Nautilus', 'Shyvana','Shaco','Kennen','Yorick','Aatrox','Lee Sin','Katarina','Blitzcrank','Evelynn','Tryndamere','Anivia','Irelia'),
(NULL, 'Nidalee', 'Yasuo','Pantheon','Zed','Fizz','LeBlanc','Akali','Gnar','Vladimir','Karthus',"Vel'Koz",'Jayce','Singed'),
(NULL, 'Nocturne', 'Lee Sin','Olaf','Udyr','Vi','Jax','Graves','Kassadin','Twisted Fate','Lee Sin','Darius','Elise','Riven'),
(NULL, 'Nunu', 'Cassiopeia','Sona','Sivir','Soraka','Riven','Taric','Renekton','Heimerdinger','Yorick','Jax','Singed','Teemo'),
(NULL, 'Olaf', 'Kayle','Yorick','Elise','Kennen','Pantheon','Volibear','Dr.Mundo','Irelia','Nasus','Pantheon','Poppy','Shyvana'),
(NULL, 'Orianna', 'Syndra','Ziggs','Zed','LeBlanc','Diana','Ahri','Ryze','Kayle','Annie','Karthus','Lux','Yasuo'),
(NULL, 'Pantheon', 'Olaf','Elise','Shen','Udyr','Malphite','Darius','Gangplank','Fiora','Riven','Kassadin','Nasus','Jax'),
(NULL, 'Poppy', 'Olaf','Darius','Teemo','Kennen','Shen','Rumble','Gangplank','Jax','Vi','Nasus','Riven',"Kha'Zix"),
(NULL, 'Quinn', 'Caitlyn','Varus','Caitlyn','Miss Fortune','Graves','Tristana','Vayne','Jinx','Riven','Bard','Draven','Ashe'),
(NULL, 'Rammus', 'Trundle','Ekko','Vi','Soraka','Shyvana','Olaf','Tryndamere','Master Yi','Yasuo','Fiora','Xin Zhao','Aatrox'),
(NULL, "Rek'Sai", 'Fizz','Jayce','Darius','Kennen','Gangplank','Irelia','Evelynn','Rengar','Nasus','Rammus','Shaco',"Kha'Zix"),
(NULL, 'Renekton', 'Vayne','Trundle','Nunu','Elise','Ryze','Ryze','Fiora','Jax','Akali','Aatrox','Yasuo','Wukong'),
(NULL, 'Rengar', 'Jax','Fiora','Pantheon','Renekton','Darius','Lee Sin',"Kha'Zix",'Nasus','Aatrox','Riven','Yorick',"Kha'Zix"),
(NULL, 'Riven', 'Garen','Pantheon','Kennen','Volibear',"Cho'Gath",'Darius','Katarina','Vi','Yasuo','Gangplank','Aatrox','Dr.Mundo'),
(NULL, 'Rumble', 'Yorick','Viktor','Darius','Elise','Tryndamere','Xin Zhao','Malphite','Akali','Nasus','Teemo','Jax','Renekton'),
(NULL, 'Ryze', 'Cassiopeia','Xerath','Orianna','Ziggs','Yorick','Anivia','Fizz','Jax','Nasus','Renekton','Evelynn','Renekton'),
(NULL, 'Sejuani', 'Xin Zhao','Evelynn','Lee Sin','Vi','Pantheon','Elise','Hecarim','Katarina','Hecarim','Hecarim','Aatrox','Darius'),
(NULL, 'Shaco', 'Lee Sin','Udyr','Vi','Ekko','Shyvana','Warwick','Amumu','Nautilus','Master Yi','Maokai','Zed',"Kha'Zix"),
(NULL, 'Shen', 'Yorick','Jayce','Warwick','Vladimir','Teemo','Lee Sin','Pantheon','Malphite','Fiora','Riven','Poppy','Zed'),
(NULL, 'Shyvana', 'Olaf','Trundle','Pantheon','Ryze','Elise','Darius','Nautilus','Amumu','Maokai','Nasus','Wukong','Renekton'),
(NULL, 'Singed', 'Teemo','Kayle','Elise','Vladimir','Pantheon','Jayce','Karthus','Jax','Fiora','Zed','Tryndamere','Pantheon'),
(NULL, 'Sion', 'Garen','Riven','Pantheon','Darius','Morgana','Jax','LeBlanc','Kassadin','Nasus','Tryndamere','Aatrox','Renekton'),
(NULL, 'Sivir', 'Vayne','Draven','Twitch',"Kog'Maw",'Tristana',"Kha'Zix",'Caitlyn','Jinx','Blitzcrank','Graves','Varus','Taric'),
(NULL, 'Skarner', 'Morgana',"Cho'Gath",'Xin Zhao','Ashe','Nunu','Olaf','Mordekaiser','Warwick','Vi','Akali','Rengar','Katarina'),
(NULL, 'Sona', 'Blitzcrank','Leona','Thresh','Miss Fortune','Draven','Orianna','Janna','Trundle','Morgana','Lulu','Nunu','Braum'),
(NULL, 'Soraka', 'Gnar','Miss Fortune','Blitzcrank','Tristana','Varus','Zac','Karthus','Yasuo','Urgot','Wukong','Katarina','Lulu'),
(NULL, 'Swain', 'Viktor','Syndra','LeBlanc','Lux','Galio','Cassiopeia','Vladimir','Yasuo','Ahri','Talon','Kennen','Akali'),
(NULL, 'Syndra', 'Fizz','Kayle','Talon','Morgana','Yasuo','Lux','Heimerdinger','Akali','LeBlanc','Orianna','Ziggs','Ahri'),
(NULL, 'Talon', 'Lee Sin','Kayle','Pantheon','Mordekaiser','Yorick','Swain','Kassadin','Lux','Veigar','Ziggs','Morgana','Azir'),
(NULL, 'Taric', 'Sivir','Lulu','Morgana','Nami','Corki','Varus','Zed','Ashe','Blitzcrank','Miss Fortune','Vayne','Draven'),
(NULL, 'Teemo', 'Yorick','Pantheon','Akali',"Cho'Gath",'Rumble','Zed','Tryndamere','Nasus','Singed','Garen','Volibear','Aatrox'),
(NULL, 'Thresh', 'Lulu','Morgana','Alistar','Janna','Lucian','Zyra','Draven','Blitzcrank','Sona','Leona','Caitlyn','Varus'),
(NULL, 'Tristana', 'Corki','Diana','Lucian','Draven','Sivir','Twitch','Miss Fortune','Vayne','Lucian','Jinx','Katarina','Caitlyn'),
(NULL, 'Trundle', 'Vladimir','Darius','Pantheon','Teemo','Kennen','Sona','Lee Sin','Renekton','Shyvana','Dr.Mundo','Nasus','Rammus'),
(NULL, 'Tryndamere', 'Teemo','Rammus','Pantheon','Renekton','Jax',"Cho'Gath",'Yasuo','Master Yi','Aatrox','Zed','Rumble',"Kha'Zix"),
(NULL, 'Twisted Fate', 'Fizz','Diana','Kassadin','LeBlanc','Yasuo','Akali','Ryze','Lissandra','Aatrox','Ziggs','Evelynn','Vladimir'),
(NULL, 'Twitch', 'Lee Sin','Caitlyn','Corki','Jinx','Draven','Quinn','Ezreal','Vayne','Sivir','Tristana','Jinx','Vayne'),
(NULL, 'Udyr', 'Ashe','Elise','Jax','Teemo','Kayle','Trundle','Irelia','Lee Sin','Lee Sin','Pantheon','Gangplank','Galio'),
(NULL, 'Urgot', 'Soraka','Vayne','Twitch','Sivir','Fizz','Nami','Graves','Jinx','Vayne','Nasus','Ashe','Corki'),
(NULL, 'Varus', 'Graves','Lucian','Sivir','Blitzcrank','Tristana','Leona','Draven','Jinx','Caitlyn','Vayne','Quinn','Ashe'),
(NULL, 'Vayne', 'Caitlyn','Quinn','Draven','Tristana','Ashe','Twitch','Lucian','Renekton','Sivir',"Cho'Gath",'Lucian','Bard'),
(NULL, 'Veigar', 'Fizz','Talon','Zed','Kassadin','Ziggs','LeBlanc','Karthus','Katarina','Cassiopeia','Twisted Fate','Ziggs','LeBlanc'),
(NULL, "Vel'Koz", 'Yasuo','LeBlanc','Fizz','Talon','Zed','Akali','Heimerdinger','Teemo','Annie','Orianna','Twisted Fate','Malzahar'),
(NULL, 'Vi', 'Riven','Pantheon','Lee Sin','Jax','Darius','Teemo','Zac','Katarina','Jarven IV','Hecarim','Rammus','Shaco'),
(NULL, 'Viktor', 'Ziggs','Syndra','Zed','Lux','LeBlanc','Talon','Swain','Katarina','Rumble','Karthus','Fizz','Yasuo'),
(NULL, 'Vladimir', 'Swain','Fiddlesticks','Jarven IV','Malzahar','Xin Zhao','Irelia','Zed','Gnar','Singed','Trundle','Shen','Nasus'),
(NULL, 'Volibear', 'Teemo','Elise','Darius','Renekton','Kayle','Pantheon','Riven','Nasus','Olaf','Xin Zhao','Renekton','Irelia'),
(NULL, 'Warwick', 'Yorick','Renekton','Udyr','Kayle','Olaf','Aatrox',"Cho'Gath",'Shen','Renekton','Dr.Mundo','Nasus','Singed'),
(NULL, 'Wukong', 'Lee Sin','Darius','Pantheon','Olaf','Renekton','Garen','Zed','Teemo','Aatrox','Gnar','Jax','Ryze'),
(NULL, 'Xerath', 'Gragas','Ahri','Zed','Syndra','Fizz','Kassadin','Ryze','Heimerdinger','Ziggs','Azir','Nidalee','Karthus'),
(NULL, 'Xin Zhao', 'Jax','Malphite','Pantheon','Malphite','Fiora','Teemo','Yasuo','Vladimir','Jayce','Kayle','Riven','Rumble'),
(NULL, 'Yasuo', 'Jax','Fiora','Malzahar','Swain','Kayle','Darius',"Vel'Koz",'Nidalee','Gragas','Ahri','Lux','Ziggs'),
(NULL, 'Yorick', "Cho'Gath",'Nunu','Trundle','Xin Zhao','Aatrox','Renekton','Teemo','Darius','Shen','Jayce','Rumble','Ryze'),
(NULL, 'Zac', 'Vi','Zilean','Vladimir','Yorick','Renekton','Fizz','Malphite','Jax','Katarina','Nasus','Renekton','Singed'),
(NULL, 'Zed', 'Kayle','Jax','Lissandra','Kayle','Malzahar','Irelia','Nidalee','Veigar','Brand',"Vel'Koz",'Orianna','Darius'),
(NULL, 'Ziggs', 'LeBlanc','Talon','Syndra','Brand','Xerath','Yasuo','Azir','Ryze','Orianna','Heimerdinger','Veigar','Kayle'),
(NULL, 'Zilean', 'Annie','Morgana','Kassadin','Viktor','Karma','Lux','Zac','Zed','Yasuo','Katarina','Yasuo','Braum'),
(NULL, 'Zyra', 'Fizz','Katarina','LeBlanc','Talon','Diana','Kassadin','Braum','Mordekaiser','Thresh','Ryze','Karthus','Leona');



