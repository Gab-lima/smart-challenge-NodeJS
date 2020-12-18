-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Dez-2020 às 01:36
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `smart_staff`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contract_timeline`
--

CREATE TABLE `contract_timeline` (
  `id` int(11) NOT NULL,
  `broker` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contract_timeline`
--

INSERT INTO `contract_timeline` (`id`, `broker`, `date`, `customer_id`) VALUES
(1, 'Franks Allison', '0000-00-00 00:00:00', 1),
(2, 'Sophia Henson\"', '2017-02-17 19:45:13', 1),
(3, 'Aisha Parks', '2017-09-13 14:45:52', 1),
(4, 'Eunice Langley', '2018-06-14 08:22:43', 2),
(5, 'Liliana Flowers', '0000-00-00 00:00:00', 2),
(6, 'Pratt Mcdowell', '0000-00-00 00:00:00', 2),
(7, 'Mavis Webster', '0000-00-00 00:00:00', 3),
(8, 'Cathryn Carney', '0000-00-00 00:00:00', 3),
(9, 'Gay Shields', '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer`
--

CREATE TABLE `customer` (
  `_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` varchar(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(45) NOT NULL,
  `budget` decimal(15,2) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL,
  `channel` varchar(60) NOT NULL,
  `registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `customer`
--

INSERT INTO `customer` (`_id`, `first_name`, `last_name`, `age`, `email`, `company`, `budget`, `phone`, `address`, `about`, `latitude`, `longitude`, `channel`, `registered`) VALUES
(1, 'Reyna', 'Stone', '69', 'reyna.stone@quinex.info', 'QUINEX', '353.00', '+1 (859) 560-27', '280 Williams Place, Barclay, Vermont, 9702', 'Aliquip laborum elit nulla non. Fugiat irure dolore et ex sit veniam velit minim aliquip ex nostrud nisi irure. Dolore incididunt qui duis aliquip.', '36.118223', '95.440079', 'Google', '2014-02-10 10:21:49'),
(2, 'Lori', 'Cherry', '36', 'lori.cherry@dragbot.me\"', 'DRAGBOT', '267.00', '1 (804) 522-388', '251 Scholes Street, Bowie, Marshall Islands, 4108', 'Consectetur dolore officia tempor laborum et minim Lorem laborum quis do labore. Nisi ex ut cillum deserunt magna dolor ut nostrud amet ad mollit sit minim. Sunt esse non quis elit quis commodo consequat. Ut labore non aliqua aliqua laborum voluptate incididunt laboris excepteur eiusmod culpa laboris amet ullamco. Laboris incididunt laboris laborum consequat tempor do excepteur quis velit adipisicing laborum non nulla.', '34.756744', '79.695965', 'Direct Access', '2018-09-26 18:52:48'),
(3, 'Aline', 'Peck', '29', 'aline.peck@trollery.name', 'TROLLERY', '223.00', '+1 (950) 524-30', '677 Erasmus Street, Hachita, Nevada, 8585', 'Laboris labore magna fugiat eiusmod tempor elit laborum amet cillum amet Lorem amet cupidatat et. Minim duis cupidatat quis id esse veniam nostrud. Enim nulla sunt nostrud sunt quis eiusmod est sit sunt tempor excepteur incididunt amet. Deserunt veniam non sint enim eiusmod. Duis eiusmod id qui mollit incididunt minim laboris laborum cupidatat nostrud mollit est elit.', '-44.237608', '120.806149', 'Instagram', '2018-01-25 15:23:44'),
(5, 'Debora', 'Foster', '33', 'debora.foster@gazak.tv', 'GAZAK', '294.00', '+1 (971) 460-20', '535 Vine Street, Tioga, Puerto Rico, 6773', 'Laboris qui irure excepteur officia sit sint dolor ut Lorem dolore irure eu. Nulla sunt nostrud ullamco ullamco irure aliqua ex qui. Deserunt do esse nulla commodo ipsum exercitation anim adipisicing mollit occaecat mollit do. Anim laboris elit consectetur eiusmod adipisicing consectetur veniam dolore sint nisi nulla aliqua consequat. Enim eiusmod veniam incididunt amet. Irure ea ut ad esse velit duis do adipisicing ullamco reprehenderit sit irure mollit.', '62.574496', '149.350441', 'Facebook', '2014-06-04 02:06:15'),
(6, 'Julianne', 'Whitney', '22', 'julianne.whitney@bugsall.biz', 'BUGSALL', '167.00', '+1 (808) 504-34', '662 Rost Place, Glendale, Idaho, 221', 'Eu ut pariatur pariatur Lorem eiusmod excepteur adipisicing voluptate dolore qui. Laboris incididunt ut duis deserunt occaecat. Tempor ipsum amet dolore irure minim id ipsum aliqua in. Ipsum et cupidatat dolore enim dolor laboris incididunt consectetur irure. Minim ea veniam anim cupidatat consequat nulla cupidatat culpa ullamco consequat. Ut dolore enim officia et cupidatat.', '7.193686', '64.485886', 'Instagram', '2017-03-23 20:58:48'),
(7, 'Harris', 'Watkins', '61', 'harris.watkins@geekus.biz', 'GEEKUS', '309.00', '+1 (843) 456-23', '613 Imlay Street, Vivian, Alaska, 8606', 'Aute magna minim duis culpa. Laborum labore fugiat laboris reprehenderit do. Occaecat duis esse mollit reprehenderit adipisicing incididunt reprehenderit elit ut. Ea dolor amet velit cillum dolor.', '-85.188376', '67.667368', 'Facebook', '2015-12-10 21:33:34'),
(8, 'Claudia', 'May', '32', 'claudia.may@blanet.org', 'BLANET', '322.00', '+1 (995) 492-22', '467 Lake Street, Epworth, Kentucky, 2266', 'Laboris nulla qui nostrud sunt labore culpa voluptate deserunt esse nulla commodo mollit. Reprehenderit qui commodo eu minim irure adipisicing culpa qui culpa. Aliquip mollit excepteur cupidatat qui excepteur in occaecat commodo. Tempor eiusmod eiusmod nisi et aute ea enim exercitation Lorem sit ipsum excepteur sint ad. Quis cupidatat id amet ex exercitation amet sunt. Sunt pariatur qui duis do eiusmod.', '88.628403', '51.868391', 'Facebook', '2015-07-16 13:38:07'),
(9, 'Elsa', 'Burke', '21', 'elsa.burke@zilphur.net', 'ZILPHUR', '188.00', '+1 (911) 435-39', '266 Radde Place, Sunbury, Hawaii, 9533', 'Do elit quis esse eiusmod minim laborum consequat. Consectetur in do labore enim id do anim velit culpa irure exercitation amet sit. Dolor occaecat dolor sunt amet aute reprehenderit. Excepteur pariatur et incididunt esse veniam do tempor veniam sunt veniam deserunt cillum amet adipisicing.', '75.775007\"', '132.69216', 'Facebook', '2018-10-09 06:22:10'),
(10, 'Rhodes', 'Barber', '64', 'rhodes.barber@bolax.io', 'BOLAX', '360.00', '+1 (803) 439-29', '846 Troutman Street, Cawood, Florida, 4933', 'Consectetur fugiat et quis consectetur aliquip velit nulla consectetur id eiusmod. Culpa labore ea veniam ullamco proident nisi adipisicing anim excepteur. Occaecat labore esse nostrud exercitation voluptate laboris.', '-87.752283\"', '13.326249', 'Google', '2016-01-20 03:44:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pictures`
--

INSERT INTO `pictures` (`id`, `url`, `customer_id`) VALUES
(1, 'https://picsum.photos/200/300', 1),
(2, 'https://picsum.photos/200/300', 1),
(3, 'https://picsum.photos/200/300', 1),
(4, 'https://picsum.photos/200/300', 1),
(5, 'https://picsum.photos/200/300', 2),
(6, 'https://picsum.photos/200/300', 2),
(7, 'https://picsum.photos/200/300', 2),
(8, 'https://picsum.photos/200/300', 2),
(9, 'https://picsum.photos/200/300', 3),
(10, 'https://picsum.photos/200/300', 3),
(11, 'https://picsum.photos/200/300', 3),
(12, 'https://picsum.photos/200/300', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contract_timeline`
--
ALTER TABLE `contract_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contract_timeline` (`customer_id`);

--
-- Índices para tabela `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`_id`);

--
-- Índices para tabela `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contract_timeline`
--
ALTER TABLE `contract_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `customer`
--
ALTER TABLE `customer`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contract_timeline`
--
ALTER TABLE `contract_timeline`
  ADD CONSTRAINT `fk_contract_timeline` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`_id`);

--
-- Limitadores para a tabela `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
