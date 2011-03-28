# Sequel Pro dump
# Version 2210
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.37)
# Database: ahuber_web
# Generation Time: 2011-03-21 01:35:22 -0400
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table about
# ------------------------------------------------------------

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` tinyint(1) unsigned NOT NULL,
  `description` text NOT NULL,
  `bioHeadline` varchar(255) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `bioImage` varchar(20) NOT NULL,
  `expertise` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `resumeURL` varchar(2083) NOT NULL DEFAULT '',
  `twitterURL` varchar(2083) NOT NULL DEFAULT '',
  `flickrURL` varchar(2083) NOT NULL DEFAULT '',
  `linkedInURL` varchar(2083) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` (`id`,`description`,`bioHeadline`,`bio`,`bioImage`,`expertise`,`email`,`resumeURL`,`twitterURL`,`flickrURL`,`linkedInURL`)
VALUES
	(1,'<span class=\"highlight\">Amanda Huber</span> is a Manhattan based designer who delights in summer tomatoes and the curves of letters.','<h1>Designer. Strategist. Font Snob.</h1>','The best graphic communication combines a deep cultural and historical knowledge with an imaginative and critical eye. My degrees in Art History from Duke University and Communication Design from the Parsons School of Design have prepared me for both aspects of being a graphic designer.\n\nWhether I am working on a logo, website, or invitation, my design solutions are conceptually driven with a focus on the end user. Visually, my work is characterized by strong typography, memorable images, and a clean aesthetic. I am a reliable and conscientious teammate, and collaboration leads to my best work.\n\nWhen I am not designing, you might find me upside-down in yoga, experimenting in the kitchen, or perusing the farmers market. Thanks for your visit and please don\'t hesitate to get in touch.','','identity design<br />\ncross-platform branding<br />\nart direction<br />\nprint and online advertising<br />\nproduct naming<br />\nweb design & interactive<br />\nuser experience<br />\ninformation architecture<br />\nmarketing collateral','amanda.huber@me.com','amanda_huber_resume_2011.pdf','http://twitter.com/amandahuber','http://www.flickr.com/photos/95752453@N00/','http://www.linkedin.com/pub/amanda-huber/4/274/b2a');

/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projectImages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projectImages`;

CREATE TABLE `projectImages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `projectId` int(11) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

LOCK TABLES `projectImages` WRITE;
/*!40000 ALTER TABLE `projectImages` DISABLE KEYS */;
INSERT INTO `projectImages` (`id`,`projectId`,`url`,`position`)
VALUES
	(1,1,'e1f27mc5swg3.png',1),
	(2,1,'7hf005ahdarf.png',2),
	(3,1,'aem5edb7a4y8.png',3),
	(4,1,'cvwfs74x6ypj.png',4),
	(5,2,'7j4aov93ql10.jpg',1),
	(6,2,'71a8yd23ugbe.jpg',2),
	(7,2,'c6m8utdzmxrt.jpg',3),
	(8,2,'79r325cx5b93.jpg',4),
	(9,2,'fkzkl4bwybw6.jpg',5),
	(10,2,'9kvvsk576w9q.jpg',6),
	(11,3,'2sccoddvfw6d.jpg',1),
	(12,3,'7m5qbsaouvhz.jpg',2),
	(13,3,'e0pgbtcr25q8.jpg',3),
	(14,3,'6xfg3hbxyqus.jpg',4),
	(15,4,'9cgppnexaruy.png',1),
	(16,5,'c45crp5tysmb.jpg',1),
	(17,5,'gak6kla2mqwm.gif',2),
	(18,5,'35yn8xdejvnr.gif',3),
	(19,6,'cprkbngb80qh.jpg',1),
	(20,6,'asjoycdau0cp.jpg',2),
	(21,6,'ae2bpzfeldzj.jpg',3),
	(22,6,'cz12v6ci46yr.jpg',4),
	(23,6,'fx534f5w46qw.jpg',5),
	(24,7,'7e5m5ida2p2l.png',1),
	(25,7,'dji6kh39qhl1.jpg',2),
	(26,7,'akvb80av435e.gif',3),
	(27,8,'6y3vtr9zv1jr.jpg',1),
	(28,8,'am67f2d50vib.jpg',2),
	(29,9,'9rco4v9uwh70.jpg',1),
	(30,9,'bm5rkc32ox1t.jpg',2),
	(31,9,'f03c7p55hvdx.jpg',3),
	(32,9,'bfebcsdq551b.jpg',4),
	(33,9,'fys6221zth2o.jpg',5),
	(34,9,'3ql3rtb6uxsi.jpg',6),
	(35,9,'bw0k0e6ii2kg.jpg',7),
	(36,10,'7lj6tf7t8vfw.png',1),
	(37,10,'4iznf23v6j10.png',2),
	(38,10,'74qgui2zoebc.png',3),
	(39,10,'64d7mj4xsxhx.png',4),
	(40,10,'52a9dhdmwp32.png',5),
	(41,10,'75cguo7ez049.png',6),
	(42,11,'9ocugfcqezbp.jpg',1),
	(43,11,'avsgkxdd3o8o.jpg',2),
	(44,11,'9reu03epg663.jpg',3),
	(45,11,'axz98ibocuh9.jpg',4),
	(46,11,'dohm5o5og7tg.jpg',5),
	(47,11,'34jfuu8ekcxb.png',6),
	(48,11,'818es768mw34.jpg',7),
	(49,12,'c2u5h84rh7uv.png',1),
	(50,12,'5gkpb57ifk4m.jpg',2),
	(51,12,'42wgdg9k69fc.jpg',3),
	(52,12,'b7228iekxre2.jpg',4),
	(53,12,'79gb68agt01l.jpg',5),
	(54,12,'4o5oen80sztg.jpg',6),
	(55,12,'6s2d3tcyvllz.jpg',7),
	(56,13,'22u6zn6y9p4m.jpg',1),
	(57,13,'eco98r86jmc4.jpg',2),
	(58,14,'c7hdridwtczb.jpg',1),
	(59,14,'dou4mc3a9n5i.png',2),
	(60,14,'82arjib6640e.jpg',3),
	(61,14,'edsgdz1wzmbp.png',4),
	(62,14,'a1e1267lrnl2.jpg',5),
	(63,15,'eac4p05jmmy1.jpg',1),
	(64,15,'54l6pm6tfh01.jpg',2),
	(65,15,'fnuyidd8qgo7.jpg',3),
	(66,15,'8iqfxx74u22a.jpg',4),
	(67,15,'4aspnnbhvss9.jpg',5),
	(68,15,'a3851f3mztyn.jpg',6),
	(69,16,'86jh8je4br0l.png',1),
	(70,16,'byn5lydwkmee.jpg',2),
	(71,16,'fuk49i7zu458.jpg',3),
	(72,16,'atg6df89l046.jpg',4),
	(73,16,'4tf64xder70n.png',5),
	(74,16,'ch2l5z6312xd.jpg',6),
	(75,16,'e6l27e5ik6gd.jpg',7),
	(76,17,'fppq4scypm9k.png',1),
	(77,17,'5o8wjj8uxi7h.png',2),
	(78,17,'5fu434eprq05.png',3),
	(79,17,'a4cr0y546boq.jpg',4),
	(80,18,'dayhg66yhpe4.jpg',1),
	(81,18,'ct0qfjao93ba.jpg',2),
	(82,18,'7dyqgy23kl0s.jpg',3),
	(83,18,'esexix9wkl1s.jpg',4),
	(84,18,'b68ow7bvmkqk.jpg',5),
	(85,18,'ek4o026u50p4.jpg',6),
	(86,18,'6pys8j6ln5z4.jpg',7),
	(87,18,'b0h7ib2d7k5l.jpg',8),
	(88,18,'41wmt5326cwe.jpg',9),
	(89,19,'fkvbcfdy4rin.jpg',1),
	(90,19,'a3g99137565l.jpg',2),
	(91,19,'al3eikequp1z.jpg',3),
	(92,19,'ce4ygkg7b52y.jpg',4),
	(93,20,'3mf3tddlgebl.jpg',1),
	(94,20,'6k550g7fo2zg.jpg',2),
	(95,20,'9e2j377pfroo.jpg',3);

/*!40000 ALTER TABLE `projectImages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `categories` varchar(160) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `url` varchar(2083) NOT NULL DEFAULT '',
  `column` tinyint(1) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL DEFAULT '99',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `projectImages` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail` (`thumbnail`),
  KEY `column` (`column`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`,`title`,`categories`,`description`,`url`,`column`,`position`,`thumbnail`,`projectImages`)
VALUES
	(1,'Aesop\'s Fables','typographic illustration','This design school assignment marks the beginning of my love affair with type. Each of the five cards illustrates one of Aesop\'s fables, using only the words of the story. The challenge was to enhance the reader\'s understanding of the fable without impeding legibility.','',1,1,'gekypmc9sgsm.png','a:4:{i:0;s:16:\"e1f27mc5swg3.png\";i:1;s:16:\"7hf005ahdarf.png\";i:2;s:16:\"aem5edb7a4y8.png\";i:3;s:16:\"cvwfs74x6ypj.png\";}'),
	(2,'Shaw Hospitality Group','print ad campaign & brochure','For the redesign of Shaw Hospitality Group\'s print ad campaign the client wanted a fresh look, but not a complete departure from its existing brand. Shaw needed a format that would work for many different styles of carpet, and a flexible design that would work equally well as a two-page spread or a single page ad. The solution is a modular design anchored by a black vertical bar containing the rug company\'s logo.','',1,2,'9wnog08ekjzo.png','a:6:{i:0;s:16:\"7j4aov93ql10.jpg\";i:1;s:16:\"71a8yd23ugbe.jpg\";i:2;s:16:\"c6m8utdzmxrt.jpg\";i:3;s:16:\"79r325cx5b93.jpg\";i:4;s:16:\"fkzkl4bwybw6.jpg\";i:5;s:16:\"9kvvsk576w9q.jpg\";}'),
	(3,'Holiday Gift-Wrap','','Two sheets of double-sided gift-wrap were snuggled into a belly-band and sent out to clients instead of a holiday card. One side depicts snowflakes on a metallic blue background, which, upon closer inspection, are seen to be composed of small icons. The same icons are reorganized into festive stripes on the reverse.','',1,3,'c6olafa5uemo.png','a:4:{i:0;s:16:\"2sccoddvfw6d.jpg\";i:1;s:16:\"7m5qbsaouvhz.jpg\";i:2;s:16:\"e0pgbtcr25q8.jpg\";i:3;s:16:\"6xfg3hbxyqus.jpg\";}'),
	(4,'Hunter Green','name & logo','I worked on both the naming and logo design for Hunter Douglas\' company-wide green initiative. The program was designed to promote the energy-saving benefits of their products to an external audience, as well as to inspire company employees to conserve energy at work and at home. The logo alludes to window coverings, but also speaks to the more intangible concepts of optimism and progress.','',1,4,'9b2yqs5g0dqa.png','a:1:{i:0;s:16:\"9cgppnexaruy.png\";}'),
	(5,'Eames Poster','interactive poster','As designers, Charles and Ray Eames were problem solvers. Appropriately, this poster for an Eames design exhibition encourages the viewer to become a problem solver. As in a classic word search, the goal is to circle words that are listed at the bottom of the page. In this case, the words consist of projects that were design or conceived by Charles and Ray Eames. Much like most of their designs, this poster is both didactic and whimsical.','',1,5,'eg9kie3t5c6a.png','a:3:{i:0;s:16:\"c45crp5tysmb.jpg\";i:1;s:16:\"gak6kla2mqwm.gif\";i:2;s:16:\"35yn8xdejvnr.gif\";}'),
	(6,'White House Week','visual identity, advertising & web design','An advertising campaign and online presence to promote a week-long\nC-SPAN documentary series about the White House. The goal of the website was to present a huge amount of raw footage and information in an accessible, user-friendly style.','http://whitehouse.c-span.org/Default.aspx',2,1,'8s9n80fo1nx9.png','a:5:{i:0;s:16:\"cprkbngb80qh.jpg\";i:1;s:16:\"asjoycdau0cp.jpg\";i:2;s:16:\"ae2bpzfeldzj.jpg\";i:3;s:16:\"cz12v6ci46yr.jpg\";i:4;s:16:\"fx534f5w46qw.jpg\";}'),
	(7,'Social Cycling','logo & graphics','Social Cycling is a multistep process that diverts unwanted, difficult-to-recycle materials from landfills and facilitates their use into new, second-life products. For the logo design, I incorporated profiles of human faces into the globe to emphasize the unique social focus of this recycling program.','',2,2,'b7eymg9fk031.png','a:3:{i:0;s:16:\"7e5m5ida2p2l.png\";i:1;s:16:\"dji6kh39qhl1.jpg\";i:2;s:16:\"akvb80av435e.gif\";}'),
	(8,'Piece Swimwear','name, visual identity & packaging','The name and identity for this high-end swimwear boutique concept reflects its niche selling mix-and-match separates. The logo design was conceived around this notion of interchangeability. With a simple color change, the logo transforms from a bikini-top to a bikini-bottom.','',2,3,'f9h3qr976zg0.png','a:2:{i:0;s:16:\"6y3vtr9zv1jr.jpg\";i:1;s:16:\"am67f2d50vib.jpg\";}'),
	(9,'University Of Kentucky Healthcare','annual report design, theme &<br />photo direction','In 2008, the Hospital at the University of Kentucky was undergoing extensive renovations. I worked with the client, focusing on the idea of transformation as the theme of that year\'s annual report. For the photography on the cover and section breaks we commissioned close-up black and white photographs of working hands - both from inside the hospital and from the construction outside - showing transformation as a result of team effort. In 2009, with the hospital still under construction, we turned our focus to the hospital\'s clarity of vision for the future. This time, the key images emphasized vision and concentration.','',2,4,'7bamew6oup58.png','a:7:{i:0;s:16:\"9rco4v9uwh70.jpg\";i:1;s:16:\"bm5rkc32ox1t.jpg\";i:2;s:16:\"f03c7p55hvdx.jpg\";i:3;s:16:\"bfebcsdq551b.jpg\";i:4;s:16:\"fys6221zth2o.jpg\";i:5;s:16:\"3ql3rtb6uxsi.jpg\";i:6;s:16:\"bw0k0e6ii2kg.jpg\";}'),
	(10,'Opportunity Collaboration','logo, information architecture & website design','Opportunity Collaboration is a forward thinking annual conference that suffered from an antiquated online presence. The new design needed to reflect the organization\'s innovative approach to poverty alleviation and increase enrollment in the conference.','http://www.opportunitycollaboration.net/',2,5,'e7lq6099brkq.png','a:6:{i:0;s:16:\"7lj6tf7t8vfw.png\";i:1;s:16:\"4iznf23v6j10.png\";i:2;s:16:\"74qgui2zoebc.png\";i:3;s:16:\"64d7mj4xsxhx.png\";i:4;s:16:\"52a9dhdmwp32.png\";i:5;s:16:\"75cguo7ez049.png\";}'),
	(11,'Cyan Management Group','naming, visual identity & web design','Cyan is a multi-product hedge-fund which aims to deliver best-in-class talent within an innovative operational framework. In contrast to the staid branding of most financial institutions, Cyan wanted to portray itself as forward thinking and nimble.','',3,1,'8xnbb2eetv69.png','a:7:{i:0;s:16:\"9ocugfcqezbp.jpg\";i:1;s:16:\"avsgkxdd3o8o.jpg\";i:2;s:16:\"9reu03epg663.jpg\";i:3;s:16:\"axz98ibocuh9.jpg\";i:4;s:16:\"dohm5o5og7tg.jpg\";i:5;s:16:\"34jfuu8ekcxb.png\";i:6;s:16:\"818es768mw34.jpg\";}'),
	(12,'Whisper Motors','print & online advertising','How can you make the motorized component of a roller shade sexy and appealing to architects and designers? This request came from Hunter Douglas Contract for the launch of their new product. In print, a bold typographic approach made an impact in Interior Design and Architectural Record magazines. Online, the solution was an interactive ad that simulated the versatile and precise control options available with the product.','',3,2,'d0w5sz7yjc27.png','a:7:{i:0;s:16:\"c2u5h84rh7uv.png\";i:1;s:16:\"5gkpb57ifk4m.jpg\";i:2;s:16:\"42wgdg9k69fc.jpg\";i:3;s:16:\"b7228iekxre2.jpg\";i:4;s:16:\"79gb68agt01l.jpg\";i:5;s:16:\"4o5oen80sztg.jpg\";i:6;s:16:\"6s2d3tcyvllz.jpg\";}'),
	(13,'Larsen Gray','logo','The fashion designers behind the Larsen Gray clothing line requested an active role in the redesign of their logo. After setting the logotype on the computer, I cut out the words and asked the designers to wrap the letters with colored yarn. I then photographed the wrapped words to create a unique logo that reflected the line\'s playful, feminine and sustainable characteristics.','',3,3,'6aiedu79zuj5.png','a:2:{i:0;s:16:\"22u6zn6y9p4m.jpg\";i:1;s:16:\"eco98r86jmc4.jpg\";}'),
	(14,'Design Green Now','logo, promotional materials & website design','Design Green Now is a Brooklyn based organization that facilitates conversation, education and action to create a healthier planet. I worked with the client to refine their image with a new logo and website design. I developed a bold typographic approach for their promotional materials, which advertise panel discussions and design contests to a cutting-edge audience.','http://www.designgreennow.com/',3,4,'87oqybca7uke.png','a:5:{i:0;s:16:\"c7hdridwtczb.jpg\";i:1;s:16:\"dou4mc3a9n5i.png\";i:2;s:16:\"82arjib6640e.jpg\";i:3;s:16:\"edsgdz1wzmbp.png\";i:4;s:16:\"a1e1267lrnl2.jpg\";}'),
	(15,'Wedding','invite, save-the-date, directions card & program','A beautiful redwood grove in California, where the couple planned to wed, provided the inspiration for the design of the printed material. The couple requested a clean design that reflected their love of the outdoors.','',3,5,'degdwkd0qv7b.png','a:6:{i:0;s:16:\"eac4p05jmmy1.jpg\";i:1;s:16:\"54l6pm6tfh01.jpg\";i:2;s:16:\"fnuyidd8qgo7.jpg\";i:3;s:16:\"8iqfxx74u22a.jpg\";i:4;s:16:\"4aspnnbhvss9.jpg\";i:5;s:16:\"a3851f3mztyn.jpg\";}'),
	(16,'Dry-Erase Paint','name, visual identity, packaging, advertising & interactive','MDC Wallcovering\'s eco-friendly paint transforms any wall into a high-performance dry-erase writing surface. I developed a visual identity that communicates the less tangible benefits of a dry-erase surface in the workplace: increased productivity, collaboration and idea sharing. Winner of the 2010 American Package Design Awards.','http://www.mdcwall.com/tabrasa/',4,1,'2w6cc05f74zq.png','a:6:{i:0;s:16:\"86jh8je4br0l.png\";i:1;s:16:\"fuk49i7zu458.jpg\";i:2;s:16:\"atg6df89l046.jpg\";i:3;s:16:\"4tf64xder70n.png\";i:4;s:16:\"ch2l5z6312xd.jpg\";i:5;s:16:\"e6l27e5ik6gd.jpg\";}'),
	(17,'Almodovar Poster Series','','Spanish cinema director Pedro Almodovar is famous for darkly transgressive films that pop with color and optimism. Alluding to this juxtaposition, I utilized construction paper and childlike forms to create menacing abstractions. The colors reference the warm, vibrant hues typical of his cinematography, which is a glossy facade for the darkness of his themes.','',4,2,'aw7yalbrtv6u.png','a:4:{i:0;s:16:\"fppq4scypm9k.png\";i:1;s:16:\"5o8wjj8uxi7h.png\";i:2;s:16:\"5fu434eprq05.png\";i:3;s:16:\"a4cr0y546boq.jpg\";}'),
	(18,'Microcredit Enterprises','visual identity, website design, advertising & video storyboading','MicroCredit Enterprises is a not-for-profit company that mobilizes private investment capital to finance micro-businesses throughout the developing world. The goal of the rebranding was to attract guarantors, and to communicate some of the organization\'s success stories in a compelling way via video, advertising, and an enhanced web presence.','http://www.mcenterprises.org/',4,3,'fmcy8sc91g1c.png','a:9:{i:0;s:16:\"dayhg66yhpe4.jpg\";i:1;s:16:\"ct0qfjao93ba.jpg\";i:2;s:16:\"7dyqgy23kl0s.jpg\";i:3;s:16:\"esexix9wkl1s.jpg\";i:4;s:16:\"b68ow7bvmkqk.jpg\";i:5;s:16:\"ek4o026u50p4.jpg\";i:6;s:16:\"6pys8j6ln5z4.jpg\";i:7;s:16:\"b0h7ib2d7k5l.jpg\";i:8;s:16:\"41wmt5326cwe.jpg\";}'),
	(19,'Credit Suisse','tagline, invite, program, folder & newsletter','Each year, the Private Banking arm of Credit Suisse holds a Wealth Management Conference for its wealthiest clients. In 2009, with the economy still reeling from the global financial crisis, the goal for the conference was provide a platform for clients to gain insights from experts, as well as to share concerns and perspectives. The theme, \"Global Insight, Made Personal,\" reflected these goals, and was the springboard for the design of the printed pieces. The challenge was to create a smart, modern look for materials while remaining true to the Credit Suisse brand.','',4,4,'f4b8cj7t70q4.png','a:4:{i:0;s:16:\"fkvbcfdy4rin.jpg\";i:1;s:16:\"a3g99137565l.jpg\";i:2;s:16:\"al3eikequp1z.jpg\";i:3;s:16:\"ce4ygkg7b52y.jpg\";}'),
	(20,'Shinto Shrine Poster','silkscreen & letterpress','The concept for this poster is an abstract representation of a Japanese spiritual shrine. The shrine is designated by the white circle near the center of the page-a sacred interlude amidst the patterns. On a silkscreen print, each color represents a separate printed layer that must be aligned precisely to create a cohesive final image. This print has 5 layers of silkscreened ink, the first of which was a subtle textural layer to make the paper look more like linen fabric. When the last layer of ink had dried, I ran the posters through an old letterpress to apply a lotus design in the center of the white circle. I used a clear varnish instead of ink, so the lotus can only be seen from certain angles.','',4,5,'bdwlax3zeo0i.png','a:2:{i:0;s:16:\"3mf3tddlgebl.jpg\";i:1;s:16:\"9e2j377pfroo.jpg\";}');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
