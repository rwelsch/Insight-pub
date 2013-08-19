-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 02 Juillet 2013 à 15:18
-- Version du serveur: 5.5.29
-- Version de PHP: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `insighttoolkit`
--

-- --------------------------------------------------------

--
-- Structure de la table `General`
--

CREATE TABLE `General` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Contenu de la table `General`
--

INSERT INTO `General` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'step', 'Step', '', '', 'Étape', '', '', ''),
(2, 'exercise', 'Exercise', '', '', 'Exercice', '', '', ''),
(3, 'welcome', 'Welcome', '', '', 'Bienvenue', '', '', ''),
(4, 'send', 'Send', '', '', 'Envoyer', '', '', ''),
(5, 'reset', 'Reset', '', '', 'Annuler', '', '', ''),
(6, 'disconnect', 'Disconnect', '', '', 'Se déconnecter', '', '', ''),
(7, 'thank', 'Thank you', '', '', 'Merci', '', '', ''),
(8, 'done', 'You have finished this exercise.', '', '', 'Vous avez fini cet exercice.', '', '', ''),
(9, 'redo', 'Redo the exercise', '', '', 'Refaire l''exercice', '', '', ''),
(10, 'next', 'Go to next exercise', '', '', 'Aller à l''exercice suivant', '', '', ''),
(11, 'login', 'Email:', '', '', 'Email :', '', '', ''),
(13, 'connect', 'Connect', '', '', 'Connexion', '', '', ''),
(14, 'invalidpassword', 'Invalid password.', '', '', 'Mot de passe non valide.', '', '', ''),
(15, 'unknowuser', 'Unknown user.', '', '', 'Utilisateur inconnu.', '', '', ''),
(16, 'both', 'Please enter both your login AND your password.', '', '', 'Entrez votre identifiant ET votre mot de passe.', '', '', ''),
(17, 'footer', 'This project has been funded with support from the European Commission. This publication reflects the views only of the author, and the Commission cannot be held responsible for any use which may be made of the information contained therein. ', '', '', 'Ce projet a été financé avec le soutien de la Commission européenne. Cette publication (communication) n''engage que son auteur et la Commission n''est pas responsable de l''usage qui pourrait être fait des informations qui y sont contenues. ', '', '', ''),
(18, 'answer', 'Here are your answers.', '', '', 'Voici vos réponses.', '', '', ''),
(19, 'home 	', 'Home', '', '', 'Accueil 	', '', '', ''),
(20, 'The', 'The', '', '', 'Le', '', '', ''),
(21, 'red', 'In red: you have checked a wrong answer.', '', '', 'En rouge: vous avez coché une mauvaise réponse.', '', '', ''),
(22, 'green', 'In green: you have checked a right answer.', '', '', 'En vert: vous avez coché une bonne réponse.', '', '', ''),
(23, 'orange', 'In orange: a right answer you have not checked.', '', '', 'En orange: une bonne réponse que vous n''avez pas cochée.', '', '', ''),
(24, 'Red_answer', 'means that you checked the wrong answer.', '', '', 'signifie que vous avez coché la mauvaise réponse.', '', '', ''),
(25, 'Green_answer', 'means that you checked the good answer.', '', '', 'signifie que vous avez coché la bonne réponse.', '', '', ''),
(26, 'Orange_answer', 'show you the good answers that you didn''t checked.', '', '', 'signifie que c''est une bonne réponse que vous n''avez pas coché.', '', '', ''),
(28, 'bold', 'Answers you have checked are in bold font.', '', '', 'Les réponses que vous avez cochées sont indiquées en gras.', '', '', ''),
(29, 'forgot', 'Forgot your password?', '', '', 'Mot de passe oublié ?', '', '', ''),
(30, 'new', 'New user?', '', '', 'Nouvel utilisateur ?', '', '', ''),
(31, 'fill', 'Please complete all fields in the form below.', '', '', 'Veuillez remplir tous les champs du formulaire ci-dessous.', '', '', ''),
(32, 'email', 'Email:', '', '', 'Email :', '', '', ''),
(33, 'firstname', 'First name:', '', '', 'Prénom :', '', '', ''),
(34, 'lastname', 'Last name:', '', '', 'Nom :', '', '', ''),
(35, 'password', 'Password:', '', '', 'Mot de passe :', '', '', ''),
(36, 'repeatpassword', 'Repeat password:', '', '', 'Répéter le mot de passe :', '', '', ''),
(37, 'register', 'Registering', '', '', 'Inscription', '', '', ''),
(38, 'inactive', 'Your account has not been activated. Please check your emails.', '', '', 'Votre compte n''est pas activé. Vérifiez vos emails.', '', '', ''),
(39, 'different_pass', 'Your two passwords are different.', '', '', 'Vos deux mots de passe sont différents.', '', '', ''),
(40, 'used_email', 'Email already used.', '', '', 'Email déjà utilisé.', '', '', ''),
(41, 'empty_field', 'One field of the form is empty.', '', '', 'Au moins un des champs du formulaire n''est pas rempli.', '', '', ''),
(42, 'end_inscription', 'An activation link has been sent to you by email. Please click on it to complete your registration.', '', '', 'Un lien d''activation vous a été envoyé par email. Cliquer dessus pour terminer votre inscription.', '', '', ''),
(43, 'mail_subject', 'INSIGHT - Activate your account', '', '', 'INSIGHT - Activer votre compte', '', '', ''),
(44, 'mail_msg1', 'Welcome to INSIGHT.', '', '', 'Bienvenu sur INSIGHT.', '', '', ''),
(45, 'mail_msg2', 'To activate your account, please click on the link below.', '', '', 'Pour activer votre compte, veuillez cliquer sur le lien ci dessous.', '', '', ''),
(46, 'mail_msg3', 'This is an automatic email, please do not respond.', '', '', 'Ceci est un mail automatique, Merci de ne pas y répondre.', '', '', ''),
(47, 'already_active', 'Your account is already activated. You can use the menu on the left to log in.', '', '', 'Votre compte est déjà actif. Vous pouvez vous connecter en utilisant le menu de gauche.', '', '', ''),
(48, 'activation', 'Your account has been activated. You can now log in and start the exercises.', '', '', 'Votre compte a bien été activé. Vous pouvez maintenant vous connecter et commencer les exercices.', '', '', ''),
(49, 'account_activation', 'Account activation', '', '', 'Activation de votre compte', '', '', ''),
(50, 'profile', 'User profile', '', '', 'Profil utilisateur', '', '', ''),
(52, 'not_connected', 'Please log in to access this page.', '', '', 'Merci de vous connecter pour accéder à cette page.', '', '', ''),
(53, 'end_edit', 'Your user profile has been updated.', '', '', 'Votre profil utilisateur a été mis à jour.', '', '', ''),
(54, 'invalid_email', 'Invalid email.', '', '', 'Adresse email invalide.', '', '', ''),
(55, 'forgot_explain', 'Please enter your email adresse, a new password will be sent. Do not forget to change the password afterward.', '', '', 'Entrez votre adresse email pour qu''un nouveau mot de passe vous soit envoyé. N''oubliez pas de changer votre mot de passe lors de votre prochaine connexion.', '', '', ''),
(56, 'unknown_email', 'Your email is unknown to us. Are you sure you are registered on our site?', '', '', 'Votre email nous est inconnu. Êtes-vous sûr d''être inscrit sur notre site ?', '', '', ''),
(57, 'forgot_mail_subject', 'Insight - New password', '', '', 'Insight - Nouveau mot de passe', '', '', ''),
(58, 'forgot_mail_msg1', 'Here is your new password. Do not forget to change it during your next connection.', '', '', 'Voici votre nouveau mot de passe. N''oubliez pas de le changer à votre prochaine connexion.', '', '', ''),
(59, 'forgot_end_inscription', 'Your new password has been sent by email.', '', '', 'Un email contenant votre nouveau mot de passe vient de vous être envoyé.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Home`
--

CREATE TABLE `Home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Home`
--

INSERT INTO `Home` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'Welcome to the INSIGHT Project!', '', '', 'Bienvenue au projet INSIGHT!', '', '', ''),
(2, 'p1', 'The project “Individualized Training in Acquiring New Skills and Raising Employment Competences” is executed within the frameworks of the Lifelong Learning Programme, funded by the European Union.', '', '', 'Le projet “Individualized Training in Acquiring New Skills and Raising Employment Competences” (formation individualisée pour acquérir de nouvelles compétences et relever son employabilité), financé par l’Union Européenne, est réalisé dans le cadre du programme pour l’éducation et la formation tout au long de la vie.', '', '', ''),
(3, 'p2', 'The main aim of the project is to provide integrated support tailored to the needs of the most disadvantaged groups of unemployed in the context of global economic crisis. The project will develop an innovative integrated training tool in order to increase motivation and self-awareness, create incentives for acquiring the new skills demanded on the labour market, improve job competencies and thus promote efficient reintegration of jobseekers into employment.', '', '', 'L’objectif principal du projet est de fournir une aide intégrée adaptée aux besoins des groupes les plus défavorisés de chômeurs dans le contexte de la crise économique mondiale (en particulier les chômeurs de moins de 25 ans et de plus de 45 ans, les migrants et leurs enfants, les personnes confrontées aux problèmes socio-économiques) par le développement d''un outil de formation intégré innovant afin d’augmenter la motivation et la conscience de soi, de créer des incitations pour l’acquisition de nouvelles compétences pour les nouveaux postes proposés par le marché du travail, de favoriser efficacement la réintégration des chômeurs dans l’emploi et son implication dans la formation tout au long de la vie.', '', '', ''),
(4, 'p3', 'The project consortium includes seven organisations from seven countries – United Kingdom, Bulgaria, Iceland, France, Lithuania, Hungary and Portugal. The partnership includes international universities, research centers, training and counselling organisations.\r\n', '', '', 'Le consortium du projet comporte sept organisations de sept pays : Royaume-Uni, Bulgarie, Islande, France, Lituanie, Hongrie et Portugal. Le partenariat comporte des universités européennes, des centres de recherches, de formations et des organismes de conseil.\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `navigation`
--

INSERT INTO `navigation` (`id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'Step 1', 'стъпка 1', 'passo 1', 'Étape 1', 'žingsnis 1', 'stíga 1', 'lépés 1'),
(2, 'Step 2', 'стъпка 2', 'passo 2', 'Étape 2', 'žingsnis 2', 'stíga 2', 'lépés 2'),
(3, 'Step 3', 'стъпка 3', 'passo 2', 'Étape 3', 'žingsnis 3', 'stíga 3', 'lépés  3'),
(4, 'Step 4', 'стъпка 4', 'passo 4', 'Étape 4', 'žingsnis 4', 'stíga 4', 'lépés 4');

-- --------------------------------------------------------

--
-- Structure de la table `Step1`
--

CREATE TABLE `Step1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `Step1`
--

INSERT INTO `Step1` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'Step 1 - I''m searching and applying for a job...', '', '', 'Étape 1 - Chercher un emploi et postuler', '', '', ''),
(2, 'subtitle1', '... what do I need to know and be aware of?', '', '', 'Que dois-je savoir et prendre en compte ?', '', '', ''),
(3, 'subtitle2', '... what do I need to do?', '', '', 'Qu''est-ce que je dois faire ? ', '', '', ''),
(4, 'subtitle3', '... how can I do it better?', '', '', 'Comment faire mieux ?', '', '', ''),
(5, 'ex1', 'Exercise 1: Competencies', '', '', 'Exercice 1: Compétences', '', '', ''),
(6, 'ex2', 'Exercise 2: Job interests', '', '', 'Exercice 2 : Intérêts professionnels', '', '', ''),
(7, 'ex3', 'Exercise 3: Good worker', '', '', 'Exercice 3 : Bon travailleur', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex1`
--

CREATE TABLE `Step1_Ex1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Contenu de la table `Step1_Ex1`
--

INSERT INTO `Step1_Ex1` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 1: COMPETENCIES', '', '', 'EXERCICE 1 : COMPÉTENCES', '', '', ''),
(2, 'description1', 'Read the skills below and classify them according to the scale 1. Not Acquired to 3. Acquired, the others that not apply to you, please classify them as 0 Not applicable.', '', '', 'Lisez les compétences ci-dessous et classez les de 1. Non acquise, à 3. Acquise. Pour les compétences qui ne vous correspondent pas, indiquez 0. Ne s''applique pas.\n', '', '', ''),
(3, 'description2', 'Keep in mind that every person acquires them through work, school activities, hobbies, volunteer work, housework, free time activities.', '', '', '\r\nN''oubliez pas que nous acquérons tous des compétences au travail, dans nos activités scolaires, nos loisirs, en faisant du bénévolat ou en faisant nos tâches ménagères. Mais ne soyez pas modestes !\r\n', '', '', ''),
(4, 'description3', 'But don''t be modest! If you feel you are competent or that you perform a skill as well as most people put a check mark beside it.', '', '', '\r\nSi vous sentez que vous êtes compétents dans un domaine donné ou que vous avez les mêmes compétences que tout le monde, cochez cette compétence.\r\n\r\n', '', '', ''),
(5, 'description4', 'To make it easier for you, put yourself in your friends'' shoes and try to evaluate yourself from their perspective or even ask your friends to do this exercise for you.', '', '', 'Pour mieux vous faire une idée, mettez-vous à la place de vos amis et essayez de vous évaluer de leur point de vue, ou alors demandez à vos amis de faire cet exercice pour vous.', '', '', ''),
(6, 'skill', 'Skill', '', '', 'Compétence', '', '', ''),
(7, 'level0', 'Not applicable (0)', '', '', 'Non applicable (0)', '', '', ''),
(8, 'level1', 'Not Acquired (1)', '', '', 'Non acquise (1)', '', '', ''),
(9, 'level2', 'Acquired but need improvement (2)', '', '', 'Acquise mais nécessite une amélioration (2)', '', '', ''),
(10, 'level3', 'Acquired (3)', '', '', 'Acquise (3)', '', '', ''),
(24, 'partB', 'Part B - Top competencies', '', '', 'Partie B - Meilleures compétences', '', '', ''),
(20, 'description5', 'Now go again through all skills you have checked and choose top 10 from all the skills groups. Include them in your portfolio.', '', '', 'Maintenant, parcourez de nouveau toutes les compétences que vous avez cochées et choisissez les 10 compétences où vous êtes le meilleur.', '', '', ''),
(21, 'description6', 'Now choose 5 skills that you would like to develop.', '', '', 'Maintenant, choisissez 5 compétences que vous souhaitez améliorer.', '', '', ''),
(22, 'choice', 'Choice', '', '', 'Choix', '', '', ''),
(25, 'partC', 'Part C - Competencies to improve', '', '', 'Partie C - Compétences à améliorer', '', '', ''),
(23, 'partA', 'Part A - Levels of competencies', '', '', 'Partie A - Niveaux des compétences', '', '', ''),
(26, 'level', 'Your competencies at level', '', '', 'Vos compétences de niveau', '', '', ''),
(27, 'ten', 'Choose only your top 10 competencies.', '', '', 'Ne choisissez que vos 10 meilleures compétences.', '', '', ''),
(28, 'five', 'Choose at most 5 competencies you want to improve.', '', '', 'Ne choisissez pas plus de 5 compétences à améliorer.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex1_Skills`
--

CREATE TABLE `Step1_Ex1_Skills` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Content:  Listof skills with translation' AUTO_INCREMENT=66 ;

--
-- Contenu de la table `Step1_Ex1_Skills`
--

INSERT INTO `Step1_Ex1_Skills` (`Id`, `skill`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(51, 17, 'To have a careful presentation/look', '', '', 'Être soigné, avoir une bonne présentation', '', '', ''),
(52, 17, 'To be self confident', '', '', 'Avoir confiance en soi', '', '', ''),
(53, 17, 'To be able to make decisions', '', '', 'Savoir prendre des décisions', '', '', ''),
(50, 17, 'Manage time (using your time in a productive way to accomplish everything you have to do)', '', '', 'Savoir gérer le temps (utiliser votre temps de manière productive pour accomplir toutes les tâches)', '', '', ''),
(49, 17, 'To be able  to adapt to new situations and activities', '', '', 'Savoir s''adapter à de nouvelles  situations et de nouvelles  activités', '', '', ''),
(47, 17, 'Trust to others', '', '', 'Faire confiance aux autres', '', '', ''),
(48, 17, 'Pay attention to details', '', '', 'Avoir le sens de l''observation', '', '', ''),
(45, 17, 'Help others', '', '', 'Aider les autres', '', '', ''),
(46, 17, 'Being sociable', '', '', 'Être sociable', '', '', ''),
(43, 17, 'Being punctual', '', '', 'Être ponctuel', '', '', ''),
(44, 17, 'Being responsible', '', '', 'Être responsable', '', '', ''),
(42, 17, 'Being persistent', '', '', 'Être persistant', '', '', ''),
(40, 17, 'Being determinated', '', '', 'Faire preuve de détermination', '', '', ''),
(41, 17, 'Being reliable', '', '', 'Être quelqu''un sur qui on peut compter', '', '', ''),
(39, 17, 'Show patience', '', '', 'Faire preuve de patience', '', '', ''),
(38, 16, 'Be able to use the Office package ', '', '', 'Savoir utiliser   la suite Office ', '', '', ''),
(37, 16, 'Be able to use internet', '', '', 'Savoir utiliser internet', '', '', ''),
(35, 15, 'To be able to produce', '', '', 'Savoir produire', '', '', ''),
(36, 16, 'To know how to use the computer', '', '', 'Savoir comment utiliser un ordinateur', '', '', ''),
(34, 15, 'To be able to register', '', '', 'savoir tenir une caisse', '', '', ''),
(33, 15, 'To be able to fix things', '', '', 'Savoir réparer les objets', '', '', ''),
(30, 15, 'Be able to repair and maintain things', '', '', 'Savoir réparer et faire la maintenance de choses', '', '', ''),
(31, 15, 'To take things to pieces and put them together', '', '', 'Savoir démonter des objets et les remonter', '', '', ''),
(32, 15, 'To catering', '', '', 'Cuisiner', '', '', ''),
(29, 15, 'Be able to clean', '', '', 'Savoir nettoyer', '', '', ''),
(27, 14, 'To be able to improvise', '', '', 'Savoir improviser', '', '', ''),
(28, 15, 'Drive or operate vehicles', '', '', 'Conduire ou opérer des véhicules', '', '', ''),
(26, 14, 'To be able to develop some task or product', '', '', 'Savoir développer des tâches ou des produits', '', '', ''),
(25, 14, 'To be able to invent/create', '', '', 'Savoir inventer/créer', '', '', ''),
(24, 13, 'To be able to do a formal presentation', '', '', 'Être capable de faire une présentation formelle', '', '', ''),
(23, 13, 'Be able to promote events', '', '', 'Savoir promouvoir des événements', '', '', ''),
(22, 13, 'Be able to speak, read and write in one or more foreign languages', '', '', 'Être capable de parler, de lire et d''écrire dans une ou plusieurs langues étrangères', '', '', ''),
(21, 13, 'To be able to translated from a foreign language to your national language and vice versa', '', '', 'Être capable de traduire d''une langue étrangère vers votre langue maternelle et vice-versa', '', '', ''),
(20, 13, 'To be able to understand  what people say', '', '', 'Être capable de comprendre ce que disent les gens', '', '', ''),
(18, 13, 'To be able to express themselves', '', '', 'Être capable de s''exprimer', '', '', ''),
(19, 13, 'To be able to sell a product', '', '', 'Être capable de vendre des produits', '', '', ''),
(15, 13, 'To be able to write', '', '', 'Savoir écrire', '', '', ''),
(16, 13, 'Be able to remember things', '', '', 'Avoir une bonne mémoire', '', '', ''),
(17, 13, 'Listen actively', '', '', 'Écouter activement', '', '', ''),
(14, 13, 'To be able to read', '', '', 'Savoir lire', '', '', ''),
(13, 12, 'Be able to take decisions', '', '', 'Être capable de prendre des décisions', '', '', ''),
(12, 12, 'To be organized', '', '', 'Être organisé', '', '', ''),
(11, 12, 'Be able to motivate the team', '', '', 'Être capable de motiver une équipe', '', '', ''),
(10, 12, 'Be able to coordinate people and tasks', '', '', 'Être capable de coordonner les gens et les tâches', '', '', ''),
(9, 12, 'Be able to plan work', '', '', 'Être capable de planifier le travail', '', '', ''),
(8, 12, 'Persuade', '', '', 'Savoir convaincre', '', '', ''),
(7, 12, 'Being able to solve problems', '', '', 'Être capable de résoudre les problèmes', '', '', ''),
(5, 11, 'Teach, instruct others', '', '', 'Enseigner, instruire', '', '', ''),
(6, 12, 'Resolve conflicts ', '', '', 'Résoudre les conflits ', '', '', ''),
(4, 11, 'To be able to serve (caring, doing things for others)', '', '', 'Être capable de servir les autres (prendre soin des autres, faire des choses pour eux)', '', '', ''),
(3, 11, 'To encourage others', '', '', 'Soutenir les autres', '', '', ''),
(1, 11, 'Give advices', '', '', 'Donner des conseils', '', '', ''),
(2, 11, 'Cooperate (work with others to meet a common goal)', '', '', 'Coopérer (travailler avec les autres pour atteindre un but commun)', '', '', ''),
(54, 17, 'To show initiative', '', '', 'Savoir faire preuve d''initiative', '', '', ''),
(55, 18, 'Be able to observe', '', '', 'Savoir observer', '', '', ''),
(56, 18, 'Be able to compare things', '', '', 'Savoir comparer les choses', '', '', ''),
(57, 18, 'Be able to understand', '', '', 'Savoir comprendre', '', '', ''),
(58, 18, 'Be able to order', '', '', 'Savoir commander', '', '', ''),
(59, 18, 'Be able to select ', '', '', 'Savoir sélectionner ', '', '', ''),
(60, 19, 'Be able to calculate', '', '', 'Savoir calculer', '', '', ''),
(61, 19, 'Be able to budgeting', '', '', 'Savoir réaliser un budget', '', '', ''),
(62, 19, 'Be able to deposit money', '', '', 'Savoir économiser de l''argent', '', '', ''),
(63, 19, 'Be able to count', '', '', 'Savoir compter', '', '', ''),
(64, 19, 'To know how to do accounting', '', '', 'Avoir des notions de comptabilité', '', '', ''),
(65, 11, 'To support other', '', '', 'Aider les autres', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex1_SkillType`
--

CREATE TABLE `Step1_Ex1_SkillType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Contenu de la table `Step1_Ex1_SkillType`
--

INSERT INTO `Step1_Ex1_SkillType` (`id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(11, 'Skills related to working with people', '', '', 'Compétences liées aux travail avec d''autres personnes', '', '', ''),
(12, 'Skills related to leadership', '', '', 'Compétences liées au leadership', '', '', ''),
(13, 'Skills related to communication', '', '', 'Compétences liées à la communication', '', '', ''),
(14, 'Skills related to creativity', '', '', 'Compétences liées à la créativité', '', '', ''),
(15, 'Skills related to work with things', '', '', 'Compétences liées au travail avec des objets', '', '', ''),
(16, 'ICT Skills', '', '', 'Compétences en matière de TIC', '', '', ''),
(17, 'Personal Skills', '', '', 'Compétences personnelles', '', '', ''),
(18, 'Skills related to ratiocinate', '', '', 'Compétences rationnelles', '', '', ''),
(19, 'Skills related to calculation', '', '', 'Compétences liées au calcul ', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex1_Users`
--

CREATE TABLE `Step1_Ex1_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_level` int(11) NOT NULL,
  `skill_top` int(11) NOT NULL,
  `skill_imp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6241 ;

--
-- Contenu de la table `Step1_Ex1_Users`
--

INSERT INTO `Step1_Ex1_Users` (`id`, `user_id`, `skill_id`, `skill_level`, `skill_top`, `skill_imp`) VALUES
(2601, 8, 1, 3, 1, 0),
(2602, 8, 2, 3, 0, 0),
(2603, 8, 3, 3, 0, 0),
(2604, 8, 4, 3, 0, 0),
(2605, 8, 5, 3, 0, 0),
(2606, 8, 6, 3, 0, 0),
(2607, 8, 7, 3, 0, 0),
(2608, 8, 8, 3, 0, 0),
(2609, 8, 9, 3, 0, 0),
(2610, 8, 10, 3, 0, 0),
(2611, 8, 11, 3, 0, 0),
(2612, 8, 12, 3, 0, 0),
(2613, 8, 13, 3, 0, 0),
(2614, 8, 14, 3, 0, 0),
(2615, 8, 15, 3, 0, 0),
(2616, 8, 16, 3, 0, 0),
(2617, 8, 17, 3, 0, 0),
(2618, 8, 18, 3, 0, 0),
(2619, 8, 19, 2, 0, 1),
(2620, 8, 20, 3, 0, 0),
(2621, 8, 21, 2, 0, 0),
(2622, 8, 22, 2, 0, 0),
(2623, 8, 23, 2, 0, 0),
(2624, 8, 24, 3, 0, 0),
(2625, 8, 25, 3, 0, 0),
(2626, 8, 26, 3, 0, 0),
(2627, 8, 27, 3, 0, 0),
(2628, 8, 28, 0, 0, 0),
(2629, 8, 29, 0, 0, 0),
(2630, 8, 30, 0, 0, 0),
(2631, 8, 31, 0, 0, 0),
(2632, 8, 32, 0, 0, 0),
(2633, 8, 33, 0, 0, 0),
(2634, 8, 34, 0, 0, 0),
(2635, 8, 35, 0, 0, 0),
(2636, 8, 36, 0, 0, 0),
(2637, 8, 37, 0, 0, 0),
(2638, 8, 38, 0, 0, 0),
(2639, 8, 39, 0, 0, 0),
(2640, 8, 40, 0, 0, 0),
(2641, 8, 41, 0, 0, 0),
(2642, 8, 42, 0, 0, 0),
(2643, 8, 43, 0, 0, 0),
(2644, 8, 44, 0, 0, 0),
(2645, 8, 45, 0, 0, 0),
(2646, 8, 46, 0, 0, 0),
(2647, 8, 47, 0, 0, 0),
(2648, 8, 48, 0, 0, 0),
(2649, 8, 49, 0, 0, 0),
(2650, 8, 50, 0, 0, 0),
(2651, 8, 51, 0, 0, 0),
(2652, 8, 52, 0, 0, 0),
(2653, 8, 53, 0, 0, 0),
(2654, 8, 54, 0, 0, 0),
(2655, 8, 55, 0, 0, 0),
(2656, 8, 56, 0, 0, 0),
(2657, 8, 57, 0, 0, 0),
(2658, 8, 58, 0, 0, 0),
(2659, 8, 59, 0, 0, 0),
(2660, 8, 60, 0, 0, 0),
(2661, 8, 61, 0, 0, 0),
(2662, 8, 62, 0, 0, 0),
(2663, 8, 63, 0, 0, 0),
(2664, 8, 64, 0, 0, 0),
(2665, 8, 65, 3, 0, 0),
(2666, 2, 1, 3, 1, 0),
(2667, 2, 2, 3, 0, 0),
(2668, 2, 3, 3, 0, 0),
(2669, 2, 4, 3, 0, 0),
(2670, 2, 5, 3, 0, 0),
(2671, 2, 6, 3, 0, 0),
(2672, 2, 7, 3, 0, 0),
(2673, 2, 8, 3, 0, 0),
(2674, 2, 9, 3, 0, 0),
(2675, 2, 10, 3, 0, 0),
(2676, 2, 11, 3, 0, 0),
(2677, 2, 12, 3, 0, 0),
(2678, 2, 13, 3, 0, 0),
(2679, 2, 14, 3, 0, 0),
(2680, 2, 15, 3, 0, 0),
(2681, 2, 16, 3, 0, 0),
(2682, 2, 17, 3, 0, 0),
(2683, 2, 18, 3, 0, 0),
(2684, 2, 19, 3, 0, 0),
(2685, 2, 20, 3, 0, 0),
(2686, 2, 21, 0, 0, 1),
(2687, 2, 22, 0, 0, 0),
(2688, 2, 23, 3, 0, 0),
(2689, 2, 24, 3, 0, 0),
(2690, 2, 25, 3, 0, 0),
(2691, 2, 26, 3, 0, 0),
(2692, 2, 27, 3, 0, 0),
(2693, 2, 28, 3, 0, 0),
(2694, 2, 29, 3, 0, 0),
(2695, 2, 30, 3, 0, 0),
(2696, 2, 31, 3, 0, 0),
(2697, 2, 32, 3, 0, 0),
(2698, 2, 33, 3, 0, 0),
(2699, 2, 34, 3, 0, 0),
(2700, 2, 35, 3, 0, 0),
(2701, 2, 36, 3, 0, 0),
(2702, 2, 37, 3, 0, 0),
(2703, 2, 38, 3, 0, 0),
(2704, 2, 39, 3, 0, 0),
(2705, 2, 40, 3, 0, 0),
(2706, 2, 41, 3, 0, 0),
(2707, 2, 42, 3, 0, 0),
(2708, 2, 43, 3, 0, 0),
(2709, 2, 44, 3, 0, 0),
(2710, 2, 45, 3, 0, 0),
(2711, 2, 46, 3, 0, 0),
(2712, 2, 47, 3, 0, 0),
(2713, 2, 48, 3, 0, 0),
(2714, 2, 49, 3, 0, 0),
(2715, 2, 50, 3, 0, 0),
(2716, 2, 51, 3, 0, 0),
(2717, 2, 52, 3, 0, 0),
(2718, 2, 53, 3, 0, 0),
(2719, 2, 54, 3, 0, 0),
(2720, 2, 55, 3, 0, 0),
(2721, 2, 56, 3, 0, 0),
(2722, 2, 57, 3, 0, 0),
(2723, 2, 58, 3, 0, 0),
(2724, 2, 59, 3, 0, 0),
(2725, 2, 60, 3, 0, 0),
(2726, 2, 61, 3, 0, 0),
(2727, 2, 62, 3, 0, 0),
(2728, 2, 63, 3, 0, 0),
(2729, 2, 64, 3, 0, 0),
(2730, 2, 65, 3, 0, 0),
(2731, 4, 1, 1, 0, 1),
(2732, 4, 2, 1, 0, 0),
(2733, 4, 3, 2, 1, 0),
(2734, 4, 4, 2, 0, 1),
(2735, 4, 5, 2, 1, 0),
(2736, 4, 6, 1, 0, 0),
(2737, 4, 7, 1, 0, 0),
(2738, 4, 8, 1, 0, 0),
(2739, 4, 9, 1, 0, 0),
(2740, 4, 10, 1, 0, 1),
(2741, 4, 11, 1, 0, 0),
(2742, 4, 12, 1, 0, 0),
(2743, 4, 13, 1, 0, 0),
(2744, 4, 14, 2, 0, 0),
(2745, 4, 15, 2, 0, 0),
(2746, 4, 16, 2, 0, 0),
(2747, 4, 17, 2, 1, 0),
(2748, 4, 18, 2, 0, 0),
(2749, 4, 19, 2, 1, 0),
(2750, 4, 20, 2, 1, 0),
(2751, 4, 21, 2, 0, 0),
(2752, 4, 22, 2, 0, 0),
(2753, 4, 23, 2, 0, 0),
(2754, 4, 24, 2, 0, 0),
(2755, 4, 25, 3, 0, 0),
(2756, 4, 26, 3, 0, 0),
(2757, 4, 27, 3, 0, 0),
(2758, 4, 28, 2, 0, 0),
(2759, 4, 29, 2, 0, 0),
(2760, 4, 30, 2, 0, 0),
(2761, 4, 31, 2, 0, 0),
(2762, 4, 32, 2, 0, 0),
(2763, 4, 33, 2, 0, 0),
(2764, 4, 34, 2, 1, 0),
(2765, 4, 35, 2, 0, 0),
(2766, 4, 36, 1, 0, 0),
(2767, 4, 37, 1, 0, 0),
(2768, 4, 38, 1, 0, 0),
(2769, 4, 39, 2, 0, 0),
(2770, 4, 40, 2, 0, 0),
(2771, 4, 41, 2, 0, 0),
(2772, 4, 42, 2, 0, 0),
(2773, 4, 43, 2, 0, 0),
(2774, 4, 44, 2, 0, 0),
(2775, 4, 45, 2, 0, 0),
(2776, 4, 46, 2, 0, 0),
(2777, 4, 47, 2, 0, 0),
(2778, 4, 48, 2, 0, 0),
(2779, 4, 49, 2, 0, 0),
(2780, 4, 50, 2, 0, 0),
(2781, 4, 51, 2, 0, 0),
(2782, 4, 52, 2, 0, 0),
(2783, 4, 53, 2, 0, 0),
(2784, 4, 54, 2, 0, 0),
(2785, 4, 55, 1, 0, 0),
(2786, 4, 56, 1, 0, 0),
(2787, 4, 57, 1, 0, 0),
(2788, 4, 58, 1, 0, 0),
(2789, 4, 59, 1, 0, 0),
(2790, 4, 60, 2, 0, 0),
(2791, 4, 61, 2, 0, 0),
(2792, 4, 62, 2, 0, 0),
(2793, 4, 63, 2, 1, 0),
(2794, 4, 64, 2, 0, 0),
(2795, 4, 65, 2, 1, 0),
(2861, 5, 1, 0, 0, 0),
(2862, 5, 2, 0, 0, 0),
(2863, 5, 3, 0, 0, 0),
(2864, 5, 4, 0, 0, 0),
(2865, 5, 5, 0, 0, 0),
(2866, 5, 6, 0, 0, 0),
(2867, 5, 7, 0, 0, 0),
(2868, 5, 8, 0, 0, 0),
(2869, 5, 9, 0, 0, 0),
(2870, 5, 10, 0, 0, 0),
(2871, 5, 11, 0, 0, 0),
(2872, 5, 12, 0, 0, 0),
(2873, 5, 13, 0, 0, 0),
(2874, 5, 14, 0, 0, 0),
(2875, 5, 15, 0, 0, 0),
(2876, 5, 16, 0, 0, 0),
(2877, 5, 17, 0, 0, 0),
(2878, 5, 18, 0, 0, 0),
(2879, 5, 19, 0, 0, 0),
(2880, 5, 20, 0, 0, 0),
(2881, 5, 21, 0, 0, 0),
(2882, 5, 22, 0, 0, 0),
(2883, 5, 23, 0, 0, 0),
(2884, 5, 24, 0, 0, 0),
(2885, 5, 25, 0, 0, 0),
(2886, 5, 26, 0, 0, 0),
(2887, 5, 27, 0, 0, 0),
(2888, 5, 28, 0, 0, 0),
(2889, 5, 29, 0, 0, 0),
(2890, 5, 30, 0, 0, 0),
(2891, 5, 31, 0, 0, 0),
(2892, 5, 32, 0, 0, 0),
(2893, 5, 33, 0, 0, 0),
(2894, 5, 34, 0, 0, 0),
(2895, 5, 35, 0, 0, 0),
(2896, 5, 36, 0, 0, 0),
(2897, 5, 37, 0, 0, 0),
(2898, 5, 38, 0, 0, 0),
(2899, 5, 39, 0, 0, 0),
(2900, 5, 40, 0, 0, 0),
(2901, 5, 41, 0, 0, 0),
(2902, 5, 42, 0, 0, 0),
(2903, 5, 43, 0, 0, 0),
(2904, 5, 44, 0, 0, 0),
(2905, 5, 45, 0, 0, 0),
(2906, 5, 46, 0, 0, 0),
(2907, 5, 47, 0, 0, 0),
(2908, 5, 48, 0, 0, 0),
(2909, 5, 49, 0, 0, 0),
(2910, 5, 50, 0, 0, 0),
(2911, 5, 51, 0, 0, 0),
(2912, 5, 52, 0, 0, 0),
(2913, 5, 53, 0, 0, 0),
(2914, 5, 54, 0, 0, 0),
(2915, 5, 55, 0, 0, 0),
(2916, 5, 56, 0, 0, 0),
(2917, 5, 57, 0, 0, 0),
(2918, 5, 58, 0, 0, 0),
(2919, 5, 59, 0, 0, 0),
(2920, 5, 60, 0, 0, 0),
(2921, 5, 61, 0, 0, 0),
(2922, 5, 62, 0, 0, 0),
(2923, 5, 63, 0, 0, 0),
(2924, 5, 64, 0, 0, 0),
(2925, 5, 65, 0, 0, 0),
(3446, 1, 1, 2, 1, 1),
(3447, 1, 2, 2, 0, 0),
(3448, 1, 3, 1, 0, 1),
(3449, 1, 4, 1, 0, 0),
(3450, 1, 5, 2, 1, 0),
(3451, 1, 6, 1, 0, 0),
(3452, 1, 7, 2, 0, 0),
(3453, 1, 8, 1, 0, 0),
(3454, 1, 9, 3, 0, 0),
(3455, 1, 10, 2, 1, 0),
(3456, 1, 11, 1, 0, 1),
(3457, 1, 12, 0, 0, 0),
(3458, 1, 13, 0, 0, 0),
(3459, 1, 14, 2, 0, 0),
(3460, 1, 15, 1, 0, 0),
(3461, 1, 16, 2, 0, 0),
(3462, 1, 17, 2, 0, 0),
(3463, 1, 18, 0, 0, 0),
(3464, 1, 19, 1, 0, 0),
(3465, 1, 20, 0, 0, 0),
(3466, 1, 21, 2, 0, 0),
(3467, 1, 22, 1, 0, 0),
(3468, 1, 23, 0, 0, 0),
(3469, 1, 24, 2, 1, 0),
(3470, 1, 25, 2, 0, 0),
(3471, 1, 26, 1, 0, 0),
(3472, 1, 27, 2, 0, 0),
(3473, 1, 28, 1, 0, 0),
(3474, 1, 29, 2, 0, 0),
(3475, 1, 30, 1, 0, 0),
(3476, 1, 31, 3, 0, 0),
(3477, 1, 32, 0, 0, 0),
(3478, 1, 33, 2, 0, 0),
(3479, 1, 34, 0, 0, 0),
(3480, 1, 35, 0, 0, 0),
(3481, 1, 36, 0, 0, 0),
(3482, 1, 37, 1, 0, 0),
(3483, 1, 38, 0, 0, 0),
(3484, 1, 39, 3, 0, 0),
(3485, 1, 40, 3, 0, 0),
(3486, 1, 41, 3, 0, 0),
(3487, 1, 42, 2, 0, 0),
(3488, 1, 43, 3, 0, 0),
(3489, 1, 44, 1, 0, 0),
(3490, 1, 45, 0, 0, 0),
(3491, 1, 46, 2, 0, 0),
(3492, 1, 47, 2, 0, 0),
(3493, 1, 48, 0, 0, 0),
(3494, 1, 49, 2, 0, 0),
(3495, 1, 50, 0, 0, 0),
(3496, 1, 51, 1, 0, 0),
(3497, 1, 52, 0, 0, 0),
(3498, 1, 53, 1, 0, 0),
(3499, 1, 54, 0, 0, 0),
(3500, 1, 55, 3, 0, 0),
(3501, 1, 56, 0, 0, 0),
(3502, 1, 57, 0, 0, 0),
(3503, 1, 58, 3, 0, 0),
(3504, 1, 59, 0, 0, 0),
(3505, 1, 60, 1, 0, 0),
(3506, 1, 61, 2, 0, 0),
(3507, 1, 62, 3, 0, 0),
(3508, 1, 63, 2, 0, 0),
(3509, 1, 64, 1, 0, 0),
(3510, 1, 65, 3, 0, 0),
(6176, 23, 1, 0, 0, 0),
(6177, 23, 2, 0, 0, 0),
(6178, 23, 3, 0, 0, 0),
(6179, 23, 4, 0, 0, 0),
(6180, 23, 5, 0, 0, 0),
(6181, 23, 6, 0, 0, 0),
(6182, 23, 7, 0, 0, 0),
(6183, 23, 8, 0, 0, 0),
(6184, 23, 9, 0, 0, 0),
(6185, 23, 10, 0, 0, 0),
(6186, 23, 11, 0, 0, 0),
(6187, 23, 12, 0, 0, 0),
(6188, 23, 13, 0, 0, 0),
(6189, 23, 14, 0, 0, 0),
(6190, 23, 15, 0, 0, 0),
(6191, 23, 16, 0, 0, 0),
(6192, 23, 17, 0, 0, 0),
(6193, 23, 18, 0, 0, 0),
(6194, 23, 19, 0, 0, 0),
(6195, 23, 20, 0, 0, 0),
(6196, 23, 21, 0, 0, 0),
(6197, 23, 22, 2, 1, 0),
(6198, 23, 23, 0, 0, 0),
(6199, 23, 24, 3, 1, 0),
(6200, 23, 25, 0, 0, 0),
(6201, 23, 26, 0, 0, 0),
(6202, 23, 27, 2, 0, 0),
(6203, 23, 28, 0, 0, 0),
(6204, 23, 29, 0, 0, 0),
(6205, 23, 30, 0, 0, 0),
(6206, 23, 31, 0, 0, 0),
(6207, 23, 32, 0, 0, 0),
(6208, 23, 33, 0, 0, 0),
(6209, 23, 34, 0, 0, 0),
(6210, 23, 35, 0, 0, 0),
(6211, 23, 36, 3, 1, 0),
(6212, 23, 37, 0, 0, 0),
(6213, 23, 38, 0, 0, 0),
(6214, 23, 39, 0, 0, 0),
(6215, 23, 40, 0, 0, 0),
(6216, 23, 41, 0, 0, 0),
(6217, 23, 42, 0, 0, 0),
(6218, 23, 43, 0, 0, 0),
(6219, 23, 44, 0, 0, 0),
(6220, 23, 45, 2, 0, 1),
(6221, 23, 46, 0, 0, 0),
(6222, 23, 47, 0, 0, 0),
(6223, 23, 48, 3, 0, 0),
(6224, 23, 49, 0, 0, 0),
(6225, 23, 50, 0, 0, 0),
(6226, 23, 51, 0, 0, 0),
(6227, 23, 52, 0, 0, 0),
(6228, 23, 53, 0, 0, 0),
(6229, 23, 54, 0, 0, 0),
(6230, 23, 55, 0, 0, 0),
(6231, 23, 56, 0, 0, 0),
(6232, 23, 57, 2, 0, 0),
(6233, 23, 58, 0, 0, 0),
(6234, 23, 59, 3, 0, 0),
(6235, 23, 60, 0, 0, 0),
(6236, 23, 61, 1, 0, 0),
(6237, 23, 62, 0, 0, 0),
(6238, 23, 63, 0, 0, 0),
(6239, 23, 64, 0, 0, 0),
(6240, 23, 65, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex2`
--

CREATE TABLE `Step1_Ex2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Contenu de la table `Step1_Ex2`
--

INSERT INTO `Step1_Ex2` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 2: JOB INTERESTS', '', '', 'EXERCICE 2 : INTÉRÊTS PROFESSIONNELS ', '', '', ''),
(2, 'introduction', 'We have pictures, which represent 6 different types of job interests. If you approach the picture with a mouse few typical professions (for that type) will be listed. We have 6 different types of job interests with few typical professions (for that type).', '', '', 'Voici des images qui représentent 6 différents types d''intérêts professionnels. Si vous approchez la souris de l''image, vous verrez une liste de quelques emplois "type" correspondants.\nVous trouverez 6 différents types d''intérêts professionnels, avec quelques professions représentatives (pour ce type).', '', '', ''),
(3, 'realistic', 'The Realistic type ', '', '', 'Le type réaliste ', '', '', ''),
(9, 'investigative', 'The Investigative Type ', '', '', 'Le type Investigateur ', '', '', ''),
(15, 'artistic', 'The Artistic Type ', '', '', 'Le type artistique', '', '', ''),
(20, 'social', 'The Social Type', '', '', 'Le type social ', '', '', ''),
(28, 'enterprising', 'The Enterprising Type ', '', '', 'Le type entreprenant ', '', '', ''),
(34, 'conventional', 'The Conventional Personality Type', '', '', 'Le type conventionnel', '', '', ''),
(44, 'answer', 'Here are the types of jobs that suit you the most.', '', '', 'Voici les types de travail qui vous correspondent le plus.', '', '', ''),
(45, 'typical', 'Typical jobs:', '', '', 'Emplois types :', '', '', ''),
(40, 'introduction2', 'Answer the following questions (you can check several answers).', '', '', 'Répondez aux questions suivantes (vous pouvez cocher plusieurs réponses).', '', '', ''),
(41, 'like', 'What do you like?', '', '', 'Qu''aimez-vous ?', '', '', ''),
(42, 'value', 'What do you value?', '', '', 'Qu''appréciez-vous ?', '', '', ''),
(43, 'good', 'In what areas do you have good skills?', '', '', 'Dans quels domaines avez-vous de bonnes compétences ?', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex2_Questions`
--

CREATE TABLE `Step1_Ex2_Questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Contenu de la table `Step1_Ex2_Questions`
--

INSERT INTO `Step1_Ex2_Questions` (`id`, `type_id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(5, 3, 'like', 'You like to work with animals, tools, or machines; generally avoids social activities like teaching, healing, and informing others; \n', '', '', 'Vous aimez travailler avec les animaux, des outils et des machines; vous évitez généralement les activités sociales comme l''enseignement, les soins ou informer les autres. ', '', '', ''),
(6, 3, 'good', 'You have good skills in working with tools, mechanical or electrical drawings, machines, or plants and animals; \n\n', '', '', 'Vous êtes très compétent avec des outils, des dessins mécaniques ou électriques, des machines ou encore avec les plantes et les animaux ; ', '', '', ''),
(7, 3, 'value', 'You value practical things you can see, touch, and use like plants and animals, tools, equipment, or machines; your are practical, mechanical and realistic.', '', '', 'Vous appréciez les choses tangibles et pragmatiques, comme les plantes et les animaux, les outils, l''équipement ou les machines; vous avez un esprit pratique, mécanique et réaliste. ', '', '', ''),
(11, 9, 'like', 'You like to study and solve math or science problems; generally avoids leading, selling, or persuading people.', '', '', 'Vous aimez étudier et résoudre des problèmes de mathématiques et de sciences ; évitent généralement les rôles de leader, ou d''avoir à vendre ou à persuader les gens.', '', '', ''),
(12, 9, 'good', 'You have good skills at understanding and solving science and math problems.', '', '', 'Vous êtes capables de comprendre et de résoudre des problèmes scientifiques et mathématiques.', '', '', ''),
(13, 9, 'value', 'You value science, and you are precise, scientific and intellectual. ', '', '', 'Vous appréciez la science, vous êtes précis et académique, vous avez un esprit scientifique. ', '', '', ''),
(17, 15, 'like', 'You like to do creative activities like art, drama, crafts, dance, music, or creative writing; generally you avoid highly ordered or repetitive activities.', '', '', 'Vous aimez les activités créatives comme l''art, le théâtre, les ateliers créatifs, la danse, la musique ou l''écriture créative ; vous évitez généralement les activités très structurées ou répétitives.', '', '', ''),
(18, 15, 'good', 'You have good artistic abilities - in creative writing, drama, crafts, music, or art. ', '', '', 'Vous avez de bonnes capacités artistiques (l''écriture créative, le théâtre, les ateliers créatifs, la musique ou l''art). ', '', '', ''),
(19, 15, 'value', 'You value the creative arts - like drama, music, art, or the works of creative writers and you are expressive, original and independent. ', '', '', 'Vous appréciez les arts créatifs, comme le théâtre, la musique, l''art ou les œuvres d''écrivains créatifs, les œuvres expressives, originales et indépendantes.', '', '', ''),
(22, 20, 'like', 'You like "Social" environment.', '', '', 'Vous aimez les environnements "sociaux".', '', '', ''),
(23, 20, 'good', 'You have good skills at teaching, counseling, nursing, giving information or solving social problems.', '', '', 'Vous êtes bon professeur, donnez de bons conseils, vous êtes bons pour résoudre des problèmes sociaux, donner des soins médicaux.', '', '', ''),
(24, 20, 'value', 'You particularly value people who are helpful, friendly, and trustworthy.', '', '', 'Vous appréciez tout particulièrement ceux qui aiment aider, sont aimables et dignes de confiance.', '', '', ''),
(30, 28, 'like', 'You like to lead and persuade people, to sell things and idea.', '', '', 'Vous aimez mener et convaincre, vendre des objets et des idées.', '', '', ''),
(31, 28, 'good', 'You are good at leading people and selling things or ideas.', '', '', 'Vous êtes un bon meneur et un bon vendeur de choses ou d''idées.', '', '', ''),
(32, 28, 'value', 'You value success in politics, leadership, or business; and you are energetic, ambitious and sociable. ', '', '', 'Vous appréciez les réussites politiques, les positions de pouvoir ou ceux qui réussissent en affaire ; vous êtes dynamique, ambitieux et sociable. ', '', '', ''),
(36, 34, 'like', 'You like to work with numbers, records, or machines in a set, orderly way; you generally avoids ambiguous, unstructured activities.', '', '', 'Vous aimez travailler avec les chiffres, les registres, ou les machines de façon ordonnée et établie ; vous évitez généralement les activités non structurées et ambiguës. ', '', '', ''),
(37, 34, 'good', 'Your are good at working with written records and numbers in a systematic, orderly way.', '', '', 'Vous êtes efficace quand il s''agit de travailler avec des registres et des chiffres de façon systématique et ordonnée.', '', '', ''),
(38, 34, 'value', 'You value success in business and you are orderly, and good at following a set plan. ', '', '', 'Vous appréciez les réussites professionnelles; vous êtes organisé, et suivez très bien un plan établi.', '', '', ''),
(46, 3, 'description', 'People who have mechanical or physical abilities.  They enjoy operating equipment or machinery, using tools, and working outside. They tend to follow tradition, have common sense, and take a practical approach to life.', '', '', 'Les gens qui ont des aptitudes physiques ou mécaniques.  Ils aiment utiliser des équipements ou faire fonctionner des véhicules, utiliser des outils et travailler en extérieur. Ils tendent à être relativement traditionnels, faire preuve de sens commun, et ont une conception pragmatique de la vie.', '', '', ''),
(49, 28, 'description', 'People who love to lead, influence, persuade or motivate others.  They tend to enjoy power and status, thrive on taking risks and making decisions, and take a spontaneous approach to things. They tend to have good verbal ability and enjoy meeting new people and the limelight of speaking in public.', '', '', 'Des personnes qui aiment mener, avoir une influence ou motiver les autres.  Elles tendent à aimer le pouvoir et un certain statut. Elles s''épanouissent dans la prise de risques et la prise de décisions, et sont des personnes spontanées. Elles tendent à savoir manier les mots, aiment rencontrer des gens et parler en public.', '', '', ''),
(45, 9, 'description', 'People who love to learn, analyze, solve problems or conduct research. They are often into subjects related to science, math, and medicine. They tend to be pretty independent and are often curious about things.', '', '', 'Les gens qui aiment apprendre, analyser, résoudre des problèmes ou faire de la recherche. Ils sont souvent attirés par les sciences, les mathématiques et la médecine. Ils ont tendance à être plus indépendants et sont souvent d''un naturel curieux.', '', '', ''),
(48, 34, 'description', 'People who love organization, accuracy and efficiency. They tend to work well with data, numbers, finances, or processes and procedures. They have good follow-through and tend to be structured and methodical in their approach.', '', '', 'Des gens qui aiment l''organisation, la précision et l''efficacité. Ils sont à l''aise avec les données, les chiffres, les finances ou les procédures. Ils sont rigoureux, et sont généralement très structurés et méthodiques dans leur façon de faire.', '', '', ''),
(47, 15, 'description', 'People who have an appreciation for art, creativity/innovation and self-expression. They may enjoy various types of work related to fine arts, visual arts, foreign languages, writing and other things that utilize imagination. They tend to prefer a more independent and unstructured approach to life.', '', '', 'Ceux qui apprécient l''art, la créativité/l''innovation et l''expression personnelle. Ils peuvent s''épanouir dans différents postes liés à l''art, aux arts graphiques, aux langues étrangères, à l''écriture et à d''autres activités qui font appel à l''imagination. Ils tendent à préférer une approche plus indépendante et moins structurée de la vie.', '', '', ''),
(44, 20, 'description', 'Persons having a Social personality type "dominate" this environment and are those who love working with people in a helping, teaching or training capacity. They enjoy working in team-oriented situations, tend to be good listeners, and possess good written and verbal communication skills. There are more of them than there are people of other personality types. For example, in a hospital, school, or counselling service there will be more persons having a "Social" personality than there will be people who have a Realistic type. ', '', '', 'Les personnes avec une personnalité sociale dominent cet environnement, et aiment travailler avec les gens, aider, enseigner ou former. Ils aiment travailler en équipe, et possèdent généralement une bonne capacité d''écoute et de communication, tant verbale qu''écrite. Cette catégorie correspond à plus de gens que n''importe quel autre type de personnalités. Par exemple, dans un hôpital, une école ou un service d''orientation, il y aura plus de gens avec une personnalité "sociale" que de gens « réalistes ». ', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex2_Types`
--

CREATE TABLE `Step1_Ex2_Types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Contenu de la table `Step1_Ex2_Types`
--

INSERT INTO `Step1_Ex2_Types` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(3, 'realistic', 'The Realistic type ', '', '', 'Le type réaliste ', '', '', ''),
(9, 'investigative', 'The Investigative Type ', '', '', 'Le type Investigateur ', '', '', ''),
(15, 'artistic', 'The Artistic Type ', '', '', 'Le type artistique', '', '', ''),
(20, 'social', 'The Social Type', '', '', 'Le type social ', '', '', ''),
(28, 'enterprising', 'The Enterprising Type ', '', '', 'Le type entreprenant ', '', '', ''),
(34, 'conventional', 'The Conventional Personality Type', '', '', 'Le type conventionnel', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex2_Typical_jobs`
--

CREATE TABLE `Step1_Ex2_Typical_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

--
-- Contenu de la table `Step1_Ex2_Typical_jobs`
--

INSERT INTO `Step1_Ex2_Typical_jobs` (`id`, `type_id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(2, 3, 'Cook', '', '', 'Cuisinier', '', '', ''),
(1, 3, 'Carpenter', '', '', 'Menuisier', '', '', ''),
(3, 3, 'Construction Worker ', '', '', 'Ouvrier de chantier ', '', '', ''),
(4, 3, 'Cook ', '', '', 'Chef cuisinier ', '', '', ''),
(5, 3, 'Driver ', '', '', 'Conducteur ', '', '', ''),
(6, 3, 'Electrician ', '', '', 'Électricien ', '', '', ''),
(7, 3, 'Farmer ', '', '', 'Fermier ', '', '', ''),
(8, 3, 'Fire-fighter ', '', '', 'Pompier ', '', '', ''),
(9, 3, 'Gardener ', '', '', 'Jardinier ', '', '', ''),
(10, 3, 'Materials engineer', '', '', 'Ingénieur en matériaux', '', '', ''),
(11, 3, 'Mechanic ', '', '', 'Mécanicien ', '', '', ''),
(12, 3, 'Metal shop supervisor', '', '', 'Gérant d''une quincaillerie', '', '', ''),
(13, 3, 'Paramedic', '', '', 'Auxiliaire paramédical', '', '', ''),
(14, 3, 'Plumber ', '', '', 'Plombier ', '', '', ''),
(15, 9, 'Anthropologist ', '', '', 'Anthropologue ', '', '', ''),
(16, 9, 'Chemist ', '', '', 'Chimiste ', '', '', ''),
(17, 9, 'Chemical engineer', '', '', 'Ingénieur chimiste', '', '', ''),
(18, 9, 'Computer programmer ', '', '', 'Programmateur informatique ', '', '', ''),
(19, 9, 'Detective ', '', '', 'Détective ', '', '', ''),
(20, 9, 'Drafter ', '', '', 'Rédacteur ', '', '', ''),
(21, 9, 'Laboratory assistant ', '', '', 'Assistant de laboratoire ', '', '', ''),
(22, 9, 'Pharmacist', '', '', 'Pharmacien', '', '', ''),
(23, 9, 'Surgeon', '', '', 'Chirurgien', '', '', ''),
(24, 9, 'System analyst', '', '', 'Analyste de systèmes', '', '', ''),
(25, 9, 'Veterinarian', '', '', 'Vétérinaire', '', '', ''),
(26, 9, 'Veterinary technician ', '', '', 'ASV ', '', '', ''),
(27, 9, 'Working with soil and water. ', '', '', 'Travailleur de la terre et de l''eau. ', '', '', ''),
(28, 15, 'Actor ', '', '', 'Acteur ', '', '', ''),
(29, 15, 'Advertising executive', '', '', 'Directeur publicitaire', '', '', ''),
(30, 15, 'Architect ', '', '', 'Architecte ', '', '', ''),
(31, 15, 'Author', '', '', 'Auteur', '', '', ''),
(32, 15, 'Clown ', '', '', 'Clown ', '', '', ''),
(33, 15, 'Dancer ', '', '', 'Danseur ', '', '', ''),
(34, 15, 'English teacher', '', '', 'Professeur d''anglais', '', '', ''),
(35, 15, 'Film editor', '', '', 'Monteur de film', '', '', ''),
(36, 15, 'Furniture designer ', '', '', 'Designer ', '', '', ''),
(37, 15, 'interior designer', '', '', 'Styliste d''intérieur', '', '', ''),
(38, 15, 'Jewellery designer ', '', '', 'Créateur de bijoux ', '', '', ''),
(39, 15, 'Make up artist ', '', '', 'Artiste de maquillage ', '', '', ''),
(40, 15, 'Musician ', '', '', 'Musicien ', '', '', ''),
(41, 15, 'Painter ', '', '', 'Peintre ', '', '', ''),
(42, 15, 'Photographer ', '', '', 'Photographe ', '', '', ''),
(43, 15, 'Tailor ', '', '', 'Couturier ', '', '', ''),
(44, 20, 'Counselor ', '', '', 'Conseiller ', '', '', ''),
(45, 20, 'Cosmetician ', '', '', 'Esthéticienne ', '', '', ''),
(46, 20, 'Employee relations specialist', '', '', 'Spécialiste en relation clientèle', '', '', ''),
(47, 20, 'Hostess ', '', '', 'Hôtesse ', '', '', ''),
(48, 20, 'Nurse ', '', '', 'Infirmier ', '', '', ''),
(49, 20, 'Occupational therapist ', '', '', 'Ergothérapeute ', '', '', ''),
(50, 20, 'Personnel manager ', '', '', 'Gérant de ressources humaines ', '', '', ''),
(51, 20, 'Police officer ', '', '', 'Officier de police ', '', '', ''),
(52, 20, 'Postman ', '', '', 'Facteur ', '', '', ''),
(53, 20, 'Social worker', '', '', 'Assistant social', '', '', ''),
(54, 20, 'Teacher ', '', '', 'Professeur ', '', '', ''),
(55, 20, 'Waiter ', '', '', 'Serveur ', '', '', ''),
(56, 28, 'Advertising Sales Agent ', '', '', 'Publicitaire ', '', '', ''),
(57, 28, 'Counter or Rental Clerk ', '', '', 'Guichetier ou agent de location  ', '', '', ''),
(58, 28, 'Fast-Foods Worker ', '', '', 'Employés de fast-food ', '', '', ''),
(59, 28, 'Financial planner ', '', '', 'Planificateur financier ', '', '', ''),
(60, 28, 'Flight Attendant ', '', '', 'Hôtesse de l''air ', '', '', ''),
(61, 28, 'Judge', '', '', 'Juge', '', '', ''),
(62, 28, 'Lawyer', '', '', 'Avocat', '', '', ''),
(63, 28, 'Management trainee (any industry)', '', '', 'Stagiaire en gestion (toutes industries)', '', '', ''),
(64, 28, 'Operation manager', '', '', 'Chef d''exploitation', '', '', ''),
(65, 28, 'Project director', '', '', 'Gestionnaire de projet', '', '', ''),
(66, 28, 'Real Estate Agent ', '', '', 'Agent immobilier ', '', '', ''),
(67, 28, 'Recreation or Fitness Worker ', '', '', 'Animateur ou professeur de fitness ', '', '', ''),
(68, 28, 'Sales Clerk', '', '', 'Agent de ventes', '', '', ''),
(69, 28, 'Sales manager ', '', '', 'Directeur commercial ', '', '', ''),
(70, 28, 'Travel Agent ', '', '', 'Agent de voyage ', '', '', ''),
(71, 28, 'Urban planner', '', '', 'Planificateur urbain', '', '', ''),
(72, 34, 'All kinds of clerks ', '', '', 'Tous types de greffiers ', '', '', ''),
(73, 34, 'Accountant', '', '', 'Comptable', '', '', ''),
(74, 34, 'Bookkeeper ', '', '', 'Trésorier ', '', '', ''),
(75, 34, 'Building inspector', '', '', 'Inspecteur sanitaire', '', '', ''),
(76, 34, 'Data Entry Keyer ', '', '', 'Analyste de données ', '', '', ''),
(77, 34, 'Editorial assistant', '', '', 'Assistant éditorial', '', '', ''),
(78, 34, 'File Clerk ', '', '', 'Administration/classement ', '', '', ''),
(79, 34, 'Hotel, Motel, or Resort Desk Clerk', '', '', 'Réceptionniste d''hôtel, de motel ou de club de vacances', '', '', ''),
(80, 34, 'Investment analyst', '', '', 'Analyste financier', '', '', ''),
(81, 34, 'Mortgage processor', '', '', 'Agent hypothécaire', '', '', ''),
(82, 34, 'Office Manager ', '', '', 'Chef de cabinet ', '', '', ''),
(83, 34, 'Payroll clerk', '', '', 'Gestionnaire de paie', '', '', ''),
(84, 34, 'Receptionist ', '', '', 'Réceptionniste ', '', '', ''),
(85, 34, 'Secretary ', '', '', 'Secrétaire ', '', '', ''),
(86, 34, 'Ticket Agent or Travel Clerk ', '', '', 'Guichetier ou agent de voyage ', '', '', ''),
(87, 34, 'Typist ', '', '', 'Dactylographe ', '', '', ''),
(88, 34, 'Webside editor ', '', '', 'Éditeur de site Web ', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex2_Users`
--

CREATE TABLE `Step1_Ex2_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Contenu de la table `Step1_Ex2_Users`
--

INSERT INTO `Step1_Ex2_Users` (`id`, `user_id`, `question_id`) VALUES
(48, 23, 5),
(49, 23, 11),
(50, 23, 12),
(51, 23, 7);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex3`
--

CREATE TABLE `Step1_Ex3` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `Step1_Ex3`
--

INSERT INTO `Step1_Ex3` (`Id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 3: GOOD WORKER', '', '', 'EXERCICE 3 : BON TRAVAILLEUR', '', '', '0'),
(2, 'introduction', 'Every employer appreciates certain characteristics from his/her employees that are common to everyone. Below we have listed several good and "bad" characteristic. What are in your opinion good characteristics? Check them and think about the ones you can apply to yourself.', '', '', 'Tous les employeurs apprécient certaines qualités chez leurs employés. Vous trouverez ci-dessous une liste de « bonnes » et « mauvaises » qualités. Pour vous, lesquelles sont positives ? Cochez-les et réfléchissez à celles qui vous correspondent.', '', '', ''),
(3, 'result', 'Statements / qualities 1, 2, 5, 6, 12, 13, 15, 18, 20 and 22 to 34 are all very important in your working place. You should pay attention to the company’s policies and to your co-workers and try to examine the situation first before you get to “comfortable”', '', '', 'Les qualités 1, 2, 5, 6, 12, 13, 15, 18, 20 et 22 à 34 sont toutes très importantes dans le milieu professionnel. Vous devriez prendre en compte les politiques de l''entreprise et faire attention à ce que font vos collègues, et essayer d''examiner la situation avant de vous mettre « trop à l''aise ».', '', '', ''),
(4, 'button_check', 'Check', '', '', 'Vérifier', '', '', ''),
(5, 'good', 'Good characteristics you have checked', '', '', 'Les qualités positives que vous avez cochées', '', '', ''),
(6, 'miss', 'Good characteristics you have missed', '', '', 'Les qualités positives que vous avez oubliées', '', '', ''),
(7, 'bad', 'Bad characteristics you have checked', '', '', 'Les mauvaises qualités que vous avez cochées', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex3_Characteristics`
--

CREATE TABLE `Step1_Ex3_Characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Contenu de la table `Step1_Ex3_Characteristics`
--

INSERT INTO `Step1_Ex3_Characteristics` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'Personal hygiene and tidiness / appearance', '', '', 'Hygiène personnelle et apparence soignée', '', '', ''),
(2, 2, 1, 'Punctuality', '', '', 'Ponctualité', '', '', ''),
(3, 3, 0, ' Quarrelsomeness', '', '', 'Esprit querelleur', '', '', ''),
(4, 4, 0, 'Being late', '', '', 'Retardataire', '', '', ''),
(5, 5, 1, 'Adaptability / flexibility', '', '', 'Capacité d''adaptation / flexibilité', '', '', ''),
(6, 6, 1, 'Good listener', '', '', 'Capacité d''écoute', '', '', ''),
(7, 7, 0, 'Avoiding assignments', '', '', 'Évite les tâches qu’on lui donne', '', '', ''),
(8, 8, 0, 'Pessimism', '', '', 'Pessimiste', '', '', ''),
(9, 9, 0, 'Frequent brakes (coffee, cigarettes)', '', '', 'Prendre des pauses à répétition (café, cigarettes, etc.)', '', '', ''),
(10, 10, 0, 'Doing personal errands in your work time', '', '', 'Faire des courses personnelles sur son temps de travail', '', '', ''),
(11, 11, 0, 'Gossiping', '', '', 'Colporter des ragots', '', '', ''),
(12, 12, 1, 'Willingness to cooperate', '', '', 'Volonté de collaborer', '', '', ''),
(13, 13, 1, 'Willingness to help', '', '', 'Volonté d''aider', '', '', ''),
(14, 14, 0, 'Talking too much', '', '', 'Bavard', '', '', ''),
(15, 15, 1, 'Confidence', '', '', 'Confiance en soi', '', '', ''),
(16, 16, 0, 'Disloyalty', '', '', 'Manque de loyauté', '', '', ''),
(17, 17, 0, 'Low efficiency', '', '', 'Peu efficace', '', '', ''),
(18, 18, 1, 'Self initiative', '', '', 'initiative personnelle', '', '', ''),
(19, 19, 0, 'Talking about your companies business secrets to your friends', '', '', 'Parler des affaires confidentielles de l''entreprise à ses amis', '', '', ''),
(20, 20, 1, 'Communicativeness', '', '', 'Capacité de communication', '', '', ''),
(21, 21, 0, 'Constant complaining', '', '', 'Esprit négatif', '', '', ''),
(22, 22, 1, 'Hard working', '', '', 'Travailler dur', '', '', ''),
(23, 23, 1, 'Responsibility', '', '', 'Être responsable', '', '', ''),
(24, 24, 1, 'Good time management', '', '', 'Bonne gestion du temps', '', '', ''),
(25, 25, 1, 'Be polite ', '', '', 'Politesse ', '', '', ''),
(26, 26, 1, 'Respect deadlines', '', '', 'Respect des délais impartis', '', '', ''),
(27, 27, 1, 'Be committed', '', '', 'Engagé', '', '', ''),
(28, 28, 1, 'Enthusiastic', '', '', 'Enthousiaste', '', '', ''),
(29, 29, 1, 'Respect dress code', '', '', 'Respect du code vestimentaire', '', '', ''),
(30, 30, 1, 'Work in team', '', '', 'Travailler en équipe', '', '', ''),
(31, 31, 1, 'Work under pressure', '', '', 'Travailler sous pression', '', '', ''),
(32, 32, 1, 'Accomplish tasks', '', '', 'Accomplir des tâches', '', '', ''),
(33, 33, 1, 'Willing to learn', '', '', 'Volonté d''apprendre', '', '', ''),
(34, 34, 1, 'Good manners', '', '', 'Bonnes manières', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex3_Users`
--

CREATE TABLE `Step1_Ex3_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=135 ;

--
-- Contenu de la table `Step1_Ex3_Users`
--

INSERT INTO `Step1_Ex3_Users` (`id`, `user_id`, `char_id`) VALUES
(75, 1, 13),
(76, 1, 14),
(77, 1, 15),
(131, 23, 5),
(132, 23, 7),
(133, 23, 10),
(134, 23, 12);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex4`
--

CREATE TABLE `Step1_Ex4` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `Step1_Ex4`
--

INSERT INTO `Step1_Ex4` (`Id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 4: VALUES', '', '', 'EXERCICE 4 : VALEURS', '', '', ''),
(2, 'introductionA', 'Before finding a job every person needs to know his/her values. You need to think about your values because they can have a great impact on you finding a job and later on your work performance. For example, if having a family and spending time with them is of great importance to you, you might think twice whether taking a job that requires working extra hours or working afternoons and nights is suitable for you.\n\nCheck the values below that apply to you.', '', '', ' Avant de trouver un emploi, il est important de connaître ses valeurs. Vous devez réfléchir à vos valeurs parce qu''elles peuvent avoir un impact important sur votre recherche d''emploi et sur vos performances une fois dans l’entreprise. Par exemple, si avoir une famille et passer du temps avec elle est très important pour vous, un poste qui requiert beaucoup d''heures supplémentaires ou de travailler les après-midi ou les soirs n''est peut-être pas fait pour vous.\n\nCochez les valeurs de la liste ci-dessous qui vous correspondent.', '', '', ''),
(4, 'introductionB', 'Now try to think about your values. Choose the 6 most important values from the previous exercise. Then arrange them from 1 to 6 by importance, where 1 is the most important one.', '', '', 'Essayez maintenant de réfléchir à vos valeurs. Choisissez les 6 valeurs de cette liste qui sont les plus importantes pour vous. Classez-les ensuite par ordre d''importance, de 1 (le plus important) à 6 (le moins important).', '', '', ''),
(5, 'result', 'It does not mean that the other values are not as important but in many situations in life you will have to choose between different things\nKnowing yourself, your interests, values, your skills… is of utter importance when one is searching for a job. If one knows what he or she is capable of, one will be able to search for an appropriate job and introduce oneself in an appropriate way. Most people don’t think about these qualities systematically and that is why it often happens that they forget to mention important qualities during a job interview.\n', '', '', 'Cela ne signifie pas que les autres valeurs ne sont pas importantes, mais souvent dans la vie, il faut faire un choix.\r\nSe connaître, connaître ses intérêts, ses valeurs, ses compétences... est de la plus haute importance quand on recherche un emploi. Si vous savez de quoi vous êtes capable, vous pourrez chercher un poste qui vous convient, et vous présenter de manière adéquate. La plupart des gens ne pensent pas à ces qualités de manière systématique, et oublient donc de mentionner des qualités importantes pendant un entretien.\r\n', '', '', ''),
(6, 'partA', 'Part A - Your values', '', '', 'Partie A - Vos valeurs', '', '', ''),
(7, 'partB', 'Part B - Your most important values', '', '', 'Partie B - Vos valeurs les plus importantes', '', '', ''),
(8, 'value', 'Value', '', '', 'Valeur', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex4_Users_Personnal_Values`
--

CREATE TABLE `Step1_Ex4_Users_Personnal_Values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=622 ;

--
-- Contenu de la table `Step1_Ex4_Users_Personnal_Values`
--

INSERT INTO `Step1_Ex4_Users_Personnal_Values` (`id`, `user_id`, `value_id`) VALUES
(32, 8, 2),
(33, 8, 3),
(34, 8, 4),
(35, 8, 5),
(36, 8, 6),
(37, 8, 8),
(38, 8, 9),
(39, 8, 10),
(40, 8, 11),
(41, 8, 12),
(42, 8, 14),
(43, 8, 27),
(47, 4, 1),
(48, 4, 5),
(49, 4, 10),
(50, 4, 19),
(51, 4, 23),
(52, 5, 1),
(53, 5, 15),
(54, 5, 18),
(55, 5, 25),
(56, 5, 27),
(57, 5, 28),
(122, 1, 1),
(123, 1, 3),
(124, 1, 6),
(125, 1, 9),
(610, 23, 1),
(611, 23, 2),
(612, 23, 6),
(613, 23, 7),
(614, 23, 11),
(615, 23, 1),
(616, 23, 2),
(617, 23, 6),
(618, 23, 10),
(619, 23, 11),
(620, 23, 14),
(621, 23, 15);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex4_Users_Rank_Values`
--

CREATE TABLE `Step1_Ex4_Users_Rank_Values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=307 ;

--
-- Contenu de la table `Step1_Ex4_Users_Rank_Values`
--

INSERT INTO `Step1_Ex4_Users_Rank_Values` (`id`, `user_id`, `value_id`, `rank`) VALUES
(43, 8, 1, 1),
(44, 8, 1, 2),
(45, 8, 1, 3),
(46, 8, 1, 4),
(47, 8, 1, 5),
(48, 8, 1, 6),
(55, 4, 4, 1),
(56, 4, 1, 2),
(57, 4, 1, 3),
(58, 4, 1, 4),
(59, 4, 1, 5),
(60, 4, 1, 6),
(61, 5, 20, 1),
(62, 5, 13, 2),
(63, 5, 17, 3),
(64, 5, 12, 4),
(65, 5, 18, 5),
(66, 5, 12, 6),
(133, 1, 1, 1),
(134, 1, 1, 2),
(135, 1, 1, 3),
(136, 1, 1, 4),
(137, 1, 1, 5),
(138, 1, 1, 6),
(301, 23, 0, 1),
(302, 23, 11, 2),
(303, 23, 0, 3),
(304, 23, 0, 4),
(305, 23, 0, 5),
(306, 23, 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex4_Values`
--

CREATE TABLE `Step1_Ex4_Values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Contenu de la table `Step1_Ex4_Values`
--

INSERT INTO `Step1_Ex4_Values` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'JOB SECURITY', '', '', 'SÉCURITÉ DE L''EMPLOI', '', '', ''),
(2, 2, 'INDEPENDENCE', '', '', 'INDÉPENDANCE', '', '', ''),
(3, 3, 'COMPETITIVENESS', '', '', 'CONCURRENCE', '', '', ''),
(4, 4, 'TIME / FREEDOM', '', '', 'TEMPS / LIBERTÉ', '', '', ''),
(5, 5, 'STATUS', '', '', 'STATUT', '', '', ''),
(6, 6, 'CREATIVITY', '', '', 'CREATIVITÉ', '', '', ''),
(7, 7, 'DECISION MAKING', '', '', 'PRISE DE DÉCISION', '', '', ''),
(8, 8, 'TO BE AN EXPERT', '', '', 'ÊTRE EXPERT', '', '', ''),
(9, 9, 'TO HELP OTHERS', '', '', 'AIDER LES AUTRES', '', '', ''),
(10, 10, 'TO BELONG', '', '', 'SENTIMENT D''APPARTENIR', '', '', ''),
(11, 11, 'SELF-GOVERNMENT', '', '', 'AUTONOMIE', '', '', ''),
(12, 12, 'POWER', '', '', 'POUVOIR', '', '', ''),
(13, 13, 'PRECISION', '', '', 'PRÉCISION', '', '', ''),
(14, 14, 'EXCITEMENT', '', '', 'EXCITATION', '', '', ''),
(15, 15, 'STABILITY', '', '', 'STABILITÉ', '', '', ''),
(16, 16, 'SOCIABLE', '', '', 'SOCIABLE', '', '', ''),
(17, 17, 'FAMILY', '', '', 'FAMILLE', '', '', ''),
(18, 18, 'PASSION', '', '', 'PASSION', '', '', ''),
(19, 19, 'SAFETY', '', '', 'SURETÉ', '', '', ''),
(20, 20, 'TIME', '', '', 'TEMPS', '', '', ''),
(21, 21, 'AMBITION', '', '', 'AMBITION', '', '', ''),
(22, 22, 'PROFESSIONALISM / RESPONSABILITY', '', '', 'PROFESSIONALISME / RESPONSABILITÉ', '', '', ''),
(23, 23, 'HONESTY', '', '', 'HONNÊTETÉ', '', '', ''),
(24, 24, 'SUPPORTIVE', '', '', 'SOUTIEN', '', '', ''),
(25, 25, 'SECURITY', '', '', 'SÉCURITÉ', '', '', ''),
(26, 26, 'LOYALTY', '', '', 'LOYAUTÉ', '', '', ''),
(27, 27, 'CREDIBILITY', '', '', 'CRÉDIBILITÉ', '', '', ''),
(28, 28, 'QUALITY', '', '', 'QUALITÉ', '', '', ''),
(29, 29, 'SATISFACTION', '', '', 'SATISFACTION', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex4_Values_Description`
--

CREATE TABLE `Step1_Ex4_Values_Description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Contenu de la table `Step1_Ex4_Values_Description`
--

INSERT INTO `Step1_Ex4_Values_Description` (`id`, `value_id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'having assured job / working place and relatively moderate income', '', '', 'avoir un travail assuré / et un revenu modéré assuré', '', '', ''),
(2, 2, 'working with little or no supervision', '', '', 'travailler avec peu ou pas de supervision', '', '', ''),
(3, 3, 'comparing your competences with others for achieving recognition or other awards', '', '', 'comparer vos compétences avec celles des autres pour obtenir une certaine reconnaissance ou des récompenses.', '', '', ''),
(4, 4, 'planning your own itinerary', '', '', 'planifier son propre itinéraire', '', '', ''),
(5, 5, 'occupying a position where you are respected and admired', '', '', 'occuper un poste où on est respecté et admiré', '', '', ''),
(6, 6, 'to make up new ideas, programmes, ways of working', '', '', 'créer de nouvelles idées, de nouveaux programmes, de nouvelles façons de travailler', '', '', ''),
(7, 7, 'to be the one who makes decisions on how things should be done ', '', '', 'être celui qui décide comment les choses devraient être faites ', '', '', ''),
(8, 8, 'to be known as someone who has special knowledge and competences in certain fields', '', '', 'être reconnu comme quelqu''un qui a une connaissance particulière et des compétences dans certains domaines.', '', '', ''),
(9, 9, 'to help people, individually or in group', '', '', 'aider les gens, que ce soit individuellement ou en groupe', '', '', ''),
(10, 10, 'to feel that you are part of a group', '', '', 'sentir qu''on fait partie d''un groupe', '', '', ''),
(11, 11, 'to do things by yourself without others being implicated ', '', '', 'faire les choses seul, sans que les autres ne soient impliqués ', '', '', ''),
(12, 12, 'to have the opportunity to direct and have influence on the activities of others', '', '', 'avoir l''opportunité de diriger et avoir une influence sur les activités des autres', '', '', ''),
(13, 13, 'to do work which requires high level of accuracy or punctuality', '', '', 'faire un travail qui requiert beaucoup de précision, de rigueur et de ponctualité', '', '', ''),
(14, 14, 'to do work which offers stimulation and excitement', '', '', 'faire un travail stimulant et excitant', '', '', ''),
(15, 15, 'to have stable work that doesn’t change quickly ', '', '', 'avoir un travail solide, qui n''est pas en proie aux changements rapides ', '', '', ''),
(16, 16, 'to build working and sociable relations', '', '', 'construire des relations de travail et sociales', '', '', ''),
(17, 17, 'to have good relations with your family', '', '', 'avoir de bons rapports avec votre famille', '', '', ''),
(18, 18, 'to find beauty in art, nature, design,…', '', '', 'voir la beauté dans l''art, la nature, le design...', '', '', ''),
(19, 19, 'safe environment ', '', '', 'un environnement qui ne présente pas de dangers ', '', '', ''),
(20, 20, 'flexibility', '', '', 'flexibilité', '', '', ''),
(21, 21, 'to increase the professional level', '', '', 'grandir sur le plan professionnel', '', '', ''),
(22, 22, 'to show responsibility at work ', '', '', 'faire preuve de responsabilité au travail ', '', '', ''),
(23, 23, 'to be honest', '', '', 'être honnête', '', '', ''),
(24, 24, 'to support others and give help', '', '', 'soutenir les autres et aider', '', '', ''),
(25, 25, 'belonging to the group ', '', '', 'appartenir au groupe ', '', '', ''),
(26, 26, '', '', '', '', '', '', ''),
(27, 27, 'level of credibility of others towards you', '', '', 'niveau de crédibilité des autres envers vous', '', '', ''),
(28, 28, 'to do work which requires high level of quality', '', '', 'faire un travail qui requiert un haut niveau de qualité', '', '', ''),
(29, 29, 'to be satisfied with the work', '', '', 'être satisfait de son travail', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex5`
--

CREATE TABLE `Step1_Ex5` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `Step1_Ex5`
--

INSERT INTO `Step1_Ex5` (`Id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 5: JOB OPPORTUNITIES', '', '', 'EXERCICE 5 : OPPORTUNITÉS PROFESSIONNELLES', '', '', ''),
(2, 'introduction', 'The statements below apply to different situations which may occur when one is searching for a job. Although not all statements may apply to you directly, try to put yourself in that position. It is required to answer all questions.', '', '', 'Les affirmations ci-dessous correspondent à différentes situations qui pourraient survenir dans votre recherche d''emploi. Bien que toutes ces affirmations ne vous concernent pas directement, essayez de vous mettre dans cette position. Vous devez répondre à toutes les questions.\r\n\r\n', '', '', ''),
(3, 'result_yes_title', 'You answered most of your questions with YES', '', '', 'Si vous avez répondu OUI à la plupart des questions', '', '', ''),
(4, 'result_yes_description', 'You easily recognize job opportunities. You realize that it is not enough just to send job applications only to advertised job vacancies and wait for an answer, but you also explore the hidden job market.', '', '', 'Vous identifiez facilement les opportunités professionnelles. Vous comprenez que postuler à quelques annonces et attendre une réponse n''est pas suffisant, et vous explorez le marché du travail caché.', '', '', ''),
(5, 'result_no_title', 'You answered most of your questions with NO', '', '', 'Si vous avez répondu NON à la plupart des questions', '', '', ''),
(6, 'result_no_description', 'Did you know that only 30% of the job market vacancies are advertised? You need to pay attention to different kinds of news and information such as: a new company is arriving, different information that might come through while talking to your friends, different advertisements about new companies, somebody is retiring, etc., because a dream job might may be hidden somewhere in there.', '', '', 'Saviez-vous que seul 30% des postes à pourvoir sont publiés ? Vous devez apprendre à faire attention à différentes sortes de nouvelles, comme une nouvelle entreprise qui s''installe, différentes informations qui pourrait surgir pendant des conversations avec des amis, des pubs sur de nouvelles entreprises, quelqu''un prend sa retraite, etc. parce que le poste de rêve  est peut-être plus près que vous ne le pensez !', '', '', ''),
(7, 'statement', 'Statement', '', '', 'Affirmation', '', '', ''),
(8, 'yes', 'Yes', '', '', 'Oui', '', '', ''),
(9, 'no', 'No', '', '', 'Non', '', '', ''),
(10, 'statement_yes', 'You answered YES to the following', '', '', 'Vous avez répondu OUI aux affirmations suivantes', '', '', ''),
(11, 'statement_no', 'You answered NO to the following', '', '', 'Vous avez répondu NON aux affirmations suivantes', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex5_Statements`
--

CREATE TABLE `Step1_Ex5_Statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bg` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hu` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `Step1_Ex5_Statements`
--

INSERT INTO `Step1_Ex5_Statements` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'I’ve heard that a new company is opening in our town and I would be interested in working there. I will call the company and try to arrange a job interview.', '', '', 'J''ai entendu qu''une nouvelle entreprise ouvre en ville, et j''aimerais y travailler.  J''appelle l''entreprise pour essayer d''avoir un entretien.', '', '', ''),
(2, 2, 'When a friend mentions that a new job opportunity is arising in his company, I ask  im for details.', '', '', 'Quand un ami parle d''une opportunité dans son entreprise, je lui demande plus  d''informations.', '', '', ''),
(3, 3, 'I have read an advertisement which was interesting but it didn’t describe in detail what was  the job about. I will call the company and ask for details.', '', '', 'J''ai lu une annonce intéressante, mais elle ne décrivait pas en détail en quoi consistait le poste. J''appelle l''entreprise pour avoir plus d''informations', '', '', ''),
(4, 4, 'Advertisement upon which I will write a job application expires in 3 weeks time. I will write and send a job application right away.', '', '', 'L''annonce pour laquelle je veux envoyer mon CV est valable encore 3 semaines. Je rédige et envois ma candidature dès aujourd''hui', '', '', ''),
(5, 5, 'I wish to work in a company I like, but it hasn’t yet advertised a new job position. I will  end a job application regardless.', '', '', 'J''aimerais travailler pour une entreprise qui me plait, mais elle n''a pas encore publié d''annonce. J''envois une candidature de toute façon', '', '', ''),
(6, 6, 'I am not satisfied with my current job therefore I search for new job opportunities.', '', '', 'Mon travail actuel ne me satisfait pas, je cherche donc de nouvelles opportunités.', '', '', ''),
(7, 7, 'I wish to work somewhere but my current education doesn’t qualify. I inquire about the educational system and about my opportunities.', '', '', 'Je souhaite travailler quelque part, mais mon bagage académique ne me le permet pas. Je me renseigne sur les possibles formations et sur les opportunités qui s''offrent à moi.', '', '', ''),
(8, 8, 'I search for opportunities only when an advertisement about job vacancy is released.', '', '', 'Je ne cherche des opportunités que quand une annonce pour un poste est publiée. ', '', '', ''),
(9, 9, 'I have been invited to a job interview on Friday at 11 but at the same time I have an appointment with a friend which I haven’t seen for a long time. I cancel the appointment with my friend and go to the interview instead.', '', '', 'On m''a invité à un entretien vendredi à 11h, mais au même moment j''ai rendez-vous  avec un ami que je n''ai pas vu depuis longtemps. J''annule le rendez-vous avec mon  ami pour aller à l''entretien.', '', '', ''),
(10, 10, 'Do you check often the social networks for new job', '', '', 'Vérifiez-vous souvent les réseaux sociaux pour trouver de nouvelles offres ?\n', '', '', ''),
(11, 11, 'Do you job search every day?', '', '', 'Cherchez-vous tous les jours ?', '', '', ''),
(12, 12, 'Do you often go to job office?  ', '', '', 'Vous rendez-vous souvent au pôle emploi ? ', '', '', ''),
(13, 13, 'Do you track your job application? (call by phone for example to receive confirmation of they have received your CV/Job Application)', '', '', 'Est-ce que vous suivez vos candidatures ? (par exemple un appel pour avoir confirmation que votre CV/candidature ont bien été reçus)', '', '', ''),
(14, 14, 'Do you ask for feedback?', '', '', 'Demandez-vous un retour sur votre candidature/entretien ?', '', '', ''),
(15, 15, 'Are you aware of the employment law in this country?', '', '', 'Êtes-vous familiers avec la législation du travail en vigueur dans ce pays ?', '', '', ''),
(16, 16, 'Do you have a permission to work in this country?', '', '', 'Avez-vous l''autorisation de travailler dans ce pays ?', '', '', ''),
(17, 17, 'Do you understand local culture and labour market?', '', '', 'Comprenez-vous le marché du travail et le marché culturel local ?', '', '', ''),
(18, 18, 'Do you send presentation of yourself?', '', '', 'Envoyez-vous une lettre pour vous présenter ?', '', '', ''),
(19, 19, 'Do you network?', '', '', 'Faites-vous du réseautage ?', '', '', ''),
(20, 20, 'Do you ask your friends to review your CV, cover letter, etc. before sending them to a company?', '', '', 'Demandez-vous à vos amis de relire votre CV, ou lettre de motivation avant de les envoyer à une entreprise ?', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex5_Users`
--

CREATE TABLE `Step1_Ex5_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `statement_id` int(11) NOT NULL,
  `answer` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=481 ;

--
-- Contenu de la table `Step1_Ex5_Users`
--

INSERT INTO `Step1_Ex5_Users` (`id`, `user_id`, `statement_id`, `answer`) VALUES
(101, 8, 1, 1),
(102, 8, 2, 1),
(103, 8, 3, 1),
(104, 8, 4, 0),
(105, 8, 5, 0),
(106, 8, 6, 1),
(107, 8, 7, 0),
(108, 8, 8, 0),
(109, 8, 9, 1),
(110, 8, 10, 1),
(111, 8, 11, 0),
(112, 8, 12, 0),
(113, 8, 13, 0),
(114, 8, 14, 0),
(115, 8, 15, 0),
(116, 8, 16, 0),
(117, 8, 17, 0),
(118, 8, 18, 0),
(119, 8, 19, 0),
(120, 8, 20, 0),
(121, 4, 1, 0),
(122, 4, 2, 0),
(123, 4, 3, 1),
(124, 4, 4, 0),
(125, 4, 5, 0),
(126, 4, 6, 1),
(127, 4, 7, 0),
(128, 4, 8, 1),
(129, 4, 9, 0),
(130, 4, 10, 0),
(131, 4, 11, 1),
(132, 4, 12, 0),
(133, 4, 13, 0),
(134, 4, 14, 0),
(135, 4, 15, 0),
(136, 4, 16, 0),
(137, 4, 17, 1),
(138, 4, 18, 0),
(139, 4, 19, 0),
(140, 4, 20, 0),
(181, 5, 1, 0),
(182, 5, 2, 0),
(183, 5, 3, 0),
(184, 5, 4, 0),
(185, 5, 5, 0),
(186, 5, 6, 0),
(187, 5, 7, 0),
(188, 5, 8, 0),
(189, 5, 9, 0),
(190, 5, 10, 0),
(191, 5, 11, 0),
(192, 5, 12, 0),
(193, 5, 13, 0),
(194, 5, 14, 0),
(195, 5, 15, 0),
(196, 5, 16, 0),
(197, 5, 17, 0),
(198, 5, 18, 0),
(199, 5, 19, 0),
(200, 5, 20, 0),
(381, 1, 1, 1),
(382, 1, 2, 0),
(383, 1, 3, 1),
(384, 1, 4, 0),
(385, 1, 5, 0),
(386, 1, 6, 0),
(387, 1, 7, 1),
(388, 1, 8, 0),
(389, 1, 9, 1),
(390, 1, 10, 0),
(391, 1, 11, 0),
(392, 1, 12, 0),
(393, 1, 13, 0),
(394, 1, 14, 0),
(395, 1, 15, 0),
(396, 1, 16, 0),
(397, 1, 17, 0),
(398, 1, 18, 0),
(399, 1, 19, 0),
(400, 1, 20, 0),
(461, 23, 1, 0),
(462, 23, 2, 0),
(463, 23, 3, 0),
(464, 23, 4, 0),
(465, 23, 5, 1),
(466, 23, 6, 0),
(467, 23, 7, 0),
(468, 23, 8, 0),
(469, 23, 9, 0),
(470, 23, 10, 0),
(471, 23, 11, 0),
(472, 23, 12, 0),
(473, 23, 13, 1),
(474, 23, 14, 0),
(475, 23, 15, 0),
(476, 23, 16, 0),
(477, 23, 17, 1),
(478, 23, 18, 0),
(479, 23, 19, 0),
(480, 23, 20, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex6`
--

CREATE TABLE `Step1_Ex6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(12) DEFAULT NULL,
  `uk` varchar(994) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL,
  `pt` varchar(10) DEFAULT NULL,
  `fr` varchar(1240) DEFAULT NULL,
  `lt` varchar(10) DEFAULT NULL,
  `is` varchar(10) DEFAULT NULL,
  `hu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `Step1_Ex6`
--

INSERT INTO `Step1_Ex6` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 6:  GOAL SETTING I', NULL, NULL, 'EXERCICE 6 : SE FIXER DES OBJECTIFS I', NULL, NULL, NULL),
(2, 'introduction', 'Please tick one statement that is most suitable for you.', NULL, NULL, 'Cochez l''affirmation qui vous correspond le plus.', NULL, NULL, NULL),
(6, 'result', 'People who have set a clear goal know where they are going and what they want to achieve. Goals that you set depend on your needs, wishes and interests. They help us figure out what is important in life and what not and give as a vision. Reaching a goal means reaching a higher confidence level and awareness of your own abilities and competences. When you are setting a goal you have to keep in mind it has to be precisely clarified/determined with positive outcome and deadlines which help you to monitor and measure your progress. You have to set priorities which help you focus on important issues. Write down your goals and set them realistically and reachable, so that they are not set too low or too high. It is important that a goal comes from you and is not a result of your social environment. Keep in mind that the biggest obstacle in realizing your goal is fear, which is rarely justified. If you overcome fear you will surely overcome the obstacles on your way to achieving a goal.', NULL, NULL, 'Les gens qui se fixent un objectif clair savent où ils vont et ce qu''ils veulent accomplir. Les objectifs que l''on se fixe dépendent de nos besoins, de nos désirs et de nos intérêts. Ils nous aident à définir ce qui est important dans la vie et nous donnent une vision à long terme. Atteindre un objectif c’est aussi atteindre une plus haute estime de soi et une meilleure connaissance de ses capacités et de ses compétences. Quand vous vous fixez des objectifs, gardez à l''esprit qu''ils doivent être clairement identifiés/formulés avec des résultats positifs, et des délais précis, qui vous aident à évaluer et à mesurer votre progrès. Vous devez fixer des objectifs qui vous aident à vous concentrer sur les questions importantes. Écrivez vos objectifs, et définissez-les de manière réaliste et atteignable, pour qu''ils ne soient ni trop ni pas assez ambitieux. Il est important que vous fixiez vous-même vos objectifs, et qu’ils ne soient pas le résultat de votre environnement social. Gardez à l''esprit que le plus grand obstacle pour atteindre votre objectif est la peur, qui est rarement justifiée. Si vous réussissez à vaincre vos peurs, vous pourrez surement surmonter les embuches sur le chemin.', NULL, NULL, NULL),
(7, 'statement', 'Statement', NULL, NULL, 'Affirmation', NULL, NULL, NULL),
(8, 'lack', 'Lack', NULL, NULL, 'Lacune', NULL, NULL, NULL),
(9, 'solution', 'Solution', NULL, NULL, 'Solution', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex6_DirectTo`
--

CREATE TABLE `Step1_Ex6_DirectTo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statement_id` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `Step1_Ex6_DirectTo`
--

INSERT INTO `Step1_Ex6_DirectTo` (`id`, `statement_id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'Direct to the Self Awareness (Manual for Unemployed page 3)', '', '', 'Se reporter à Conscience de Soi (Manuel du chômeur, page 3)', '', '', ''),
(2, 2, 'Direct to the Self Awareness: IN WHAT KIND OF ENVIRONMENT DO I WANT TO WORK?', '', '', 'Se reporter à Conscience de Soi :  DANS QUEL TYPE D''ENVIRONNEMENT EST-CE QUE JE SOUHAITE TRAVAILLER ?', '', '', ''),
(3, 3, 'Direct to the Self Awareness: IN WHAT KIND OF ENVIRONMENT DO I WANT TO WORK?', '', '', 'Se reporter à Conscience de Soi :  DANS QUEL TYPE D''ENVIRONNEMENT EST-CE QUE JE SOUHAITE TRAVAILLER ?', '', '', ''),
(4, 4, 'Direct to the Goal Setting', '', '', 'Se reporter à Se fixer des objectifs', '', '', ''),
(5, 5, 'Direct to the Goal Setting ', '', '', 'Se reporter à Se fixer des objectifs', '', '', ''),
(6, 6, 'Direct to the Self Awareness', '', '', 'Se reporter à Conscience de Soi', '', '', ''),
(7, 7, 'Direct to the Next exercise', '', '', 'Se reporter à l''exercice suivant', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex6_Lack`
--

CREATE TABLE `Step1_Ex6_Lack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statement_id` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `Step1_Ex6_Lack`
--

INSERT INTO `Step1_Ex6_Lack` (`id`, `statement_id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'There is a lack of information about myself, my personal qualities, values, interests, and important areas of life.', '', '', 'Il y a un manque d''information sur moi-même, mes qualités personnelles, mes valeurs, mes intérêts et les zones importantes de ma vie.', '', '', ''),
(2, 2, 'There is a lack of information about career opportunities in a particular organization.', '', '', 'Il y a un manque d''information sur les opportunités professionnelles dans une organisation concrète.', '', '', ''),
(3, 3, 'There is a lack of information about career opportunities in a professional field.', '', '', 'Il y a un manque d''information sur les opportunités professionnelles dans un secteur donné.', '', '', ''),
(4, 4, 'There is a lack of information about myself, goals and priorities.', '', '', 'Il y a un manque d''information sur moi-même, mes buts, et mes priorités.', '', '', ''),
(5, 5, 'There is a lack of information about my strengths and abilities.', '', '', 'Il y a un manque d''information sur mes forces et mes aptitudes.', '', '', ''),
(7, 7, 'None.', '', '', 'Aucune.', '', '', ''),
(6, 6, 'There is a lack of information about my weaknesses and threats.', '', '', 'Il y a un manque d''information sur mes faiblesses et les pièges.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex6_Statements`
--

CREATE TABLE `Step1_Ex6_Statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step1_Ex6_Statements`
--

INSERT INTO `Step1_Ex6_Statements` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'I do not know exactly what I want from a job.', '', '', 'Je ne sais pas exactement ce que j''attends de mon travail.', '', '', ''),
(2, 2, 'I am not sure what type of organization or enterprise I would like to work. ', '', '', 'Je ne suis pas sure du type d''entreprise ou d''organisation dans laquelle je souhaite travailler. ', '', '', ''),
(3, 3, 'I do not know well about the career opportinuties in the sphere of activity I am interested in.', '', '', 'Je ne suis pas très au fait des opportunités dans le secteur d''activité qui m''intéresse.', '', '', ''),
(4, 4, 'I have more than one goal, but they are incompatible with each other.', '', '', 'J''ai plusieurs objectifs, mais ils sont incompatibles.', '', '', ''),
(5, 5, 'I do not know if I can achieve my goal.', '', '', 'Je ne sais pas si je peux atteindre l''objectif que je me suis fixé.', '', '', ''),
(6, 6, 'I can not say what can prevent from my goal.', '', '', 'Je n''arrive pas à identifier ce qui m''empêche d''atteindre mon but.', '', '', ''),
(7, 7, 'I have a goal, I have already set up an action plan and particular dates for implementation of each action.', '', '', 'J''ai un objectif, j''ai déjà établi un plan d''action et des dates pour mettre en place chaque action.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex6_Users`
--

CREATE TABLE `Step1_Ex6_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `statement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `Step1_Ex6_Users`
--

INSERT INTO `Step1_Ex6_Users` (`id`, `user_id`, `statement_id`) VALUES
(23, 1, 2),
(28, 23, 4);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex7`
--

CREATE TABLE `Step1_Ex7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Step1_Ex7`
--

INSERT INTO `Step1_Ex7` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 7: GOAL SETTING II', '', '', 'EXERCICE 7: SE FIXER DES OBJECTIFS II', '', '', ''),
(2, 'introduction', 'You have a career goal - anticipated the kind of work and the job. Please tick questions, which are important planning the goal implementation.', '', '', 'Vous avez un objectif professionnel, préparez votre emploi en amont. Cochez les questions qui sont importantes pour planifier la réalisation de ces objectifs.', '', '', ''),
(3, 'result', 'Keep in mind that the biggest obstacle in realizing your goal is fear, which is rarely justified. If you overcome fear you will sorely overcome the obstacles on your way to achieving a goal.', '', '', 'Gardez à l''esprit que le plus grand obstacle pour atteindre ses objectifs est la peur, qui est rarement justifiée. Si vous réussissez à vaincre votre peur, vous pourrez surmontez toutes les embuches qui vous empêchent d''atteindre votre objectif. ', '', '', ''),
(4, 'important', 'Important questions you have checked', '', '', 'Questions importantes que vous avez cochées', '', '', ''),
(5, 'miss', 'Important questions you have missed', '', '', 'Questions importantes que vous avez oubliées', '', '', ''),
(6, 'not_important', 'NOT important questions you have checked', '', '', 'Questions NON importantes que vous avez cochées', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex7_Questions`
--

CREATE TABLE `Step1_Ex7_Questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(2) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `uk` varchar(151) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL,
  `pt` varchar(10) DEFAULT NULL,
  `fr` varchar(198) DEFAULT NULL,
  `lt` varchar(10) DEFAULT NULL,
  `is` varchar(10) DEFAULT NULL,
  `hu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `Step1_Ex7_Questions`
--

INSERT INTO `Step1_Ex7_Questions` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'Do I have appropriate features for the job?', NULL, NULL, 'Est-ce que j''ai les caractéristiques requises pour le poste ?', NULL, NULL, NULL),
(2, 2, 1, 'What will I have to do in a particular job?', NULL, NULL, 'Qu''est-ce que je dois faire pour un poste donné ?', NULL, NULL, NULL),
(3, 3, 1, 'What kind of company, organization do I want to work (public, private, launch my own business, small, large company, international organization, etc.)?', NULL, NULL, 'Dans quel type d''entreprise/d''organisation est-ce que je souhaite travailler (publique, privée, créer ma propre entreprise, une petite ou grande structure, une organisation internationale, etc.) ?', NULL, NULL, NULL),
(4, 4, 1, 'What should I learn in order to get the job?', NULL, NULL, 'Qu''est-ce que je dois apprendre pour obtenir ce poste ?', NULL, NULL, NULL),
(5, 5, 1, 'What changes in my life do I want to implement?', NULL, NULL, 'Quels changements dans ma vie est-ce que je veux mettre en place ?', NULL, NULL, NULL),
(6, 6, 1, 'How far am I willing to travel to the job every day? ', NULL, NULL, 'Quelle distance est-ce que je suis prête à parcourir tous les jours pour aller travailler ? ', NULL, NULL, NULL),
(7, 7, 1, 'Am I ready to work extra hours? ', NULL, NULL, 'Est-ce que je suis prêt à faire des heures supplémentaires ? ', NULL, NULL, NULL),
(8, 8, 0, 'What are the clothing requirements?', NULL, NULL, 'Quel est le code vestimentaire ?', NULL, NULL, NULL),
(9, 9, 1, 'What salary can I expect? ', NULL, NULL, 'À quel salaire est-ce que je peux prétendre ? ', NULL, NULL, NULL),
(10, 10, 0, 'Do they have a nice interior? ', NULL, NULL, 'Est-ce qu''ils ont une décoration agréable ? ', NULL, NULL, NULL),
(11, 11, 1, 'In what time period do I want to find a job? ', NULL, NULL, 'En combien de temps est-ce que je souhaite trouver un poste ? ', NULL, NULL, NULL),
(12, 12, 1, 'What does the employer have to offer for me to accept the job? ', NULL, NULL, 'Qu''est-ce que l''employeur doit m''offrir pour que j''accepte le poste ? ', NULL, NULL, NULL),
(13, 13, 1, 'Is my car good enough? ', NULL, NULL, 'Est-ce que ma voiture est assez bonne ? ', NULL, NULL, NULL),
(14, 14, 0, 'Will there be any handsome men working with me? ', NULL, NULL, 'Est-ce qu''il y aura des hommes séduisants qui travailleront avec moi ? ', NULL, NULL, NULL),
(15, 15, 1, 'Where else can I find out about available jobs? ', NULL, NULL, 'Où est-ce que je peux trouver d''autres offres ? ', NULL, NULL, NULL),
(16, 16, 0, 'What will my friends say about my choice? ', NULL, NULL, 'Que diront mes amis de ce choix ? ', NULL, NULL, NULL),
(17, 17, 1, 'Do I have adequate education?', NULL, NULL, 'Est-ce que j''ai le bagage académique nécessaire ?', NULL, NULL, NULL),
(18, 18, 1, 'What do I have to do in order to reach my goal and have no regrets about it?', NULL, NULL, 'Qu''est-ce que je dois faire pour atteindre mes objectifs et n''avoir aucun regret ?', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex7_Users`
--

CREATE TABLE `Step1_Ex7_Users` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) DEFAULT NULL,
  `question_id` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `Step1_Ex7_Users`
--

INSERT INTO `Step1_Ex7_Users` (`id`, `user_id`, `question_id`) VALUES
(68, 23, 5),
(67, 23, 3),
(66, 23, 1),
(54, 1, 10),
(53, 1, 2),
(52, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex8`
--

CREATE TABLE `Step1_Ex8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Step1_Ex8`
--

INSERT INTO `Step1_Ex8` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 8: MY GOALS', '', '', 'EXERCICE 8 : MES OBJECTIFS ', '', '', ''),
(2, 'description1', 'Now think about what you want to do in your life and what your goals are. Try to set them by answering the questions that will help you to find a job.', '', '', 'Maintenant réfléchissez à votre vie, à ce que vous faites, et à vos objectifs. Essayez de les fixer en répondant aux questions qui vous aideront à trouver un travail.', '', '', ''),
(3, 'description2', 'In this exercise counselor has to help the job seekers!', '', '', 'Dans cet exercice, le formateur doit aider les chômeurs !', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex8_Questions`
--

CREATE TABLE `Step1_Ex8_Questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `Step1_Ex8_Questions`
--

INSERT INTO `Step1_Ex8_Questions` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'What exactly do I want to do?', '', '', 'Qu''est-ce que je veux faire exactement ?', '', '', ''),
(2, 2, 'In what kind of organization/shop/industry do I want to work?', '', '', 'Dans quel type d''organisation/de boutique/d''industrie est ce que je veux travailler ?', '', '', ''),
(3, 3, 'How far am I ready to travel to the job every day?', '', '', 'À quelle distance est-ce que j''accepte de travailler ?', '', '', ''),
(4, 4, 'Am I ready to work extra hours?', '', '', 'Est-ce que je suis prêt à faire des heures supplémentaires ?', '', '', ''),
(5, 5, 'In what time period do I want to find a job?', '', '', 'En combien de temps est-ce que je souhaite trouver un poste ?', '', '', ''),
(6, 6, 'Do I have adequate education?', '', '', 'Est-ce que j''ai le bagage académique nécessaire ?', '', '', ''),
(7, 7, 'What salary can I expect?', '', '', 'À quel salaire est-ce que je peux prétendre ?', '', '', ''),
(8, 8, 'Where else can I find out about available jobs?', '', '', 'Où est-ce que je peux trouver d''autres offres ?', '', '', ''),
(9, 9, 'My long-term goal.', '', '', 'Mon objectif à long terme est :', '', '', ''),
(10, 10, 'My first step today.', '', '', 'Mon premier pas aujourd''hui :', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex8_Users`
--

CREATE TABLE `Step1_Ex8_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question_id` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=161 ;

--
-- Contenu de la table `Step1_Ex8_Users`
--

INSERT INTO `Step1_Ex8_Users` (`id`, `user_id`, `question_id`, `answer`) VALUES
(130, 1, '10', ' --- '),
(129, 1, '9', ' --- '),
(128, 1, '8', ' --- '),
(127, 1, '7', ' --- '),
(126, 1, '6', ' --- '),
(125, 1, '5', ' --- '),
(124, 1, '4', ' --- '),
(123, 1, '3', ' --- '),
(122, 1, '2', ' --- '),
(121, 1, '1', ' --- '),
(160, 23, '10', ' --- '),
(159, 23, '9', ' --- '),
(158, 23, '8', ' --- '),
(157, 23, '7', ' --- '),
(156, 23, '6', ' --- '),
(155, 23, '5', ' --- '),
(154, 23, '4', ' --- '),
(153, 23, '3', ' --- '),
(152, 23, '2', ' --- '),
(151, 23, '1', ' --- ');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex9`
--

CREATE TABLE `Step1_Ex9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step1_Ex9`
--

INSERT INTO `Step1_Ex9` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 9: SEARCHING FOR A JOB', '', '', 'EXERCICE 9 : LA RECHERCHE D''EMPLOI', '', '', ''),
(2, 'introductionA', 'You can search for a job in different ways. How do you search for a job? Put a heck mark beside it.', '', '', 'Il existe différentes manières de chercher un emploi. Comment cherchez-vous un travail ? Cochez les réponses qui correspondent.', '', '', ''),
(7, 'introductionB', 'Now, mention one example for the relevant question.', '', '', 'Donner maintenant un exemple pour chacune de vos réponses.', '', '', ''),
(5, 'partA', 'Part A', '', '', 'Partie A', '', '', ''),
(6, 'partB', 'Part B', '', '', 'Partie B', '', '', ''),
(8, 'satisfactory', 'SATISFACTORY', '', '', 'SATISFAISANT', '', '', ''),
(9, 'verywell', 'VERY WELL', '', '', 'TRÈS BIEN', '', '', ''),
(10, 'welldone', 'WELL DONE', '', '', 'BRAVO', '', '', ''),
(11, 'satisfactory_text', 'You have tried to find a job, but you have to try other ways for finding a job. Why do not you have a look at the other suggestions included in the list?', '', '', 'Vous avez essayé de trouver du travail, mais vous devez tenter d''autres voies pour vous faire embaucher. Pourquoi ne pas essayer de regarder les autres suggestions de la liste ?', '', '', ''),
(12, 'verywell_text', 'You have tried a lot of different ways to find a job. If they do not work for you, you have to try the rest of opportunities!', '', '', 'Vous avez eu recours à différentes méthodes pour chercher du travail. Si elles ne marchent pas pour vous, vous devez essayer les autres opportunités !', '', '', ''),
(13, 'welldone_text', 'You have tried most of the ways for finding a job. You can be sure that soon you will start one.', '', '', 'Vous avez exploité la plupart des voies pour la recherche d''emploi. Vous pouvez être sûr(e) que vous en trouverez un prochainement.', '', '', ''),
(14, 'conclusion', 'For finding a job all of the mentioned approaches are very important. Researches show that people that we know are a very good source of information about vacancies. Why? Let us remind you again. Advertisements for vacancies that are public represent just 30% of all available jobs on the labour market. The other 70% of the available jobs are not published. Because of that you have to pay attention to your surroundings. Ask your friends, your colleagues, read the magazines – maybe a new company is coming into town and you can send them an offer before they put an advertisement. Now think about the people you know. Who can help, who could know for some vacancy suitable for you? Don’t wait and call her/him immediately!', '', '', 'Pour trouver un travail, toutes les approches mentionnées dans cet exercice sont importantes. Les recherches démontrent que les gens que nous connaissons sont une très bonne source d''information pour des postes potentiels. Pourquoi ? Laissez-nous vous le rappeler. Les offres publiées ne représentent que 30% de tous les postes disponibles sur le marché du travail. Les 70% restants ne sont pas publiés. C''est pour cela qu''il est important de faire attention à ce qui vous entoure. Demandez à vos amis, vos collègues, lisez des magazines, peut-être qu''une nouvelle entreprise s''implante bientôt dans la région et que vous pouvez leur envoyer un CV avant même qu''ils ne publient une annonce. Maintenant, pensez aux gens que vos connaissez. Qui peut aider ? Qui pourrait être au courant de postes qui vous conviendraient ? N''attendez plus et appelez-les de suite !', '', '', ''),
(15, 'used', 'Methods you used to get a job', '', '', 'Les méthodes que vous avez utilisées', '', '', ''),
(16, 'not_used', 'Methods you DID NOT used to get a job', '', '', 'Les méthodes que vous n''avez pas utilisées', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex9_Users`
--

CREATE TABLE `Step1_Ex9_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `way_id` int(11) NOT NULL,
  `example` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Contenu de la table `Step1_Ex9_Users`
--

INSERT INTO `Step1_Ex9_Users` (`id`, `user_id`, `way_id`, `example`) VALUES
(101, 23, 5, ' --- '),
(100, 23, 3, ' --- '),
(99, 23, 1, ' --- '),
(92, 1, 14, ' --- '),
(91, 1, 10, ' --- '),
(90, 1, 7, ' --- ');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex9_Ways`
--

CREATE TABLE `Step1_Ex9_Ways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(2) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `it` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `Step1_Ex9_Ways`
--

INSERT INTO `Step1_Ex9_Ways` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `it`, `is`, `hu`) VALUES
(1, 1, 1, 'Employment web portals', '', '', 'Portails en ligne', '', '', ''),
(2, 2, 1, 'Magazines/Newspapers', '', '', 'Magazines/journaux', '', '', ''),
(3, 3, 0, 'Employment services', '', '', 'Services de recrutement', '', '', ''),
(4, 4, 0, 'Employment agency', '', '', 'Agences pour l’emploi', '', '', ''),
(5, 5, 1, 'Advertisement on radio', '', '', 'Publicités à la radio', '', '', ''),
(6, 6, 1, 'Advertisement on television', '', '', ' Publicités à la télévision', '', '', ''),
(7, 7, 0, 'Connections and acquaintances', '', '', ' Connaissances', '', '', ''),
(8, 8, 0, 'Bulletin boards', '', '', 'Tableaux d''affichage', '', '', ''),
(9, 9, 0, 'Personal contact', '', '', ' Contact personnel', '', '', ''),
(10, 10, 0, 'Sending job offers for working places which are not published', '', '', ' Envoyer une candidature spontanée aux entreprises qui n''ont pas encore publié d''annonces', '', '', ''),
(11, 11, 0, 'Sending job applications', '', '', ' Envoyer des candidatures', '', '', ''),
(12, 12, 1, 'Telephone', '', '', ' Par téléphone', '', '', ''),
(13, 13, 1, ' Internet', '', '', ' Par Internet', '', '', ''),
(14, 14, 0, 'Specialist journal', '', '', ' Revues spécialisés', '', '', ''),
(15, 15, 1, 'Yellow pages', '', '', ' Pages Jaunes', '', '', ''),
(16, 16, 0, 'I am paying attention while listening to the radio, watching TV or reading newspapers if something new is coming into town and it could mean an opportunity for me to find a job.', '', '', ' Je fais attention en écoutant la radio, ou en regardant la télévision ou en lisant les journaux, au cas où de nouvelles entreprises s''implantent en ville et pourraient représenter une opportunité dans la recherche d''emploi.', '', '', ''),
(17, 17, 0, 'Labour hire companies ', '', '', 'Agences de recrutement ', '', '', ''),
(18, 18, 1, 'Job fairs', '', '', 'Salons', '', '', ''),
(19, 19, 0, 'Other', '', '', 'Autre', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex10`
--

CREATE TABLE `Step1_Ex10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Step1_Ex10`
--

INSERT INTO `Step1_Ex10` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 10: IS THIS JOB FOR ME?', '', '', 'EXERCICE 10: EST-CE QUE CE POSTE ME CONVIENT ?', '', '', ''),
(2, 'introduction', 'One way to find out what knowledge, skills and abilities you own is to identify what knowledge, skills and abilities are required for different activities in which you are interested in. Are you wondering where and how to get this information? You can help yourself by reading work profiles, reading related articles or interviewing people who work in field you would like to work. When you find out what knowledge and skills certain job requires ask yourself if you have them. If there are some personal assets that you don’t have and you would like to develop them, write them down. The information vary for each type of occupation or work so if you are considering more options you have to make a separate list. Use this list when writing an application. You will be far more attractive for an employer if you point out the qualities you have and which are at the same time required for the job you are applying for.', '', '', 'Une manière de découvrir vos compétences, vos connaissances et vos aptitudes est d''identifier celles requises pour les activités qui vous intéressent. Où et comment trouver cette information ? Vous pouvez vous aider des profils de postes, lire des articles liés à ces activités ou en parler à des personnes qui travaillent dans le domaine qui vous intéresse. Quand vous trouvez les connaissances et compétences requises pour un poste donné, demandez-vous si vous les avez. S''il y a des avantages personnels que vous n''avez pas et aimeriez développer, écrivez-les. L''information varie pour chaque type d''occupation ou poste, alors si vous contemplez différentes options, vous devrez faire des listes distinctes. Utilisez cette liste lorsque vous rédigez votre candidature. Votre profil sera d''autant plus important pour un employeur si vous soulignez les qualités que vous avez et qui sont en même temps requises pour le poste en question.', '', '', ''),
(3, 'type', 'TYPE OF WORK:', '', '', 'Type de poste :', '', '', ''),
(4, 'required', 'REQUIRED knowledge, skill and abilities', '', '', 'Connaissances, compétences et aptitudes REQUISES', '', '', ''),
(5, 'have', 'Knowledge, skills and abilities I HAVE', '', '', 'Connaissances, compétences et aptitudes ACQUISES', '', '', ''),
(6, 'need', 'Knowledge, skills and abilities I NEED', '', '', 'Connaissances, compétences et aptitudes QUE JE DOIS DÉVELOPPER', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex10_Users`
--

CREATE TABLE `Step1_Ex10_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=205 ;

--
-- Contenu de la table `Step1_Ex10_Users`
--

INSERT INTO `Step1_Ex10_Users` (`id`, `user_id`, `type`, `rank`, `answer`) VALUES
(141, 1, 'work', 0, '  ndfgsq'),
(142, 1, 'required', 1, '  dgsq'),
(143, 1, 'have', 1, '  gq'),
(144, 1, 'need', 1, '  '),
(145, 1, 'required', 2, '  qgf'),
(146, 1, 'have', 2, '  gq'),
(147, 1, 'need', 2, '  qg'),
(148, 1, 'required', 3, '  gq'),
(149, 1, 'have', 3, '  '),
(150, 1, 'need', 3, '  '),
(151, 1, 'required', 4, '  '),
(152, 1, 'have', 4, '  gq'),
(153, 1, 'need', 4, '  gq'),
(154, 1, 'required', 5, '  qgdf'),
(155, 1, 'have', 5, '  g'),
(156, 1, 'need', 5, '  '),
(189, 23, 'work', 0, '  '),
(190, 23, 'required', 1, '  '),
(191, 23, 'have', 1, '  '),
(192, 23, 'need', 1, '  '),
(193, 23, 'required', 2, '  '),
(194, 23, 'have', 2, '  '),
(195, 23, 'need', 2, '  '),
(196, 23, 'required', 3, '  '),
(197, 23, 'have', 3, '  '),
(198, 23, 'need', 3, '  '),
(199, 23, 'required', 4, '  '),
(200, 23, 'have', 4, '  '),
(201, 23, 'need', 4, '  '),
(202, 23, 'required', 5, '  '),
(203, 23, 'have', 5, '  '),
(204, 23, 'need', 5, '  ');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex11`
--

CREATE TABLE `Step1_Ex11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `Step1_Ex11`
--

INSERT INTO `Step1_Ex11` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 11:  DO I DO ENOUGH FOR BEING EMPLOYED', '', '', 'EXERCICE 11 : EST-CE QUE J''EN FAIS ASSEZ POUR ÊTRE EMBAUCHÉ ?', '', '', ''),
(2, 'introduction', 'Read the statements written below and answer with YES or NO regarding what you do.', '', '', 'Lisez les affirmations ci-dessous et répondez par OUI ou par NON pour les énoncés qui vous correspondent.', '', '', ''),
(3, 'result_yes_title', 'You answered most of your questions with YES', '', '', 'Vous avez répondu à la plupart des questions par OUI', '', '', ''),
(4, 'result_yes_description', 'Congratulations! You are on the right path to success! You know yourself and you know what you want. You are aware that if you want to find a job, you have to be active, you have to pay attention to all potential information, ask you friends and people you know about vacancies. You know that sometimes you have to make compromises to get a job.', '', '', 'Bravo ! Vous êtes sur la bonne voie ! Vous vous connaissez, et vous savez ce que vous voulez. Vous êtes conscient(e) que si vous voulez trouver un poste, vous devez être actif(ve), vous devez rester attentif(ve) à toutes les possibilités et aux informations potentielles, demandez à vos amis et à vos connaissances s’ils sont au courant de postes à pourvoir. Vous savez qu''il est parfois nécessaire de faire des compromis pour être embauché.', '', '', ''),
(5, 'result_no_title', 'You answered most of your questions with NO', '', '', 'Vous avez répondu à la plupart des questions par NON', '', '', ''),
(6, 'result_no_description_1', 'Finding a job usually takes some time and effort. Don’t be disappointed if you don’t find a job immediately. Pay attention to the information around you and don’t give up. Think about things you could do. Start with your friends – ask them if they know for some available jobs.', '', '', 'Trouver un emploi prend du temps et des efforts.  Ne vous découragez pas si vous ne trouvez pas un emploi immédiatement. Faites attention à l''information autour de vous, et n''abandonnez pas. Pensez aux choses que vous pourriez faire. Commencez par vos amis, demandez-leur s''ils ont entendu parler de postes à pourvoir.       ', '', '', ''),
(7, 'result_no_description_2', 'If you are not sure whether your application or CV is good – give it to a friend or your counselor and ask them for their opinion. If you are interested in specific job and you don’t have enough information, don’t hesitate - make a call and ask them. But be aware that the job will not find you – so try to stay informed about the available jobs and send every day at least one application or offer. Make a list of potential companies where you could work and send them an offer, maybe they need some new worker but they haven’t published an advertisement yet. And the job will comeJ', '', '', ' Si vous n''êtes pas sûr que votre candidature ou votre CV sont bons, donnez-les à un ami ou un conseiller, et demandez-leur leur opinion. Si un emploi particulier vous intéresse et que vous n''avez pas toute l''information nécessaire, n''hésitez pas à les contacter pour leur poser la question. Mais soyez conscient(e) que ce n''est pas le travail qui viendra à vous, alors restez informé(e) sur de possibles postes à pourvoir, et envoyez au moins une candidature par jour. Faites une liste d''entreprises potentielles pour lesquelles vous aimeriez travailler, et envoyez leur une candidature spontanée. Ils ont peut-être un poste à pourvoir mais n''ont pas encore publié l''annonce. Et le travail viendra J', '', '', ''),
(9, 'statement', 'Statement', '', '', 'Affirmation', '', '', ''),
(10, 'yes', 'Yes', '', '', 'Oui', '', '', ''),
(11, 'no', 'No', '', '', 'Non', '', '', ''),
(12, 'step_1', 'STEP 1: JOB SEARCHING AND APPLYING FOR A JOB', '', '', 'ÉTAPE 1 : LA RECHERCHE D''EMPLOI, ET POSTULER POUR UN EMPLOI', '', '', ''),
(13, 'step_2', 'STEP 2: INTERVIEW PREPARATION', '', '', 'ÉTAPE 2 : PRÉPARATION DE L''ENTRETIEN', '', '', ''),
(14, 'step_3', 'STEP 3: INTERVIEW', '', '', 'ÉTAPE 3 : ENTRETIEN', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex11_Statements`
--

CREATE TABLE `Step1_Ex11_Statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `ho` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `Step1_Ex11_Statements`
--

INSERT INTO `Step1_Ex11_Statements` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `ho`) VALUES
(1, 1, 'I know how to write a good CV.', '', '', 'Je sais rédiger un bon CV.', '', '', ''),
(2, 2, 'I know how to write a good job application', '', '', 'Je sais rédiger une bonne candidature ', '', '', ''),
(3, 3, 'Every week I send 5 applications or offers', '', '', 'J''envoie 5 candidatures par semaine ', '', '', ''),
(4, 4, 'I am available on my connection details for potential employers', '', '', 'Les employeurs potentiels peuvent me joindre à mes informations de contact', '', '', ''),
(5, 5, 'I ask my friends if they know for some available jobs', '', '', 'Je demande à mes amis s''ils ont entendu parler de postes disponibles.', '', '', ''),
(6, 6, ' I search for a job in different locations, not just in my hometown', '', '', ' Je cherche du travail à différents endroits, et pas seulement dans ma ville.', '', '', ''),
(7, 7, 'I am looking for available jobs every day', '', '', 'Je recherche des offres tous les jours', '', '', ''),
(8, 8, 'If I am interested in something I make phone call and ask about it', '', '', 'Si quelque chose m''intéresse, je passe un coup de téléphone et je me renseigne.', '', '', ''),
(9, 9, 'If I participated on an interview I make enquiring phone call after the deadline the interviewer mentioned', '', '', 'Si j''ai participé à un entretien, j''appelle après la date mentionnée au cours de l''entretien', '', '', ''),
(10, 10, 'After receiving refusal for a job offer I enquiry about feedback for improving my job searching skills', '', '', 'Après avoir reçu un refus pour une offre, j''essaie d''obtenir un retour afin d''améliorer ma démarche de recherche d''emploi.', '', '', ''),
(11, 11, 'Before the job interview I inquire about the company', '', '', 'Avant l''entretien, je me renseigne sur l''entreprise', '', '', ''),
(12, 12, 'I know the legal background of being employed', '', '', 'Je connais le dispositif légal sur l''embauche', '', '', ''),
(13, 13, 'For the employment I am prepared to move', '', '', 'Je suis disposé à déménager pour le poste ', '', '', ''),
(14, 14, 'Temporarily I am prepared to accept a job, which doesn´t meet my needs and expectations completely', '', '', 'J''accepterais un poste qui ne correspond pas parfaitement à mes besoins et attentes de manière temporaire', '', '', ''),
(15, 15, 'I prepare for the interview to show good impression (appearance, punctuality)', '', '', 'Je me prépare pour l''entretien afin de faire bonne impression (présentation, ponctualité, etc.)', '', '', ''),
(16, 16, 'I know my skills and abilities, and I´m aware of what I need to improve', '', '', 'Je connais mes compétences et me aptitudes, je sais également ce que je dois améliorer', '', '', ''),
(17, 17, 'I can define my motivation', '', '', 'Je peux exprimer clairement ma motivation ', '', '', ''),
(18, 18, 'I know what I want', '', '', 'Je sais ce que je veux ', '', '', ''),
(19, 19, 'I know my strength and weaknesses', '', '', 'Je connais mes forces et mes faiblesses', '', '', ''),
(20, 20, 'I am ready to learn new things', '', '', 'Je suis prêt à apprendre de nouvelles choses', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex11_Users`
--

CREATE TABLE `Step1_Ex11_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `statement_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=522 ;

--
-- Contenu de la table `Step1_Ex11_Users`
--

INSERT INTO `Step1_Ex11_Users` (`id`, `user_id`, `statement_id`, `answer`) VALUES
(461, 1, 20, 0),
(460, 1, 19, 1),
(459, 1, 18, 1),
(458, 1, 17, 0),
(457, 1, 16, 1),
(456, 1, 15, 0),
(455, 1, 14, 1),
(454, 1, 13, 1),
(453, 1, 12, 1),
(452, 1, 11, 0),
(451, 1, 10, 1),
(450, 1, 9, 0),
(449, 1, 8, 1),
(448, 1, 7, 0),
(447, 1, 6, 1),
(446, 1, 5, 0),
(445, 1, 4, 1),
(444, 1, 3, 0),
(443, 1, 2, 1),
(442, 1, 1, 1),
(521, 23, 20, 0),
(520, 23, 19, 0),
(519, 23, 18, 0),
(518, 23, 17, 0),
(517, 23, 16, 0),
(516, 23, 15, 0),
(515, 23, 14, 0),
(514, 23, 13, 0),
(513, 23, 12, 1),
(512, 23, 11, 0),
(511, 23, 10, 0),
(510, 23, 9, 0),
(509, 23, 8, 1),
(508, 23, 7, 0),
(507, 23, 6, 0),
(506, 23, 5, 0),
(505, 23, 4, 0),
(504, 23, 3, 0),
(503, 23, 2, 0),
(502, 23, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex12`
--

CREATE TABLE `Step1_Ex12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Step1_Ex12`
--

INSERT INTO `Step1_Ex12` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 12: MY PREVIOUS ACTIONS', '', '', 'EXERCICE 12 : MES ACTIONS PASSÉES', '', '', ''),
(2, 'introduction', 'What have you done in the last year? Please tick any of the below that you have done in the past twelve months. ', '', '', 'Qu''avez-vous fait l''année dernière ? Veuillez cocher dans la liste ci-dessous toutes les choses que vous avez faites au cours des 12 derniers mois.', '', '', ''),
(3, 'result_1', 'Everything you do in life influences you and shape you as a person.  Every action you take, hobby you do, interest you have, says something about you and is important when you are searching for a job. ', '', '', 'Tout ce que vous faites dans la vie à une incidence sur qui vous êtes.  Toutes vos activités, tous vos passe-temps et vos intérêts renseignent sur le type de personne que vous êtes, et sont importants à l''heure de chercher un emploi.', '', '', ''),
(4, 'result_2', 'An example of this is: if you are the person who always organises parties and events for others, this is a valuable competence and shows your organisational skills. It could be a potential job where organising is part of the role.  If you enjoy cooking, this could again be a potential job for you. Always look at the activities you enjoy and have experience in as well  as those you have gained through previous employment or training. Everything you have done in life even if it seems insignificant to you may be useful when looking for employment. ', '', '', 'Par exemple, si vous êtes celui qui organise toujours les fêtes et les soirées des autres, c''est une compétence intéressante à mettre en avant, elle montre vos capacités organisationnelles. Vous pourriez par exemple prétendre à un poste où l''organisation est une part essentielle du rôle.  Si vous aimez la cuisine, c''est également une voie possible pour vous. Regardez toujours les activités qui vous plaisent et dans lesquelles vous avez de l''expérience en plus des compétences que vous avez acquises lors d''expériences professionnelles ou au cours de formations. Tout ce que vous avait fait dans la vie, aussi insignifiantes que ces activités puissent vous paraitre, est utile quand on cherche un emploi', '', '', ''),
(5, 'done', 'Things you have done', '', '', 'Les choses que vous avez faites', '', '', ''),
(6, 'not_done', 'Things you have NOT done', '', '', 'Les choses que vous n''avez PAS faites', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex12_Actions`
--

CREATE TABLE `Step1_Ex12_Actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `Step1_Ex12_Actions`
--

INSERT INTO `Step1_Ex12_Actions` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'Read at least one book', '', '', 'Lu au moins un livre', '', '', ''),
(2, 2, 'Taken part in some kind of sport', '', '', 'Participé à un type de sport', '', '', ''),
(3, 3, 'Spent time with friends and family ', '', '', 'Passé du temps avec des amis ou de la famille. ', '', '', ''),
(4, 4, 'Voluntary work', '', '', 'Fait du bénévolat', '', '', ''),
(5, 5, 'Taken a language course', '', '', 'Pris des cours de langue', '', '', ''),
(6, 6, 'Taken a computer course', '', '', 'Pris un cours d''informatique', '', '', ''),
(7, 7, 'Had some paid or unpaid work experience', '', '', 'Travaillé de façon rémunérée ou non rémunérée', '', '', ''),
(8, 8, 'Housework', '', '', 'Des tâches ménagères', '', '', ''),
(9, 9, 'Travelled abroad ', '', '', 'Voyagé à l''étranger ', '', '', ''),
(10, 10, 'Helped someone ,  i.e  assisted a neighbour, friend or relative with a task ', '', '', 'Aidé quelqu''un, par exemple, aidé un voisin, un ami ou un parent dans une tâche quelconque, ', '', '', ''),
(11, 11, 'Painted, drawn or sketched ', '', '', 'Fait de la peinture ou du dessin ', '', '', ''),
(12, 12, 'Played or learnt to play an instrument', '', '', 'Joué ou appris à jouer un instrument de musique', '', '', ''),
(13, 13, 'Taken part in a competition (informally)', '', '', 'Participé à une compétition (de manière informelle)', '', '', ''),
(14, 14, 'Learnt something new ', '', '', 'Appris quelque chose de nouveau ', '', '', ''),
(15, 15, 'Cooked ', '', '', 'Cuisiné ', '', '', ''),
(16, 16, 'Looked after children ', '', '', 'Gardé des enfants ', '', '', ''),
(17, 17, 'Taken an exam', '', '', 'Passé un examen', '', '', ''),
(18, 18, 'Organised an event   .i.e a party, wedding, meal. ', '', '', 'Organisé un évènement, par exemple une fête, un mariage, un repas. ', '', '', ''),
(19, 19, 'Watched educational programmes ', '', '', 'Regardé des émissions éducatives ', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex12_Users`
--

CREATE TABLE `Step1_Ex12_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `Step1_Ex12_Users`
--

INSERT INTO `Step1_Ex12_Users` (`id`, `user_id`, `action_id`) VALUES
(33, 1, 19),
(32, 1, 17),
(31, 1, 14),
(30, 1, 9),
(29, 1, 4),
(44, 23, 4),
(43, 23, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex13`
--

CREATE TABLE `Step1_Ex13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `Step1_Ex13`
--

INSERT INTO `Step1_Ex13` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 13: MY ACHIEVEMENTS ', '', '', 'EXERCICE 13 : MES RÉUSSITES', '', '', ''),
(2, 'introduction_1', 'Choose 3 achievements which you are proud of and write them down. They can be personal or work related – for some people it can be something they achieved at school, having a child, something they have done for others.  All of us have done something that we are proud of so don’t be modest and think about your achievements.  ', '', '', 'Choisissez 3 réussites dont vous êtes particulièrement fiers et notez-les. Elles peuvent être personnelles, ou liées à l''environnement professionnel. Pour certains il s''agira de quelque chose qu''ils ont accompli à l''école, pour d''autres ce sera le fait d''avoir élevé un enfant, ou quelque chose qu''ils ont fait pour les autres.  Nous avons tous fait quelque chose dont nous sommes fiers, ne soyez pas modestes et réfléchissez à vos plus belles réussites.  ', '', '', ''),
(13, 'partA', 'Part A - Achievements', '', '', 'Partie A - Réussites', '', '', ''),
(4, 'introduction_2', 'Well done, you have 3 achievements you wish to share. Now select one of them and think about what you learnt, what qualities have you gained through that experience. What knowledge have you gained through this experience? What values and skills have you developed? Were there any consequences?', '', '', 'Bravo, vous avez 3 réussites que vous souhaitez partager. Maintenant, choisissez-en une et réfléchissez à ce que vous avez appris, aux qualités que vous avez acquises grâce à cette expérience. Quelles connaissances avez-vous acquises pendant cette expérience ? Quelles valeurs et compétences avez-vous développé ? Quelles en sont les conséquences ?', '', '', ''),
(14, 'partB', 'Part B - Details', '', '', 'Partie B - Détails', '', '', ''),
(9, 'partC', 'Part C - What do I want to achieve in the future?', '', '', 'Partie C - Que souhaitez-vous accomplir dans le futur ?', '', '', ''),
(10, 'introduction_3', 'Now think about your future. What would you like to do or achieve? Write down 3 things, activities that you want to do or achieve in the future. Keep these to refer to in the future, to see if you have managed any of them. ', '', '', 'Réfléchissez maintenant à votre futur. Qu''aimeriez-vous faire ou atteindre ? Notez trois choses ou activités que vous aimeriez faire ou atteindre dans le futur. Gardez-les comme point de référence, et d''ici quelque temps vous pourrez les consulter et voir si vous y êtes parvenus.', '', '', ''),
(11, 'achievement', 'Achievement', '', '', 'Réussite', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex13_Users_Achievements`
--

CREATE TABLE `Step1_Ex13_Users_Achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `achievement` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

--
-- Contenu de la table `Step1_Ex13_Users_Achievements`
--

INSERT INTO `Step1_Ex13_Users_Achievements` (`id`, `user_id`, `rank`, `achievement`, `details`) VALUES
(56, 1, 3, '  ', ''),
(55, 1, 2, '  ', ''),
(54, 1, 1, '  ', ' --- '),
(65, 23, 3, '  ', ''),
(64, 23, 2, '  ', ' --- '),
(63, 23, 1, '  ', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex13_Users_Futures`
--

CREATE TABLE `Step1_Ex13_Users_Futures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `future` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Contenu de la table `Step1_Ex13_Users_Futures`
--

INSERT INTO `Step1_Ex13_Users_Futures` (`id`, `user_id`, `rank`, `future`) VALUES
(56, 1, 3, '  '),
(55, 1, 2, '  '),
(54, 1, 1, '  '),
(62, 23, 3, '  '),
(61, 23, 2, '  '),
(60, 23, 1, '  ');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14A`
--

CREATE TABLE `Step1_Ex14A` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Step1_Ex14A`
--

INSERT INTO `Step1_Ex14A` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 14-A: WRITING JOB APPLICATION ', '', '', 'EXERCICE 14-A: RÉDIGER UNE CANDIDATURE', '', '', ''),
(2, 'introduction', 'What information do you need to write in a job application and CV document. Check the items you think would be appropriate.', '', '', 'Quelle information devez-vous écrire dans votre candidature et votre CV. Cochez les éléments que vous pensez être appropriés.', '', '', ''),
(4, 'correct', 'Correct information you have checked', '', '', 'Informations correctes que vous avez cochées', '', '', ''),
(5, 'miss', 'Correct information you have missed', '', '', 'Informations correctes que vous avez oubliées', '', '', ''),
(6, 'wrong', 'Wrong information you have checked', '', '', 'Informations incorrect que vous avez cochées', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14A_Informations`
--

CREATE TABLE `Step1_Ex14A_Informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `Step1_Ex14A_Informations`
--

INSERT INTO `Step1_Ex14A_Informations` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'First Name and surname', '', '', 'Prénom et nom de famille', '', '', ''),
(2, 2, 0, ' Children Name', '', '', 'Nom des enfants', '', '', ''),
(3, 3, 1, 'Date of Birth', '', '', 'Date de naissance', '', '', ''),
(4, 4, 1, 'Hobbies', '', '', 'Loisirs', '', '', ''),
(5, 5, 1, 'Marital Status', '', '', 'État civil', '', '', ''),
(6, 6, 0, 'Hair Colour', '', '', 'Couleur de cheveux', '', '', ''),
(7, 7, 1, 'Health Conditions', '', '', 'État de santé', '', '', ''),
(8, 8, 0, 'Signature', '', '', 'Signature', '', '', ''),
(9, 9, 0, 'Reason for losing last job', '', '', 'Motif pour lequel vous avez perdu votre poste précédent.', '', '', ''),
(10, 10, 1, 'Education', '', '', 'Formation', '', '', ''),
(11, 11, 1, 'Experience', '', '', 'Expérience professionnelle', '', '', ''),
(12, 12, 1, 'Address', '', '', 'Adresse', '', '', ''),
(13, 13, 1, 'The date ', '', '', 'La date ', '', '', ''),
(14, 14, 1, 'Previous employment', '', '', 'Expériences professionnelles passées', '', '', ''),
(15, 15, 1, 'Hobbies and Interests', '', '', 'Loisirs et intérêts', '', '', ''),
(16, 16, 1, 'Pay expectations', '', '', 'Ambition salariale', '', '', ''),
(17, 17, 0, 'Whether you own your own property ', '', '', 'Si vous êtes propriétaire ', '', '', ''),
(18, 18, 1, 'Registered in the Employment Office', '', '', 'Inscrit au pôle emploi', '', '', ''),
(19, 19, 1, 'Health conditions', '', '', 'État de santé', '', '', ''),
(20, 20, 1, 'My abilities', '', '', 'Mes aptitudes', '', '', ''),
(21, 21, 1, 'Greetings ( yours sincerely, etc)', '', '', 'Formule de politesse (salutations distinguées, etc.)', '', '', ''),
(22, 22, 0, 'What you like to eat', '', '', 'Ce que vous aimez manger', '', '', ''),
(23, 23, 1, 'Your telephone', '', '', 'Votre numéro de téléphone', '', '', ''),
(24, 24, 1, 'Your e-mail', '', '', 'Votre adresse mail', '', '', ''),
(25, 25, 0, 'If you are planning a family', '', '', 'Si vous souhaitez avoir une famille', '', '', ''),
(26, 26, 1, 'Work experience', '', '', 'Expérience professionnelle', '', '', ''),
(27, 27, 0, 'Why you don’t like your previous employer', '', '', 'Pourquoi vous n''aimez pas votre employeur précédent', '', '', ''),
(28, 28, 0, 'Detailed description of your private matters', '', '', 'Une description détaillée de votre situation personnelle', '', '', ''),
(29, 29, 1, 'Today’s date', '', '', 'La date du jour', '', '', ''),
(30, 30, 1, 'Your address', '', '', 'Votre adresse', '', '', ''),
(31, 31, 1, 'Parent’s name', '', '', ' Le nom de vos parents', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14A_Users`
--

CREATE TABLE `Step1_Ex14A_Users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Contenu de la table `Step1_Ex14A_Users`
--

INSERT INTO `Step1_Ex14A_Users` (`id`, `user_id`, `information_id`) VALUES
(75, 23, 27),
(74, 23, 24),
(73, 23, 18),
(72, 23, 15),
(71, 23, 14),
(40, 1, 8),
(39, 1, 7),
(38, 1, 6),
(37, 1, 5),
(36, 1, 4),
(35, 1, 3),
(34, 1, 2),
(33, 1, 1),
(70, 23, 13);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14B`
--

CREATE TABLE `Step1_Ex14B` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `Step1_Ex14B`
--

INSERT INTO `Step1_Ex14B` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 14-B: JOB ADVERTISEMENT', '', '', 'EXERCICE 14-B : LES OFFRES D''EMPLOIS', '', '', ''),
(2, 'introduction_1', 'Below you have the advertisement for a job in the food industry. Read carefully the job description below and read all the instructions.\r\n', '', '', 'Vous trouverez ci-dessous une annonce pour un poste dans le secteur alimentaire. Lisez la description du poste attentivement et lisez toutes les consignes.\r\n', '', '', ''),
(3, 'introduction_2', 'Here you have the application letter. You will now put together the application letter according to the advertisement above. Below the letter are several items which you can drag into the application letter. Choose the correct items and drag them into the blank page. Keep in mind not all items are appropriate for the application letter.', '', '', 'Voici la lettre de motivation vierge. Vous devez maintenant assembler la lettre de motivation adaptée à cette annonce. Vous trouverez sous la lettre des éléments que vous pouvez sélectionner et faire glisser jusqu''à la lettre de motivation. Choisissez les éléments corrects et glissez-les jusqu''à la page blanche. Attention, certains éléments ne correspondent pas à cette lettre.', '', '', ''),
(4, 'result', 'A job application and CV is your ticket to the interview, so it is very important what you write in it. It is never a good idea to write about your weaknesses or that you didn’t like your previous boss. Always emphasize your experiences and be very concrete. It is not good enough that you write for example that you were a secretary, because secretaries can do different things in different companies. Also don’t write to personal stuff. No one wants to know what exactly you do with your dogs or that you own a weekend cottage a flat or a house. It is recommended that you write that you have your own transport but it is not necessary to write which brand you ride. And certainly don’t write that that you are registered at the Employment service, unfortunately it leaves a bad impression on the employer, because people still have in mind that if you are registered at the Employment service you must be lazy. So pay attention to another thing; don’t worry if you are working undeclared, EVERY working experience is very important and the employer doesn’t care about how you gained your experiences. Also be careful about your spelling and don’t be sloppy while writing your application, if you are sloppy just writing it imagine what it tells about your performance.', '', '', 'Une candidature et un CV sont comme un billet pour l''entretien, ce que vous y écrivez est très important. Il n''est jamais bon de parler de vos faiblesses ou que vous n''appréciez pas votre employeur précédent. Soulignez toujours votre expérience et soyez très pragmatique. Ce n''est pas suffisant par exemple d''écrire que vous étiez secrétaire parce que le rôle d''une secrétaire varie d''une entreprise à une autre. Ne parlez pas de choses personnelles. Personne ne veut savoir ce que vous faites avec vos chiens, ou si vous êtes propriétaires d''une résidence secondaire, d''un appartement ou d''une maison. Il est bon d''écrire que vous possédez un moyen de transport, mais il n''est pas nécessaire d''indiquer dans quel type de voiture vous roulez Et n''écrivez surtout pas que vous êtes inscrits au pôle emploi. Malheureusement, cela donne une mauvaise impression à l''employeur car les gens pensent encore que si vous êtes toujours au pôle emploi, c''est que vous être paresseux(se). Autre chose à prendre en compte : ne vous inquiétez pas si vous travaillez au noir. TOUTES les expériences professionnelles sont importantes, et l''employeur potentiel se moque de comment vous l''avez acquise. Faites attention à votre orthographe et ne soyez pas brouillons. Si vous êtes brouillons dans votre candidature, du point de vue de l''employeur cela ne présage rien de bon.et reflète une image négative de votre potentiel.', '', '', ''),
(5, 'tips', 'USEFUL TIPS', '', '', 'CONSEILS UTILES', '', '', ''),
(6, 'tip1', 'Write where you saw the advertisement and why you applied for the position.', '', '', 'Écrivez où vous avez vu l''annonce et pourquoi vous postulez pour le poste.', '', '', ''),
(7, 'tip2', 'In the second paragraph show the interest for the company and their product.', '', '', 'Dans le deuxième paragraphe, montrez votre intérêt pour l''entreprise et leurs produits.', '', '', ''),
(8, 'tip3', 'Make sure you write that you have enclosed your CV so they can read more about your experience.', '', '', 'Assurez-vous d''écrire que vous avez joint un CV pour qu''ils puissent en lire d''avantage sur votre expérience.', '', '', ''),
(9, 'tip4', 'Be clear and keep your letter concise and to the point/', '', '', 'Soyez clair(e), bref(ve) et précis(e).', '', '', ''),
(10, 'tip5', 'Use the correct address.', '', '', 'Utilisez l''adresse correcte.', '', '', ''),
(11, 'tip6', 'Show professional but still warm and friendly approach.', '', '', 'Montrez-vous professionnel, mais chaleureux et amical.', '', '', ''),
(12, 'tip7', 'Use a different style to set yourself from the crowd.', '', '', 'Utilisez un style différent pour vous démarquer.', '', '', ''),
(13, 'letter', 'The letter', '', '', 'La lettre', '', '', ''),
(14, 'items', 'The items', '', '', 'Les éléments', '', '', ''),
(15, 'right', 'The right letter is as follows.', '', '', 'La lettre qu''il fallait écrire est la suivante.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14B_Answers`
--

CREATE TABLE `Step1_Ex14B_Answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place1` int(11) NOT NULL,
  `place2` int(11) NOT NULL,
  `place3` int(11) NOT NULL,
  `place4` int(11) NOT NULL,
  `place5` int(11) NOT NULL,
  `place6` int(11) NOT NULL,
  `place7` int(11) NOT NULL,
  `place8` int(11) NOT NULL,
  `place9` int(11) NOT NULL,
  `place10` int(11) NOT NULL,
  `place11` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `Step1_Ex14B_Answers`
--

INSERT INTO `Step1_Ex14B_Answers` (`id`, `place1`, `place2`, `place3`, `place4`, `place5`, `place6`, `place7`, `place8`, `place9`, `place10`, `place11`) VALUES
(1, 1, 8, 3, 5, 15, 10, 12, 13, 16, 18, 20);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14B_Description`
--

CREATE TABLE `Step1_Ex14B_Description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `Step1_Ex14B_Description`
--

INSERT INTO `Step1_Ex14B_Description` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(31, 'h1b', 'Place of work:', '', '', 'Lieu de travail : ', '', '', ''),
(33, 't1b', 'Ljubljana', '', '', 'Ljubljana', '', '', ''),
(2, 'title', 'ADVERTISMENT FOR A WORKER IN FOOD INDUSTRY ', '', '', 'ANNONCE POUR UN EMPLOYÉ DU SECTEUR ALIMENTAIRE ', '', '', ''),
(3, 'h1', 'Firm / organization: ', '', '', 'Entreprise / organisation : ', '', '', ''),
(4, 'h2', 'Field of work: ', '', '', 'Domaine :', '', '', ''),
(5, 'h3', 'Level of education: ', '', '', 'Niveau de scolarité : ', '', '', ''),
(6, 'h4', 'Expected experiences: ', '', '', 'Expérience requise : ', '', '', ''),
(7, 'h5', 'Form of employment:', '', '', 'Type de contrat : ', '', '', ''),
(8, 'h6', 'Working time:', '', '', 'Type de journée : ', '', '', ''),
(9, 'h7', 'Description of working position', '', '', 'Description du poste', '', '', ''),
(10, 'h8', 'Expectations', '', '', 'Tâches', '', '', ''),
(11, 'h9', 'We offer:', '', '', 'Nous offrons :', '', '', ''),
(12, 't1', 'Birdie ltd, Claws Street 14, Ljubljana', '', '', 'Birdie ltd, Claws Street 14, Ljubljana', '', '', ''),
(13, 't2', 'Food industry', '', '', 'Industrie alimentaire ', '', '', ''),
(14, 't3', 'II. III. IV. V.', '', '', 'II. III. IV. V.', '', '', ''),
(15, 't4', '0-1 year', '', '', '0-1 an', '', '', ''),
(16, 't5', 'regular, definite', '', '', 'CDD', '', '', ''),
(17, 't6', 'full time', '', '', 'temps plein', '', '', ''),
(18, 't7', 'Your job will be:', '', '', 'Vos missions :', '', '', ''),
(19, 't71', 'hanging the poultry,', '', '', 'pendre la volaille,', '', '', ''),
(20, 't72', 'removing the bones from the meat with adequate machinery,', '', '', 'désosser la viande avec le matériel adéquat,', '', '', ''),
(21, 't73', 'molding the meat for fried and marinated products,', '', '', 'tailler la viande pour les produits frits et marinés,', '', '', ''),
(22, 't74', 'thermal processing,', '', '', 'traitement thermique,', '', '', ''),
(23, 't75', 'cleaning the working environment and equipment and disinfection.', '', '', 'nettoyer l''environnement de travail et le matériel et  désinfecter.', '', '', ''),
(24, 't8', 'We expect the candidates:', '', '', 'Le candidat devra :', '', '', ''),
(25, 't81', 'with at least primary school education,', '', '', 'avoir terminé son éducation secondaire,', '', '', ''),
(26, 't82', 'with willingness to work,', '', '', 'avoir une bonne attitude face au travail / être volontaire,', '', '', ''),
(27, 't83', 'with good physical condition.', '', '', 'être en bonne forme physique.', '', '', ''),
(28, 't91', 'pleasant working hours,', '', '', 'des horaires agréables,', '', '', ''),
(29, 't92', 'employment relationship for definite term with possibilities for indefinite term,', '', '', 'un CDD, avec possibilité de passer en CDI,', '', '', ''),
(30, 't93', 'regular payments.', '', '', 'des paiements réguliers.', '', '', ''),
(34, 't6b', '3 months', '', '', '3 mois', '', '', ''),
(35, 'h6b', 'Probation faze:', '', '', 'Période d''essai :', '', '', ''),
(36, 't6c', 'beginner', '', '', 'débutant', '', '', ''),
(37, 'h6c', 'Carreer level:', '', '', 'Niveau de carrière :', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14B_Items`
--

CREATE TABLE `Step1_Ex14B_Items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `Step1_Ex14B_Items`
--

INSERT INTO `Step1_Ex14B_Items` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(2, 2, 'I have two children.', '', '', 'J''ai deux enfants.', '', '', ''),
(3, 3, 'Ljubljana, 10.8.2008', '', '', 'Ljubljana, 10.8.2008', '', '', ''),
(4, 4, 'I am registered at the Employment service and can start working right away.', '', '', 'Je suis inscrite au pôle emploi et je peux commencer immédiatement.', '', '', ''),
(5, 5, 'Application for a worker in food industry.', '', '', 'Candidature pour un poste dans l''industrie alimentaire.', '', '', ''),
(6, 6, 'I have no experience in the food industry.', '', '', 'Je n''ai aucune expérience dans l''industrie alimentaire.', '', '', ''),
(7, 7, 'I am looking for a new job because I didn’t get along with my previous boss.', '', '', 'Je cherche actuellement du travail car je ne m''entendais plus avec mon ancien patron.', '', '', ''),
(8, 8, 'Birdie ltd\nClaws Street 14\n1000 Ljubljana', '', '', 'Birdie ltd,\nClaws Street 14,\n1000 Ljubljana\n', '', '', ''),
(9, 9, 'Sara Galus, Celovška cesta 2, 1000 Ljubljana', '', '', 'Sara Galus, Celovška cesta 2, 1000 Ljubljana', '', '', ''),
(10, 10, 'I was happy to see an advertisement for the worker in food industry. As I do have some experiences that could benefit your company allow me to introduce myself.', '', '', 'J''étais heureuse de voir une annonce pour ce poste dans l''industrie alimentaire. Car j''ai déjà de l''expérience dans ce domaine qui pourrait vous intéresser. Permettez-moi de me présenter.', '', '', ''),
(11, 11, 'You must employ me, because I am perfect for the job.', '', '', 'Vous devez m''embaucher, car je suis parfait pour ce poste.', '', '', ''),
(12, 12, 'I perform my duties conscientiously, taking full responsibility as a loyal employee of the company. I strive for practicality and excellence in both my private and business life.', '', '', 'Je suis consciencieux/se, responsable et je crois fermement en la loyauté envers son entreprise. Je cherche toujours l''excellence tant dans ma vie privée que professionnelle.', '', '', ''),
(13, 13, 'Last five years I have been working in a factory that makes baby food. I gained a lot of knowledge which I could use in your company and I am quite handy. I am in good physical condition and are willing to work. You can find more detailed information about me in the enclosed CV.', '', '', 'J''ai passé les cinq dernières années à travailler dans une usine qui prépare des aliments pour bébé. J''y ai acquis une expérience importante que je pourrais appliquer à ce poste, et je suis habile de mes mains. Je suis en bonne forme physique, et volontaire. Vous trouverez plus d''informations sur mon parcours dans le CV ci-joint.', '', '', ''),
(14, 14, 'Bye, bye Sara', '', '', 'Au revoir, Sara', '', '', ''),
(15, 15, 'To whom it may concern,', '', '', 'À l''attention de', '', '', ''),
(16, 16, 'Considering the required profile, I am convinced that I can make a contribution to the company’s development through my knowledge and the working experience I have gained until now.', '', '', 'Je pense correspondre au profil demandé, et pouvoir contribuer au développement de l''entreprise grâce à mes connaissances et mon expérience.', '', '', ''),
(17, 17, 'Hello!', '', '', 'Bonjour !', '', '', ''),
(18, 18, 'Looking forward to hearing from you.', '', '', 'En l''attente de votre retour.', '', '', ''),
(19, 19, 'I expect a salary of 800 Euros.', '', '', 'Je souhaite un salaire de 800 Euros.', '', '', ''),
(20, 20, 'Sincerely Yours, Sara Galus', '', '', 'Salutations distinguées, Sara Galus', '', '', ''),
(1, 1, 'Galus Sara Celovška cesta 2\n1000 Ljubljana\n', '', '', 'Galus Sara Celovška cesta 2\n1000 Ljubljana\n', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex14B_Users`
--

CREATE TABLE `Step1_Ex14B_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `place1` int(11) NOT NULL,
  `place2` int(11) NOT NULL,
  `place3` int(11) NOT NULL,
  `place4` int(11) NOT NULL,
  `place5` int(11) NOT NULL,
  `place6` int(11) NOT NULL,
  `place7` int(11) NOT NULL,
  `place8` int(11) NOT NULL,
  `place9` int(11) NOT NULL,
  `place10` int(11) NOT NULL,
  `place11` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Step1_Ex14B_Users`
--

INSERT INTO `Step1_Ex14B_Users` (`id`, `user_id`, `place1`, `place2`, `place3`, `place4`, `place5`, `place6`, `place7`, `place8`, `place9`, `place10`, `place11`) VALUES
(6, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex15`
--

CREATE TABLE `Step1_Ex15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `Step1_Ex15`
--

INSERT INTO `Step1_Ex15` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 15: CV ', '', '', 'EXERCICE 15 : CV ', '', '', ''),
(2, 'question', 'In you opinion, which of the two previous CV is the best?', '', '', 'À votre avis, quel est le meilleur CV ?', '', '', ''),
(13, 'no_answer', 'The right answer was CV number 2. Now, think about it, and try to write your own CV.', '', '', 'La bonne réponse était le CV numéro 2. Maintenant, essayez de réfléchir et d''écrire votre propre CV.', '', '', ''),
(3, 'personal', 'PERSONAL INFORMATION', '', '', 'INFORMATION PERSONELLE', '', '', ''),
(4, 'education', 'EDUCATION AND TRAINING', '', '', 'DIPLOMES ET FORMATION', '', '', ''),
(5, 'work', 'WORK EXPERIENCE', '', '', 'EXPÉRIENCE PROFESSIONNELLE', '', '', ''),
(6, 'language', 'FOREIGN LANGUAGE', '', '', 'LANGUES ÉTRANGÈRES', '', '', ''),
(7, 'computer', 'COMPUTER SKILLS AND COMPETENCIES', '', '', 'INFORMATIQUE', '', '', ''),
(8, 'driving', 'DRIVING LICENCE', '', '', 'PERMIS DE CONDUIRE', '', '', ''),
(9, 'other', 'OTHER', '', '', 'AUTRE', '', '', ''),
(10, 'last', 'You have choosed', '', '', 'Vous avez choisi(e)', '', '', ''),
(11, 'number1', 'CV number 1', '', '', 'CV numéro 1', '', '', ''),
(12, 'number2', 'CV number 2', '', '', 'CV numéro 2', '', '', ''),
(14, 'name', 'Surname (s)/First Name', '', '', 'Nom de famille /prénom', '', '', ''),
(15, 'birth', 'Date of birth', '', '', 'Date de naissance', '', '', ''),
(16, 'adress', 'Adress', '', '', 'Adresse', '', '', ''),
(17, 'telephone', 'Telephone ', '', '', 'Téléphone ', '', '', ''),
(18, 'email', 'E-mail', '', '', 'E-mail', '', '', ''),
(19, 'status', 'Status', '', '', 'État civil', '', '', ''),
(20, 'education_name', 'Name of educational institution and title of qualification award', '', '', 'Nom de l''établissement et titre du diplôme obtenu', '', '', ''),
(21, 'duration', 'Duration', '', '', 'Durée', '', '', ''),
(22, 'employer', 'Name and Address of Employer', '', '', 'Nom et adresse de l''employeur', '', '', ''),
(23, 'business', 'Type of Business or Sector', '', '', 'Type d''entreprise ou secteur', '', '', ''),
(24, 'occupation', 'Occupation or Position held', '', '', 'Poste occupé', '', '', ''),
(25, 'activities', 'Main Activities and Responsibilities', '', '', 'Activités et responsabilités principales', '', '', ''),
(26, 'introduction', 'Read carefully the two following CV.', '', '', 'Regardez avec attention les deux CV suivants.', '', '', ''),
(27, 'right', 'You chose CV number 2, that''s the right answer. Now, try to write your own CV.', '', '', 'Vous avez choisi le CV numéro 2, c''est la bonne réponse. Maintenant, essayez d''écrire votre propre CV.', '', '', ''),
(28, 'wrong', 'You chose CV number 1... the right answer was CV number 2. Think about it, and try to understant why number 2 is better than number 1; then write your own CV.', '', '', 'Vous avez choisi le CV numéro 1... la bonne réponse était le CV numéro 2. Essayez de comprendre pourquoi le numéro 2 est meilleur que le numéro 1 puis écrivez votre propre CV.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex15_Example`
--

CREATE TABLE `Step1_Ex15_Example` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `it` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Contenu de la table `Step1_Ex15_Example`
--

INSERT INTO `Step1_Ex15_Example` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `it`, `is`, `hu`) VALUES
(7, 'name', 'Galus Sara', '', '', 'Galus Sara', '', '', ''),
(8, 'birth', '3.10.1979', '', '', '3.10.1979', '', '', ''),
(9, 'adress', 'Celovska 2, 1000 Ljubljana', '', '', 'Celovska 2, 1000 Ljubljana', '', '', ''),
(10, 'telephone', '61256488', '', '', '61256488', '', '', ''),
(11, 'email', 'Galus.sara@gmail.com', '', '', 'Galus.sara@gmail.com', '', '', ''),
(12, 'status', 'Single', '', '', 'Célibataire', '', '', ''),
(14, 'education_name', 'Primary school Otona Bevca', '', '', 'École primaire Otona Bevca', '', '', ''),
(17, 'employer1', 'Baby food Ltd', '', '', 'Baby food Ltd', '', '', ''),
(21, 'language1', 'English: Passive', '', '', 'Anglais : Passif', '', '', ''),
(22, 'language2', 'Croatian: Passive', '', '', 'Croate : Passif', '', '', ''),
(24, 'computer', 'MS Office, Internet, e-mail', '', '', 'MS Office, Internet, e-mail', '', '', ''),
(26, 'driving', 'B - Category', '', '', 'Catégorie B', '', '', ''),
(32, 'other1', '2003 Course for a telephonists', '', '', '2003 Formation de Standardiste ', '', '', ''),
(33, 'other2', '2006 Basic English Course', '', '', '2006 Cours d''anglais débutant', '', '', ''),
(34, 'other3', 'Free time – hanging out with friends, solving crosswords', '', '', 'Temps libre – voir des amis, mots croisés', '', '', ''),
(35, 'other4', 'At the moment registered  in the Employment service', '', '', 'Actuellement inscrite au pôle emploi', '', '', ''),
(48, 'education_date', '1986 – 1994', '', '', '1986 – 1994', '', '', ''),
(63, 'work_date1', 'January 2002 - 2007', '', '', 'Janvier 2002 - 2007', '', '', ''),
(65, 'type1', 'Food industry', '', '', 'Industrie alimentaire', '', '', ''),
(66, 'occupation1', 'Production line worker:', '', '', 'Ligne de Production :', '', '', ''),
(67, 'activity11', 'Peeling the vegetables and fruit.', '', '', 'Éplucher les fruits et légumes.', '', '', ''),
(68, 'activity12', 'Blending the fruit and vegetable.', '', '', 'Mixer les fruits et légumes.', '', '', ''),
(69, 'activity13', 'Cleaning the bottles.', '', '', 'Nettoyer les bouteilles.', '', '', ''),
(70, 'activity14', 'Disinfecting the working area and working utensils. ', '', '', 'Désinfecter l''aire de travail et les outils. ', '', '', ''),
(71, 'activity15', 'Thermal processing.', '', '', 'Traitement thermique.', '', '', ''),
(72, 'activity16', 'Cleaning the working environment. ', '', '', 'Nettoyer l''environnement de travail ', '', '', ''),
(73, 'activity17', 'Removing the seeds from the fruit and vegetables.', '', '', 'Épépiner les fruits et légumes.', '', '', ''),
(74, 'activity18', 'Filling the jars with mixtures.', '', '', 'Mise en bocaux.', '', '', ''),
(75, 'activity19', 'Packing the jars.', '', '', 'Conditionner les bocaux.', '', '', ''),
(84, 'work_date2', '1995 – 2002', '', '', '1995 – 2002', '', '', ''),
(85, 'employer2', 'Etos d.o.o', '', '', 'Etos d.o.o', '', '', ''),
(86, 'type2', 'Production of hygienic material', '', '', 'Fabrication de matériel hygiénique', '', '', ''),
(87, 'occupation2', 'Working in production', '', '', 'Agent de production', '', '', ''),
(88, 'activity21', 'Packing and manual wrapping different hygienic material.', '', '', 'Conditionnement et emballage manuel de matériel hygiénique.', '', '', ''),
(89, 'activity22', 'Transport of hygienic material .', '', '', 'Transport de matériel hygiénique.', '', '', ''),
(90, 'activity23', 'Taking care for tidiness of work place.', '', '', 'Responsable de la propreté du lieu de travail.', '', '', ''),
(91, 'activity24', 'Taking care of records concerning work done.', '', '', 'Responsable des registres du travail accompli.', '', '', ''),
(103, 'other5', '2003 Wood shop course', '', '', '2003 Cours de menuiserie', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step1_Ex15_Users`
--

CREATE TABLE `Step1_Ex15_Users` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `choice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Step1_Ex15_Users`
--

INSERT INTO `Step1_Ex15_Users` (`id`, `user_id`, `choice`) VALUES
(4, 23, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Step2`
--

CREATE TABLE `Step2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `Step2`
--

INSERT INTO `Step2` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'Step 2 – How to prepare for a job interview...', '', '', 'Étape 2 - Préparer l''entretien d''embauche', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex16`
--

CREATE TABLE `Step2_Ex16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `Step2_Ex16`
--

INSERT INTO `Step2_Ex16` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 16: WHAT TO DO BEFORE THE INTERVIEW ', '', '', 'EXERCICE 16 : QUE FAIRE AVANT UN ENTRETIEN ', '', '', ''),
(2, 'introduction_1', 'You have sent an application and have been invited for an interview. Congratulations, you have passed the first stage and a step closer to gaining a job. Do not celebrate too early,  you haven’t got the job yet. Everything depends on you and your performance in the interview, it is important that you are well prepared.  ', '', '', 'Vous avez envoyé une candidature et on vous a rappelé(e) pour un entretien. Félicitations, vous avez franchi la première étape et vous vous rapprochez un peu plus d’un emploi. Ne vendez pas la peau de l''ours avant de l''avoir tué : vous n''avez pas encore décroché le poste ! Tout dépend de vous, et de votre performance au cours de l''entretien. Il est important d''être bien préparé.  ', '', '', ''),
(3, 'introduction_2', 'The prospective employer will be impressed if you know something about the company. ', '', '', 'L''employeur potentiel sera impressionné si vous connaissez un peu l''entreprise.', '', '', ''),
(4, 'introduction_3', 'There are many things you could do to prepare.', '', '', 'Il y a différentes choses que vous pouvez faire pour vous préparer.', '', '', ''),
(6, 'result', 'Now go through your answers and check what the answers could mean.', '', '', 'Parcourez maintenant vos réponses, et vérifiez ce que ces réponses peuvent signifier ', '', '', ''),
(5, 'introduction_4', 'Select the four items listed below which are the most important for you, and drag them into choice 1 to 4.', '', '', 'Choisissez les quatre éléments de la liste ci-dessous qui sont pour vous, les plus importants et faites les glisser sur les choix 1 à 4.', '', '', ''),
(31, 'choice', 'Choice', '', '', 'Choix', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex16_Explanations`
--

CREATE TABLE `Step2_Ex16_Explanations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `Step2_Ex16_Explanations`
--

INSERT INTO `Step2_Ex16_Explanations` (`id`, `thing_id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'This is a very important. It is good to know as much as you can about the company before you go for interview. If you can give the interviewer indications you have researched the company they will feel you are interested in the position within the company. ', '', '', 'Ce point est très important. Il convient d''en savoir autant que possible sur l''entreprise avant d''aller à l''entretien. Si vous pouvez montrer à la personne qui vous fait passer l''entretien des indices que vous vous êtes renseigné(e) sur celle-ci, vous montrerez par la même que vous êtes intéressés par ce poste au sein de l''entreprise.', '', '', ''),
(2, 2, 0, 'This is a very bad idea. You need to be fresh, relaxed and concentrated in the interview, not tired and smelling of stale alcohol or smoke. If you are tired you will not be able to concentrate so well. ', '', '', 'C''est une très mauvaise idée. Vous devez être reposé, détendu et concentré au cours de l''entretien, et non pas fatigué et avec une haleine chargée d''alcool ou de tabac. Si vous êtes fatigué(e), vous ne pourrez pas vous concentrer.', '', '', ''),
(3, 3, 1, 'This is important. You know where the company is, you need to know how you are going to get there and it is very important not to be late.', '', '', 'Ce point est important. Vous savez où se trouve l''entreprise, vous devez savoir où vous allez et comment vous y rendre, car il est très important de ne pas arriver en retard.', '', '', ''),
(4, 4, 1, 'This is a good idea. It is important to be rested and alert.', '', '', 'C''est une bonne idée. Il est important de rester reposé et éveillé', '', '', ''),
(5, 5, 1, 'This is a good idea. It is important that you look good and smell good. Maybe the interview will be in a small room and it wouldn’t be pleasant for the interviewer that you have a strong smell. So be careful also with perfume - don’t use it too much.', '', '', 'C''est une bonne idée. Il est très important d''avoir bon aspect et de sentir bon. Peut-être que l''entretien se déroulera dans une petite pièce et ce ne serait pas très agréable pour votre interlocuteur si vous dégagez une forte odeur corporelle. Gare également à ne pas mettre trop de parfum.', '', '', ''),
(6, 6, 1, 'This can be a good idea. A new job can make changes to your lifestyle so it is good to let people know this may happen.  On the other hand , you may find talking to too many people about it makes you over confident . if you are constantly being told you will get the job, remember your friends and family love you and may say what they think you want to hear.', '', '', 'Cela peut être une bonne idée. Un nouveau poste peut signifier des changements dans votre vie, et il est bon que vos proches sachent que c''est une possibilité.  D''un autre côté, peut être que trop en parler vous donnera trop de confiance en vous. Si on vous répète que c''est dans la poche, que vous allez avoir le poste, rappelez-vous aussi que vos amis et vos proches vous aiment et qu''ils vous disent peut-être ce que vous avez envie d''entendre.', '', '', ''),
(7, 7, 1, 'This could be a good idea. If you feel you don’t have suitable clothes but don’t spend unnecessary money. Iit is a good idea to buy something classic that will be suitable for all interviews. Make sure your clothes are clean.', '', '', 'Cela peut être une bonne idée si vous pensez ne pas avoir une tenue adéquate, mais attention à ne pas gaspiller d''argent. Dans ces cas-là, il est bon d''acheter quelque chose de classique, qui pourra servir pour tous les entretiens. Assurez-vous que vos vêtements sont propres.  ', '', '', ''),
(8, 8, 1, 'This is very important and it is something you should have received at application stage. If you do not have a job description, how do you know what the job is. Make sure you read the job description and understand all the tasks you will be required to carry out.', '', '', 'Cet élément est très important, et quelque chose qui vous aura été fourni au moment de postuler. Si vous n''avez pas de description du poste, comment savoir de quel poste il s''agit ? Assurez-vous de bien lire la description du poste et de comprendre toutes les tâches qui vous seront demandées.', '', '', ''),
(9, 9, 0, 'This is a very bad idea. You still haven‘t got the job. Do not spend money until you have obtained a job and you know what your financial position will be .', '', '', 'C''est une très mauvaise idée. Vous n''avez pas encore le poste. Ne faites pas de dépenses inutiles jusqu''à être sûr(e) d''avoir le poste et d''être sûr(e) de votre situation financière.', '', '', ''),
(10, 10, 1, 'This is a good idea. It will stop you from worrying about your clothes on the day of the interview and you can check that everything is clean. On the day of the interview you need to stay calm and focus on what you will say in the interview not what you look like. It can be a good idea to try your clothes on the day before and ask someone for their opinion on what you have chosen. ', '', '', 'C''est une bonne idée. Cela vous permettra de ne pas vous inquiéter de votre tenue le jour de l''entretien, et vous pourrez ainsi vérifier que tout est propre. Le jour de l''entretien, vous devez rester calme et concentré(e) sur ce que vous direz pendant celui-ci et sur votre apparence. Il est bon d''essayer votre tenue la veille et de demander l''opinion de quelqu''un sur ce que vous avez choisi.', '', '', ''),
(11, 11, 1, 'This is a good idea. Your advisor can give you support and help you prepare for your interview, your advisor will have same useful tips .', '', '', 'C''est une bonne idée. Votre conseiller peut vous donner du soutien et vous aider à bien vous préparer pour l''entretien, il/elle aura des conseils utiles à vous donner.', '', '', ''),
(12, 12, 0, 'This is bad idea. You need to make sure you get up early and give yourself enough time to prepare for the interview. It is important that you have had breakfast and feel alert and awake. Staying in bed means you could oversleep and then have to rush.  Set your alarm.', '', '', 'C''est une mauvaise idée. Vous devez vous lever tôt et vous assurer d’avoir suffisamment de temps pour vous préparer pour l''entretien. Il est important que vous déjeuniez bien, et que vous soyez en forme. Si vous restez au lit, vous risquez de vous rendormir et ensuite d''avoir à courir.  Mettez votre réveil.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex16_Things`
--

CREATE TABLE `Step2_Ex16_Things` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `Step2_Ex16_Things`
--

INSERT INTO `Step2_Ex16_Things` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'Find out more about the company ', '', '', 'En savoir plus sur l''entreprise', '', '', ''),
(2, 2, 'Go to a party the night before your interview', '', '', 'Aller à une fête la veille de l''entretien', '', '', ''),
(3, 3, 'Find out the address of the company, how you will get there and how long it will take', '', '', 'Trouver l''adresse de l''entreprise, vérifier votre itinéraire et le temps qu''il vous faudra.', '', '', ''),
(4, 4, 'Go to bed early the night before', '', '', 'Se coucher tôt la veille', '', '', ''),
(5, 5, 'Take a shower before you dress', '', '', 'Se doucher avant de s''habiller', '', '', ''),
(6, 6, 'Talk to family and friends about the job', '', '', 'Parler à vos proches et à vos amis du poste.', '', '', ''),
(7, 7, 'Buy new clothes for the interview', '', '', 'Acheter de nouveaux vêtements pour l''entretien', '', '', ''),
(8, 8, 'Ask for a job description ', '', '', 'Demander une description du poste ', '', '', ''),
(9, 9, 'Buy some new furniture for your room as you will have a new job soon', '', '', 'Acheter de nouveaux meubles pour votre chambre, puisque vous aurez bientôt un nouveau travail', '', '', ''),
(10, 10, 'Choose your clothes for the interview the day before', '', '', 'Choisir vos vêtements pour l''entretien la veille', '', '', ''),
(11, 11, 'Talk to your advisor about the interview ', '', '', 'Parler à votre conseiller de l''entretien ', '', '', ''),
(12, 12, 'Make sure you have a lie in so you are not too tired for the interview ', '', '', 'S''assurer de faire la grasse matinée pour ne pas être fatigué(e) le jour de l''entretien', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex16_Users`
--

CREATE TABLE `Step2_Ex16_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `thing_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Contenu de la table `Step2_Ex16_Users`
--

INSERT INTO `Step2_Ex16_Users` (`id`, `user_id`, `thing_id`, `rank`) VALUES
(57, 1, 9, 4),
(56, 1, 6, 3),
(55, 1, 2, 2),
(54, 1, 1, 1),
(85, 23, 0, 4),
(84, 23, 0, 3),
(83, 23, 10, 2),
(82, 23, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex17`
--

CREATE TABLE `Step2_Ex17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `Step2_Ex17`
--

INSERT INTO `Step2_Ex17` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 17: WHAT TO TAKE WITH YOU', '', '', 'EXERCICE 17 : QUE FAIRE AVANT UN ENTRETIEN ', '', '', ''),
(2, 'introduction_1', 'What do you think you need to take to the interview?', '', '', 'De quoi pensez-vous avoir besoin pour l''entretien ? ', '', '', ''),
(3, 'introduction_2', 'Don’t worry - you don’t have to take a suitcase, but don’t go without anything. Think what you might need – you’ll show the potential employer how organized you are.', '', '', 'Ne vous inquiétez pas, vous n''avez pas besoin de prendre une valise, mais ne partez pas non plus les mains vides. Pensez à ce dont vous pourriez avoir besoin, vous montrerez à votre employeur potentiel que vous êtes quelqu’un de très organisé. ', '', '', ''),
(4, 'introduction_3', 'Choose 5 items you would take to the interview and drag them into the centre.', '', '', 'Choisissez 5 éléments que vous emmèneriez à l''entretien. ', '', '', ''),
(6, 'result', 'Ok. Let’s see what you have chosen! What you take on the interview depends also on what is demanded in application. There are certain things that are always good to take, it shows the prospective employer you are prepared and willing.', '', '', 'D''accord. Voyons ce que vous avez choisi ! Ce que vous emportez à un entretien dépend aussi de ce qui est demandé dans l''annonce. Il y a des choses qu''il est toujours bon d''avoir, et qui montrent à l''employeur potentiel que vous êtes prêt(e) et disposé(e). ', '', '', ''),
(7, 'choice', 'Choice', '', '', 'Choix', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex17_Explanations`
--

CREATE TABLE `Step2_Ex17_Explanations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step2_Ex17_Explanations`
--

INSERT INTO `Step2_Ex17_Explanations` (`id`, `thing_id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'Very good, you may need to make notes.', '', '', 'Très bien, vous pourriez avoir besoin de prendre des notes.', '', '', ''),
(2, 2, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(3, 3, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(4, 4, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(5, 5, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(6, 6, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(7, 7, 1, 'As we mentioned in previous exercises it is very important that before the interview you check the location – you have to know where are you going and how much time you need to come there. So don’t forget directions!', '', '', 'Comme indiqué dans les exercices précédents, il est très important de vérifier votre itinéraire avant l''entretien – vous devez savoir où vous vous rendez, et combien de temps il vous faudra pour vous y rendre. Alors n''oubliez pas votre carte !', '', '', ''),
(8, 8, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(9, 9, 1, 'Don’t forget to take them. You can show the interviewer you have the qualifications they are looking for and that you have actually passed the exams.', '', '', 'N''oubliez pas de les prendre. Vous pourrez montrer à la personne qui vous fait passer l''entretien que vous avez les diplômes et les certificats qu''ils recherchent et que vous avez déjà passé tous ces examens.', '', '', ''),
(10, 10, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(11, 11, 1, 'It is a good idea to have some questions written down. You should not ask about pay or holiday entitlement, the employer will cover this, it makes you sound like you are only interested in the money ,not the position.  Example of good questions could be: What are the prospects of future training?', '', '', 'C’est toujours une bonne idée d''avoir quelques questions notées au préalable. Vous ne devriez pas poser de questions sur le salaire ou les congés, l''employeur se chargera de vous en parler, et vous donneriez l''impression de n''être intéressé que par l''argent, et pas par le poste en lui-même.  Une question intéressante à poser pourrait être par exemple « quelles sont les possibilités de formation ? ».', '', '', ''),
(12, 12, 0, 'This is not useful.', '', '', 'Ce n''est pas utile.', '', '', ''),
(13, 13, 1, 'If you have written references ,you can show them to the interviewer and offer them a copy.', '', '', 'Si vous avez des recommandations écrites, vous pouvez les montrer à votre interlocuteur et lui proposer d''en garder une copie. ', '', '', ''),
(14, 14, 1, 'Very good, you may need to make notes.', '', '', 'Très bien, vous pourriez avoir besoin de prendre des notes.', '', '', ''),
(15, 15, 1, 'This is a good reference tool for you, it is a good idea to take an extra copy ,just in case the interviewer doesn’t have it to hand.', '', '', 'C''est un bon outil de référence pour vous, il est bon d''en avoir une copie supplémentaire, juste au cas où la personne qui vous fait passer l''entretien n''en a pas une à portée de main.', '', '', ''),
(16, 16, 1, 'Many employers check if potential employees know for which position they applied. So it’s good to take a job description with you. But not just take it with you, don’t forget to read it.', '', '', 'Beaucoup d''employeurs vérifient si les employés potentiels savent réellement pour quel poste ils ont postulé. Alors il peut être bon de prendre la description du poste avec vous. Mais pas seulement, n''oubliez pas de la lire également !', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex17_Things`
--

CREATE TABLE `Step2_Ex17_Things` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step2_Ex17_Things`
--

INSERT INTO `Step2_Ex17_Things` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 'Notebook for writing', '', '', 'Calepin', '', '', ''),
(2, 2, 'Makeup', '', '', 'Maquillage', '', '', ''),
(3, 3, 'Mp3 player', '', '', 'Lecteur MP3', '', '', ''),
(4, 4, 'Advertisement', '', '', 'Publicité', '', '', ''),
(5, 5, 'Newspaper', '', '', 'Journal', '', '', ''),
(6, 6, 'Calendar', '', '', 'Calendrier', '', '', ''),
(7, 7, 'Map', '', '', 'Carte', '', '', ''),
(8, 8, 'Perfume', '', '', 'Parfum', '', '', ''),
(9, 9, 'Certificates', '', '', 'Diplômes', '', '', ''),
(10, 10, 'Chocolate', '', '', 'Chocolat', '', '', ''),
(16, 16, 'Job description', '', '', 'Description du poste', '', '', ''),
(11, 11, 'List of questions', '', '', 'Liste de questions', '', '', ''),
(15, 15, 'Your CV', '', '', 'Votre CV', '', '', ''),
(12, 12, 'Mobile phone', '', '', 'Téléphone portable', '', '', ''),
(13, 13, 'References', '', '', 'Recommandations', '', '', ''),
(14, 14, 'Pen or Pencil', '', '', 'Stylo ou crayon', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex17_Users`
--

CREATE TABLE `Step2_Ex17_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `thing_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Contenu de la table `Step2_Ex17_Users`
--

INSERT INTO `Step2_Ex17_Users` (`id`, `user_id`, `thing_id`, `rank`) VALUES
(78, 1, 1, 5),
(77, 1, 10, 4),
(76, 1, 15, 3),
(75, 1, 1, 2),
(74, 1, 5, 1),
(118, 23, 10, 5),
(117, 23, 11, 4),
(116, 23, 15, 3),
(115, 23, 14, 2),
(114, 23, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Step2_Ex18`
--

CREATE TABLE `Step2_Ex18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `Step2_Ex18`
--

INSERT INTO `Step2_Ex18` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 18: WHAT TO WEAR', '', '', 'EXERCICE 18 : QUE PORTER ', '', '', ''),
(2, 'introduction', 'You have decided what to take with you on the interview, now think what will you wear. Your outfit will tell a lot about you to the potential employer. Drag the outfits you think are the most appropriate for the job interview on the manikin.', '', '', 'Vous avez décidé quoi prendre avec vous pour l''entretien, maintenant réfléchissez à ce que vous allez porter. Votre tenue en dit long sur vous à votre employeur potentiel. Faites glisser sur le mannequin les tenues que vous jugez les plus appropriées pour un entretien.', '', '', ''),
(3, 'tips', 'USEFUL TIPS', '', '', 'CONSEILS UTILES', '', '', ''),
(4, 'tip_1', 'The most important is that the dress is clean and ironed.', '', '', 'Le plus important est que la tenue soit propre et repassée.', '', '', ''),
(5, 'tip_2', 'Male: For the jobs where you will work with clients wear suit or sport jacket, which fit with your trousers, socks, shoes and T-shirt. Don’t wear wild colours. For other jobs you can wear sport jacket, sport T-shirt and long trousers.', '', '', 'Hommes : Pour les entretiens où vous travaillerez face à face avec des clients, portez un costume ou un veston qui va avec votre pantalon, vos chaussettes et vos chaussures et votre T-shirt. Ne portez pas de couleurs trop criardes. Pour d''autres postes, vous pouvez porter un veston ou un T-shirt de sport et un pantalon long.', '', '', ''),
(6, 'tip_3', 'Female:  Wear something conservative. Be careful with the jewellery – it has to be simple. Don''t exaggerate with make-up. You can wear jeans but it depends what kind of jeans (it is better dark jeans, they appear more elegant).', '', '', 'Femmes : Portez une tenue conservatrice. Attention à vos accessoires, ils doivent être simples. Optez pour un maquillage sobre. Vous pouvez porter un jeans, mais pas n''importe quel jean : des jeans foncés sont plus appréciés, ils sont plus sobres et élégants.', '', '', ''),
(7, 'tip_4', 'Be tidy and pay attention to your personal hygiene. That doesn’t mean that you have to visit a hairdresser or by new close. Usually when we have new hair due or new close we are not as comfortable and our body language shows that.', '', '', 'Soyez soigné(e), portez une attention particulière à votre hygiène personnelle. Ceci ne veut pas dire que vous êtes obligés d''aller chez le coiffeur ou de vous racheter des vêtements. Généralement, avec une nouvelles coupe ou une nouvelle tenue, on est moins à l''aise, et cela se voit dans notre langage corporel.', '', '', ''),
(8, 'tip_5', 'Don’t use to much perfume – it is better nothing than too much.', '', '', 'N''utilisez pas trop de parfum, mieux vaut rien que trop.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3`
--

CREATE TABLE `Step3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `Step3`
--

INSERT INTO `Step3` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'Step 3 – I have a selection interview', '', '', 'Étape 3 - J''ai un entretien d''embauche', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19`
--

CREATE TABLE `Step3_Ex19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `Step3_Ex19`
--

INSERT INTO `Step3_Ex19` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 19: INTERVIEW', '', '', 'EXERCICE 19 : ENTRETIEN', '', '', ''),
(2, 'introduction_1', 'Interview is a predictable situation – every employer wants to find out what kind of person are you. Because there is not much time, different employers ask similar questions. If you know which are this questions you can prepare yourself, be brilliant on the interview and have more chances to get the job.', '', '', 'Un entretien est quelque chose d''assez prévisible, tous les employeurs cherchent à découvrir qui vous êtes. Puisque le temps est limité, les employeurs posent généralement des questions similaires. Si vous connaissez ces questions, vous pouvez mieux vous préparer pour mieux vous démarquer au cours de l''entretien et ainsi avoir plus de chances de décrocher le poste.', '', '', ''),
(3, 'introduction_2', 'Below you have 6 different questions that might come up, when you are being interviewed. We have given you several answers; try to choose the ones you think are appropriate. We have written you tips to help you think about the answers.', '', '', 'Vous trouverez ci-dessous 6 questions qu''on pourrait vous poser au cours de l''entretien. Nous avons donné plusieurs réponses, essayez de choisir celle qui correspond. Vous trouverez quelques conseils pour vous orienter vers les bonnes réponses.', '', '', ''),
(4, 'question', 'Question', '', '', 'Question', '', '', ''),
(5, 'tip', 'Tip:', '', '', 'Conseil :', '', '', ''),
(6, 'result', 'HERE ARE THE MOST FREQUENTLY ASKED QUESTIONS:', '', '', 'VOICI LES QUESTIONS LES PLUS COURANTES :', '', '', ''),
(7, 'check_correct', 'You have checked the correct answer.', '', '', 'Vous avez coché la bonne réponse.', '', '', ''),
(8, 'check_wrong', 'You have checked a wrong answer.', '', '', 'Vous avez coché une mauvaise réponse.', '', '', ''),
(9, 'correct', 'The correct answer is the following.', '', '', 'La réponse correcte est la suivante.', '', '', ''),
(10, 'miss', 'You did not checked any answer.', '', '', 'Vous n''avez coché aucune réponse.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19_Answers`
--

CREATE TABLE `Step3_Ex19_Answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `Step3_Ex19_Answers`
--

INSERT INTO `Step3_Ex19_Answers` (`id`, `question_id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(6, 1, 1, 0, 'We had a wild time; we partied and travelled around all the time. Of course it was hard to the partying and job at the same time. But I’ve settled down now.', '', '', 'On s''est amusés comme des fous, on a passé notre temps à faire la fête et à voyager. Bien sûr, c''était difficile de combiner les soirées avec le travail. Mais je suis plus posé(e) maintenant', '', '', NULL),
(7, 1, 2, 0, ' I don’t want to talk about it. I don’t know why it is relevant to you.', '', '', 'Je ne souhaite pas en parler. Je ne vois pas en quoi cela vous regarde.', '', '', NULL),
(8, 1, 3, 1, 'Well it was a lot of pressure, arranging the competitions and several events for different partners. I had to maintain the level of energy to do both, but I liked it and managed it. The best but also challenging part was getting the group to work together as a team and trying to keep calm when everyone was tired and under pressure.', '', '', 'Et bien, c''est une activité très stressante, j''ai organisé des concours et différents évènements pour nos partenaires. Je devais maintenir un certain niveau d''énergie pour pouvoir faire les deux, mais c''est quelque chose qui me plait et j''y suis arrivé(e). La partie la plus compliquée pour moi, mais aussi la plus gratifiante, a été de faire en sorte que la troupe travaille ensemble, en équipe, et d''essayer de rester calme quand tout le monde était fatigué et stressé.', '', '', NULL),
(12, 2, 1, 0, 'I work badly under pressure, I have a mental block and can’t work properly.', '', '', ' Je ne sais pas vraiment gérer le stress, je me bloque et je suis incapable de travailler efficacement.', '', '', NULL),
(13, 2, 2, 1, '  I find some things hard to do on the computer, I am however very willing to learn, would there be some training available for me. ', '', '', 'J''ai quelques lacunes en informatique, mais je suis tout à fait disposé(e) à apprendre. Y-a-t-il des possibilités de formation au sein de l''entreprise ?', '', '', NULL),
(14, 2, 3, 0, ' I am easy going so people take advantage of me. ', '', '', 'Je ne me prends pas la tête, alors les gens profitent souvent de moi. ', '', '', NULL),
(18, 3, 1, 0, 'I was having difficulties at home and couldn’t perform.', '', '', ' J''avais des problèmes personnels et je ne pouvais plus travailler efficacement.', '', '', NULL),
(19, 3, 2, 1, ' I’ve gained lots of experiences and gone as far as I can, working for that company. At this stage of my career I need to move on and find a new challenge which I hope I’ll get here.', '', '', ' J''y ai appris énormément, mais je sentais que j''avais fait le tour de ce poste, et je souhaite évoluer. À ce stade de ma carrière, j''ai besoin d''avancer et de trouver un nouveau défi, que j''espère trouver ici.', '', '', NULL),
(20, 3, 3, 0, 'I wasn’t appreciated in my previous job and they didn’t want to pay me what I was worth so I left.', '', '', 'On ne m''appréciait pas dans mon ancien travail, et ils ne voulaient pas me payer à ma juste valeur, alors je suis parti(e).', '', '', NULL),
(24, 4, 1, 0, 'No problem, you sound angry. Are you angry with me?', '', '', 'Aucun problème, vous avez l''air en colère, vous êtes en colère avec moi ?', '', '', NULL),
(25, 4, 2, 1, 'In my cover letter I explained I had the experience you are looking for, I am confident I have everything you are looking for in an employee and I am very willing to learn new things. I am reliable and looking for new challenges.', '', '', ' Comme indiqué dans ma lettre de motivation, j''ai l''expérience que vous cherchez, je suis sûr(e) de moi, j''ai tout ce que vous recherchez chez un employé et j''aime apprendre de nouvelles choses. Je suis une personne sur qui on peut compter et je suis à la recherche de nouveaux défis.', '', '', NULL),
(26, 4, 3, 0, 'This is a long interview.', '', '', 'Qu''est-ce qu''il est long cet entretien…', '', '', NULL),
(30, 5, 1, 1, 'What qualities do you want from the person you see in this job?', '', '', 'Quelles qualités recherchez-vous chez la personne qui prendra ce poste ?', '', '', NULL),
(31, 5, 2, 0, ' I have no questions.', '', '', ' Je n''ai pas de questions', '', '', NULL),
(32, 5, 3, 0, 'When will I be able to go on my vacation?', '', '', 'Quand est-ce que je pourrai prendre des vacances ?', '', '', NULL),
(33, 5, 4, 0, 'When can I start?', '', '', ' Quand est-ce que je peux commencer ?', '', '', NULL),
(34, 5, 5, 0, 'When will I get a raise?', '', '', 'Quand est-ce que je serai augmenté ?', '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19_Frequently`
--

CREATE TABLE `Step3_Ex19_Frequently` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Contenu de la table `Step3_Ex19_Frequently`
--

INSERT INTO `Step3_Ex19_Frequently` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(37, 1, 'Tell me something about yourself.', '', '', 'Dîtes-m‘en un peu plus sur vous.', '', '', ''),
(38, 2, 'What did you do in your last job?', '', '', 'Qu''est-ce que vous avez fait dans votre poste précédent ?', '', '', ''),
(39, 3, 'Why did you leave your last job?', '', '', 'Pourquoi avez-vous quitté votre emploi précédent ?', '', '', ''),
(40, 4, 'Have you done this kind of work before?', '', '', 'Avez-vous déjà exercé ce type de tâches ?', '', '', ''),
(41, 5, 'How long have you been unemployed?', '', '', 'Depuis combien de temps êtes-vous au chômage ?', '', '', ''),
(42, 6, 'What are your strengths / weaknesses?', '', '', 'Quelles sont vos forces /faiblesses ?', '', '', ''),
(43, 7, 'What wage do you expect to earn?', '', '', 'Quelles sont vos prétentions salariales ?', '', '', ''),
(44, 8, 'When could you start working?', '', '', 'Quand pourriez-vous commencer ?', '', '', ''),
(45, 9, 'Do you have any questions?', '', '', 'Avez-vous des questions ?', '', '', ''),
(46, 10, 'On what machines or equipment did you work?', '', '', 'Sur quelles machines et avec quel matériel avez-vous travaillé ?', '', '', ''),
(47, 11, 'What do we do in our company?', '', '', 'Quelle est l''activité de notre entreprise ?', '', '', ''),
(48, 12, 'On which of your achievements are you proud the most?', '', '', 'De quelle réussite êtes-vous le plus fier ?', '', '', ''),
(49, 13, 'What do you know about the company?', '', '', 'Que savez-vous sur notre entreprise ?', '', '', ''),
(50, 14, 'How will you ensure you are punctual?', '', '', 'Comment ferez-vous en sorte d''être ponctuel ?', '', '', ''),
(51, 15, 'What are your strengths and weaknesses?', '', '', 'Quelles sont vos forces et vos faiblesses ?', '', '', ''),
(52, 16, 'What qualities can you bring to the role?', '', '', 'Quelles qualités pouvez-vous apporter à ce rôle ?', '', '', ''),
(53, 17, 'Can you think of a time when you have worked in a team? What was your contribution?', '', '', 'Pouvez-vous penser à un moment où vous avez travaillé en équipe ? Qu''elle contribution avez-vous apporté personnellement ?', '', '', ''),
(54, 18, 'What do you want from an employer?', '', '', 'Qu''attendez-vous d''un employeur ?', '', '', ''),
(55, 19, 'Why do you want to work for us?', '', '', 'Pourquoi souhaitez-vous travailler pour nous ?', '', '', ''),
(56, 20, 'Where do you see yourself in 5 years time?', '', '', 'Où vous voyez-vous dans 5 ans ?', '', '', ''),
(57, 21, 'What are your salary expectations?', '', '', 'Quelles sont vos prétentions salariales ?', '', '', ''),
(58, 22, 'Why did you leave your last job?', '', '', 'Pourquoi avez-vous quitté votre emploi précédent ?', '', '', ''),
(59, 23, 'How would you feel about learning new skills?', '', '', 'Aimeriez-vous apprendre de nouvelles compétences ?', '', '', ''),
(60, 24, 'Can you give me an example of a difficult situation you have found yourself in, how did you react? What was the outcome?', '', '', 'Pouvez-vous me donner un exemple d''une situation difficile pour vous, et comment vous avez réagi ? Comment avez-vous résolu ce problème ?', '', '', ''),
(61, 25, 'How will you ensure your work is accurate?', '', '', 'Comment ferez-vous en sorte d''être précis dans votre travail ?', '', '', ''),
(62, 26, 'Do you have any questions you would like to ask?', '', '', 'Avez-vous des questions ?', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19_Questions`
--

CREATE TABLE `Step3_Ex19_Questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `ho` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `Step3_Ex19_Questions`
--

INSERT INTO `Step3_Ex19_Questions` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `ho`) VALUES
(1, 1, ' I see from your CV that you were a member of a dance group for 3 years. What use do you think that might be to our organization?', '', '', ' Je vois dans votre CV que vous étiez membre d''une troupe de danse pendant 3 ans. Qu''est-ce que vous pensez que cela peut apporter à notre organisation ?', '', '', ''),
(2, 2, 'What are your biggest weaknesses.', '', '', 'Quelles sont vos plus grandes faiblesses ?', '', '', ''),
(3, 3, 'Why did you leave your last employer?', '', '', 'Pourquoi avez-vous quitté votre emploi précédent?', '', '', ''),
(4, 4, 'Why should we employ you?', '', '', 'Pourquoi devrait-on vous embaucher ?', '', '', ''),
(5, 5, 'Well thank you. We have asked what we wanted. Are there any questions you would like to ask us?', '', '', 'Et bien merci. Nous avons posé toutes les questions dont nous avions besoin. Avez-vous des questions à nous poser ?', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19_Tips`
--

CREATE TABLE `Step3_Ex19_Tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `Step3_Ex19_Tips`
--

INSERT INTO `Step3_Ex19_Tips` (`id`, `question_id`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(9, 1, 'Employers are interested in what type of person you are and what you learn from things you enjoy.', '', '', 'Les employeurs veulent savoir quel type de personne vous êtes et ce que vous apprenez des choses qui comptent pour vous.', '', '', ''),
(15, 2, 'Be like a politician/diplomat – try to put a spin on everything.', '', '', 'Soyez comme un politicien/diplomate - essayez de tirer parti de toutes les questions', '', '', ''),
(21, 3, 'Try not to run down your last or current employer. No interviewer likes that. Try to sound positive and ambitious.', '', '', 'Essayez de ne pas critiquer votre employeur précédent. Ce n''est pas quelque chose qui est apprécié en entretien. Essayez de rester positif(ve) et ambitieux(se).', '', '', ''),
(27, 4, 'Try to retain your cool and take the heat out of the situation.', '', '', 'Essayez de rester calme, et de détendre la situation.', '', '', ''),
(35, 5, 'None.', '', '', 'Aucun.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step3_Ex19_Users`
--

CREATE TABLE `Step3_Ex19_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Contenu de la table `Step3_Ex19_Users`
--

INSERT INTO `Step3_Ex19_Users` (`id`, `user_id`, `question_id`, `answer_id`) VALUES
(129, 23, 5, 33),
(128, 23, 4, 26),
(105, 1, 3, 19),
(104, 1, 2, 14),
(103, 1, 1, 6),
(127, 23, 3, 20),
(126, 23, 2, 14),
(125, 23, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Step4`
--

CREATE TABLE `Step4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uk` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `pt` text COLLATE utf8_unicode_ci NOT NULL,
  `fr` text COLLATE utf8_unicode_ci NOT NULL,
  `lt` text COLLATE utf8_unicode_ci NOT NULL,
  `is` text COLLATE utf8_unicode_ci NOT NULL,
  `hu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `Step4`
--

INSERT INTO `Step4` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'Step 4 – My first day of employment', '', '', 'Étape 4 - Mon premier jour', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex20`
--

CREATE TABLE `Step4_Ex20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `Step4_Ex20`
--

INSERT INTO `Step4_Ex20` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 20: FIRST DAY ON THE NEW JOB ', '', '', 'EXERCICE 20 : PREMIER JOUR DANS SON NOUVEAU POSTE', '', '', ''),
(2, 'introduction_1', 'In the same way it is important to prepare for an interview, it is equally important to prepare for the first day in your new job. ', '', '', 'De la même façon qu''il est important de se préparer pour un entretien, il est tout aussi important de se préparer pour son premier jour de travail.', '', '', ''),
(3, 'introduction_2', 'Look at the list below, tick the most important points for your first day at work. ', '', '', 'Regardez la liste ci-dessous, et cochez les points qui vous semblent être les plus importants pour votre premier jour de travail.', '', '', ''),
(16, 'tips', 'Useful tips:', '', '', 'Conseils utiles :', '', '', ''),
(18, 'good', 'Important points you have checked', '', '', 'Points importants que vous avez cochés', '', '', ''),
(19, 'miss', 'Important points you have missed', '', '', 'Points importants que vous avez oubliés', '', '', ''),
(20, 'bad', 'Wrong points you have checked', '', '', 'Mauvais points que vous avez cochés', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex20_Points`
--

CREATE TABLE `Step4_Ex20_Points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `it` text NOT NULL,
  `is` text NOT NULL,
  `ho` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `Step4_Ex20_Points`
--

INSERT INTO `Step4_Ex20_Points` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `it`, `is`, `ho`) VALUES
(1, 1, 1, 'Punctuality', '', '', 'Ponctualité', '', '', ''),
(2, 2, 1, 'Asking questions', '', '', 'Poser des questions', '', '', ''),
(3, 3, 0, 'Making jokes', '', '', 'Faire des blagues', '', '', ''),
(4, 4, 1, 'Being nice and friendly', '', '', 'Être aimable et cordial', '', '', ''),
(5, 5, 1, 'Observing the office etiquette', '', '', 'Observer les règles du bureau', '', '', ''),
(6, 6, 0, 'Speaking on the personal mobile phone during work', '', '', 'Prendre des appels personnels sur son portable pendant les heures de travail', '', '', ''),
(7, 7, 0, 'Using the office phone for personal conversations', '', '', 'Utiliser le téléphone du bureau pour des conversations personnelles', '', '', ''),
(8, 8, 0, 'Taking often breaks', '', '', 'Prendre beaucoup de pauses', '', '', ''),
(9, 9, 1, 'Listening', '', '', 'Écouter', '', '', ''),
(10, 10, 1, 'Dressing appropriately', '', '', 'Porter une tenue adéquate', '', '', ''),
(11, 11, 1, 'Observing the work process', '', '', 'Observer les processus de travail', '', '', ''),
(12, 12, 0, 'Stressing yourself', '', '', 'Se stresser', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex20_Tips`
--

CREATE TABLE `Step4_Ex20_Tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step4_Ex20_Tips`
--

INSERT INTO `Step4_Ex20_Tips` (`id`, `rank`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(4, 1, 'You need to know when exactly you start working: day, hour. Be punctual!', '', '', ' Vous devez savoir exactement quand vous commencez : jour et heure. Soyez ponctuel(le).', '', '', ''),
(5, 2, 'Dress appropriately.', '', '', 'Choisissez une tenue adéquate.', '', '', ''),
(6, 3, 'Bring your personal documents with you.', '', '', 'Apportez vos documents personnels avec vous.', '', '', ''),
(7, 4, 'Be nice and friendly.', '', '', 'Soyez aimable et cordial.', '', '', ''),
(8, 5, 'Try to show as much interest for the job as possible.', '', '', 'Essayez de montrer autant d''intérêt pour le poste que possible.', '', '', ''),
(9, 6, 'Ask questions.', '', '', 'Posez des questions.', '', '', ''),
(10, 7, 'Listen carefully to instructions.', '', '', 'Écoutez les instructions attentivement.', '', '', ''),
(11, 8, 'Ask where your working place will be, where you can get your working tools, utensils.', '', '', 'Demandez où sera situé votre poste de travail, où vous pourrez trouver votre équipement de travail et votre matériel.', '', '', ''),
(12, 9, 'Ask when the lunch break is and where are the toilets…', '', '', 'Demandez quand est la pause déjeuner, et où se trouvent les toilettes…', '', '', ''),
(13, 10, 'If you smoke make sure you find out about the policy for smoking.', '', '', 'Si vous fumez, assurez-vous de bien vous renseigner sur la politique de l''entreprise à ce sujet.', '', '', ''),
(14, 11, 'Watch your humor. Try to be relaxed but don’t be pushy.', '', '', 'Attention à votre sens de l''humour. Soyez détendus, mais ne soyez pas trop insistants.', '', '', ''),
(15, 12, 'Be prepared to listen. Let people approach you and try to respond appropriately.', '', '', 'Soyez prêt(e) à écouter. Laissez les gens venir vers vous et essayez de répondre adéquatement.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex20_Users`
--

CREATE TABLE `Step4_Ex20_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Contenu de la table `Step4_Ex20_Users`
--

INSERT INTO `Step4_Ex20_Users` (`id`, `user_id`, `point_id`) VALUES
(49, 1, 9),
(48, 1, 7),
(47, 1, 5),
(46, 1, 3),
(45, 1, 2),
(44, 1, 1),
(73, 23, 7),
(72, 23, 6),
(71, 23, 3),
(70, 23, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex21`
--

CREATE TABLE `Step4_Ex21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `Step4_Ex21`
--

INSERT INTO `Step4_Ex21` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 21: THE CONTRACT I ', '', '', 'EXERCICE 21 : LE CONTRAT I', '', '', '0'),
(2, 'introduction', 'What do you think belongs in the contract? Check the items.', '', '', 'Selon vous, qu''est-ce qui a sa place dans un contrat ? Cochez les éléments pertinents.', '', '', ''),
(3, 'result', 'Always pay attention to what is written in your contract. You have the right to take the contract home and think about it. If you are not sure what should be in a contract and don´t know what certain items mean, you should consult with someone who is more familiar with it. ', '', '', 'Faites toujours très attention à ce qui est écrit dans le contrat. Vous avez le droit de ramener le contrat chez vous pour le relire et y réfléchir. Si vous n''êtes pas sûrs de ce qui devrait figurer dans votre contrat ou que vous ne savez pas ce que certains éléments veulent dire, vous devriez en parler avec quelqu''un qui s''y connait. ', '', '', ''),
(5, 'good', 'Important points you have checked', '', '', 'Les points importants que vous avez cochés', '', '', ''),
(6, 'miss', 'Important points you have missed', '', '', 'Points importants que vous avez oubliés', '', '', ''),
(7, 'bad', 'Wrong points you have checked', '', '', 'Mauvais points que vous avez cochés', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex21_Characteristics`
--

CREATE TABLE `Step4_Ex21_Characteristics` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `Step4_Ex21_Characteristics`
--

INSERT INTO `Step4_Ex21_Characteristics` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, '1', 'First and Last name', '', '', 'Nom et Prénom', '', '', ''),
(2, 2, '0', 'Name of your partner', '', '', ' Le nom de votre conjoint', '', '', ''),
(3, 3, '1', 'Working Hours', '', '', 'Horaires de travail', '', '', ''),
(4, 4, '1', 'Restraint of trade clause ', '', '', 'Clause de non-concurrence ', '', '', ''),
(5, 5, '0', 'If you own any animals', '', '', 'Si vous êtes propriétaire d''animaux domestiques', '', '', ''),
(6, 6, '1', 'Salary', '', '', 'Salaire', '', '', ''),
(7, 7, '0', 'Your body measurements', '', '', 'Vos mensurations', '', '', ''),
(8, 8, '1', 'Director/Manager Signature', '', '', 'La signature du gérant/du manager', '', '', ''),
(9, 9, '1', 'Your signature', '', '', 'Votre signature ', '', '', ''),
(10, 10, '0', 'Your phone number', '', '', 'Votre numéro de téléphone', '', '', ''),
(11, 11, '1', 'Holiday entitlement  ', '', '', 'Nombre de jours de congés payés  ', '', '', ''),
(12, 12, '0', 'Whether you have children ', '', '', 'Si vous avez des enfants', '', '', ''),
(13, 13, '1', 'Notice period ', '', '', 'Le préavis ', '', '', ''),
(14, 14, '0', 'Whether  you have car', '', '', 'Si vous avez une voiture', '', '', ''),
(15, 15, '1', 'Your duties and responsibilities', '', '', 'Votre rôle et vos responsabilités', '', '', ''),
(16, 16, '1', 'Date of Engagement ', '', '', 'Votre date d’embauche ', '', '', ''),
(17, 17, '1', 'Address of work place ', '', '', 'Adresse du lieu de travail ', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex21_Users`
--

CREATE TABLE `Step4_Ex21_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Contenu de la table `Step4_Ex21_Users`
--

INSERT INTO `Step4_Ex21_Users` (`id`, `user_id`, `char_id`) VALUES
(40, 23, 14),
(39, 23, 11),
(38, 23, 6),
(37, 23, 1),
(29, 1, 7),
(28, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex22`
--

CREATE TABLE `Step4_Ex22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `ho` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `Step4_Ex22`
--

INSERT INTO `Step4_Ex22` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `ho`) VALUES
(1, 'title', 'EXERCISE 22: THE CONTRACT II', '', '', 'EXERCICE 22 : LE CONTRAT II', '', '', ''),
(2, 'introduction', 'What do you think belongs in the contract? Check the items that are the basics every contract should contain. Keep in mind that all items do not belong into the contract.', '', '', 'Qu''est-ce qui doit se trouver dans un contrat ? Cochez les éléments que, selon vous, tout contrat devrait contenir. Gardez à l''esprit que tous les éléments ne font pas partie du contrat.', '', '', ''),
(3, 'item', 'Item', '', '', 'Élément', '', '', ''),
(4, 'conclusion', 'Always pay attention to what is written in your contract. You have the right to take the contract home and think about it. If you are not sure what should be in a contract and don’t know what certain items mean, you should consult with someone who is more familiar with it.', '', '', 'Faites toujours très attention à ce qui est écrit dans le contrat. Vous avez le droit de ramener le contrat chez vous et d''y réfléchir. Si vous n''êtes pas surs de ce qui devrait figurer dans votre contrat ou que vous ne savez pas ce que certains éléments veulent dire, vous devriez en parler avec quelqu''un qui s''y connait.', '', '', ''),
(5, 'contract', 'The contract', '', '', 'Le contrat', '', '', ''),
(6, 'good', 'Correct items you have checked', '', '', 'Les éléments obligatoires que vous avez cochés', '', '', ''),
(7, 'miss', 'Correct items you have missed', '', '', 'Les éléments obligatoires que vous avez oubliés', '', '', ''),
(8, 'bad', 'Wrong items you have checked', '', '', 'Les mauvais éléments que vous avez cochés', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex22_Items`
--

CREATE TABLE `Step4_Ex22_Items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `Step4_Ex22_Items`
--

INSERT INTO `Step4_Ex22_Items` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, 1, 'Angelica Parks, Green Street 21, Ljubljana, the Employee and Jordan Rupert, Green House Ltd., House Street 14, Ljubljana, the Employer, conclude the following.', '', '', 'Entre Angelica Parks, 21 Rue Verte, Ljubljana, l''employée, et Jordan Rupert, Green House Ltd., Rue House 14, Ljubljana, l''employeur, il a été arrêté et convenu ce qui suit.', '', '', ''),
(2, 2, 0, 'Angelica Parks, owner of a black Fiat Punto.', '', '', 'Angelica Parks, propriétaire d''une Fiat Punto noir.', '', '', ''),
(3, 3, 1, 'The employment relationship for indefinite.', '', '', 'Dans le cadre d''un contrat de travail à durée indéterminée.', '', '', ''),
(4, 4, 0, 'Angelica Parks is married to Freddy Parks.', '', '', 'Angelica Parks est mariée à Freddy Parks.', '', '', ''),
(5, 5, 0, 'The employee will work for 60 hours a week.', '', '', 'L''employé(e) est tenu(e) d’effectuer une durée hebdomadaire de travail de 60h.', '', '', ''),
(6, 6, 1, 'Employee’s working assignments: Selling the product, keeping the working environment tidy, Serving the costumers, Folding the clothes, Filling the shelves, Taking care of cash register, Advising the clients.\n\n', '', '', 'Dans le cadre de ses responsabilités, l''employé(e) sera  responsable de :\nla vente du produit, la propreté de l''environnement de travail, l''accueil clientèle, plier les vêtements, veiller à l’approvisionnement du magasin, gérer la caisse, conseiller la clientèle.', '', '', ''),
(7, 7, 1, 'The Employee will be receiving a salary of 800 Euros gross.', '', '', 'L''employé(e) recevra une rémunération mensuelle brute de 800 Euros.', '', '', ''),
(8, 8, 0, 'The pay check will be received every two month.', '', '', 'La rémunération sera perçue tous les deux mois.', '', '', ''),
(9, 9, 0, 'The Employee agrees that she won’t get pregnant within the next 2 years.', '', '', 'L''employé(e) accepte de ne pas tomber enceinte pendant les deux prochaines années.', '', '', ''),
(10, 10, 1, 'The employee will work for 40 hours per week. The working time is organized from Monday till Friday, eight hours per day.', '', '', 'L''employé(e) est tenu(e) d’effectuer une durée hebdomadaire de travail de 40h. La semaine de travail est répartie du lundi au vendredi, avec huit heures par jour.', '', '', ''),
(11, 11, 1, 'The employee will receive pay check every 15th of the month. If the 15th comes on the weekend or holiday, the salary will be received the next working day.', '', '', 'L''employé(e) percevra cette rémunération tous les 15 du mois. Si le 15 du mois tombe un week-end ou un jour férié, le salaire sera versé au prochain jour ouvré.', '', '', ''),
(12, 12, 1, 'The Employee shall be entitled to minimum 20 working days of leave per year. The employee shall take leave in accordance with the law and in agreement with her/his supervisor or the Company manager.', '', '', 'L''employé(e) bénéficiera chaque année de 20 jours ouvrés de congés.  La période de congés sera déterminée en accord avec la loi et l’employeur pour tenir compte des nécessités du service.', '', '', ''),
(13, 13, 1, 'The contract is concluded for the position of seller.', '', '', 'L''employé(e) est engagé(e) en qualité de vendeur.', '', '', ''),
(14, 14, 1, 'The Employee shall commence working on January 1, 2009', '', '', 'L''employé(e) est engagé(e) à partir du 1er Janvier 2009.', '', '', ''),
(15, 15, 0, 'The Employee’s phone number is 555-65-40.', '', '', 'Le numéro de téléphone de l''employé(e) est le 555-65-40.', '', '', ''),
(16, 16, 1, 'Signatures of the Employee and Employer.', '', '', 'Signatures de l''employé(e) et de l''employeur.', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex22_Users`
--

CREATE TABLE `Step4_Ex22_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Contenu de la table `Step4_Ex22_Users`
--

INSERT INTO `Step4_Ex22_Users` (`id`, `user_id`, `item_id`) VALUES
(47, 23, 9),
(46, 23, 6),
(45, 23, 4),
(44, 23, 3),
(43, 23, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex23`
--

CREATE TABLE `Step4_Ex23` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `Step4_Ex23`
--

INSERT INTO `Step4_Ex23` (`id`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 'title', 'EXERCISE 23: IS IT LEGAL ?', '', '', 'EXERCICE 23 : EST-CE LÉGAL ? ', '', '', ''),
(2, 'tip', 'Tip: It is possible to check your working rights on the internet using the website', '', '', 'Conseil : Il est possible de vérifier vos droits sur le net, via le site', '', '', ''),
(3, 'website', 'http://www.gov.uk/', '', '', 'http://www.gouvernement.fr/', '', '', ''),
(10, 'introduction_1', 'People often don’t know or understand their rights and are in a hurry to sign a contract because they want the job, this can lead to confusion and disappointment.', '', '', 'Souvent, les gens méconnaissent ou ne comprennent pas leur droits et signent un contrat à la hâte pace qu''ils veulent un travail à tout prix, ce qui peut parfois mener à une certaine confusion, ou à des déceptions.', '', '', ''),
(11, 'introduction_2', 'It is important that you understand your rights and that you treated fairly. ', '', '', 'Il est important que vous compreniez vos droits et que vous soyez traités dignement ', '', '', ''),
(12, 'result', 'If you checked all the statements you are correct, they are NOT in accordance with law. You should be familiar with your rights and know how to defend them when it comes to working late, different kind of abuse, leave of absence.', '', '', 'Si vous avez coché toutes ces affirmations, vous avez raison, elles NE SONT PAS en accord avec la loi. Vous devez connaître vos droits et savoir comment les faire respecter, surtout en ce qui concerne les abus, les congés et les heures supplémentaires.', '', '', ''),
(13, 'introduction_3', 'Check the statements you think are NOT in accordance with law.\n', '', '', 'Dans la liste d''affirmations suivantes, marquez celles qui selon vous NE SONT PAS en accord avec la loi.', '', '', ''),
(14, 'good', 'Illegal statements you have checked', '', '', 'Points illégaux que vous avez cochés', '', '', ''),
(15, 'miss', 'Illegal statements you have missed', '', '', 'Points illégaux que vous avez oubliés', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex23_Laws`
--

CREATE TABLE `Step4_Ex23_Laws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `type` text NOT NULL,
  `uk` text NOT NULL,
  `bg` text NOT NULL,
  `pt` text NOT NULL,
  `fr` text NOT NULL,
  `lt` text NOT NULL,
  `is` text NOT NULL,
  `hu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `Step4_Ex23_Laws`
--

INSERT INTO `Step4_Ex23_Laws` (`id`, `rank`, `type`, `uk`, `bg`, `pt`, `fr`, `lt`, `is`, `hu`) VALUES
(1, 1, '1', 'You work every day from 8 to 18 o’clock and have a 30 minute break.', '', '', 'Vous travaillez tous les jours de 8h à 18h, avec une pause de 30 minutes.', '', '', ''),
(2, 2, '1', 'You work in an unhealthy environment where there is a lot of noise.', '', '', 'Vous travaillez dans un environnement insalubre, où il y a beaucoup de bruit.', '', '', ''),
(3, 3, '1', 'The superior is harassing his employee.', '', '', 'Le supérieur hiérarchique harcèle ses employés', '', '', ''),
(4, 4, '1', 'Your work schedule is every day of the week for the whole month.', '', '', 'Votre êtes inscrits sur le planning tous les jours de la semaine, le mois entier.', '', '', ''),
(5, 5, '1', 'Blank contract', '', '', 'Un contrat vide', '', '', ''),
(6, 6, '1', 'You are working without leave of absence', '', '', 'Vous travaillez sans congés', '', '', ''),
(7, 7, '1', 'Safety at work', '', '', 'Insécurité permanent dans l''environnement du travail', '', '', ''),
(8, 8, '1', 'Medical exam', '', '', 'Pas de visite médicale obligatoire annuelle', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Step4_Ex23_Users`
--

CREATE TABLE `Step4_Ex23_Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `law_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `Step4_Ex23_Users`
--

INSERT INTO `Step4_Ex23_Users` (`id`, `user_id`, `law_id`) VALUES
(43, 23, 8),
(42, 23, 6),
(41, 23, 3),
(40, 23, 1),
(29, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL,
  `activation_key` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8_unicode_ci NOT NULL,
  `first_name` text COLLATE utf8_unicode_ci NOT NULL,
  `ex1` int(11) NOT NULL,
  `ex2` int(11) NOT NULL,
  `ex3` int(11) NOT NULL,
  `ex4` int(11) NOT NULL,
  `ex5` tinyint(4) NOT NULL,
  `ex6` int(11) NOT NULL,
  `ex7` int(11) NOT NULL,
  `ex8` int(11) NOT NULL,
  `ex9` int(11) NOT NULL,
  `ex10` int(11) NOT NULL,
  `ex11` int(11) NOT NULL,
  `ex12` int(11) NOT NULL,
  `ex13` int(11) NOT NULL,
  `ex14A` int(11) NOT NULL,
  `ex14B` int(11) NOT NULL,
  `ex15` int(11) NOT NULL,
  `ex16` int(11) NOT NULL DEFAULT '0',
  `ex17` int(11) NOT NULL DEFAULT '0',
  `ex18` int(11) NOT NULL DEFAULT '0',
  `ex19` int(11) NOT NULL DEFAULT '0',
  `ex20` int(11) NOT NULL DEFAULT '0',
  `ex21` int(11) NOT NULL DEFAULT '0',
  `ex22` int(11) NOT NULL DEFAULT '0',
  `ex23` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;
