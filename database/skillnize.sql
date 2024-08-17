-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 10:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skillnize`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_request`
--

CREATE TABLE `certificate_request` (
  `id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL,
  `course_id` bigint(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL,
  `date_given` datetime DEFAULT NULL,
  `date_requested` datetime DEFAULT current_timestamp(),
  `certificate_price` double DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `p_desc` text DEFAULT NULL,
  `p_number` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificate_request`
--

INSERT INTO `certificate_request` (`id`, `status`, `customer_id`, `course_id`, `created_at`, `updated_at`, `description`, `date_given`, `date_requested`, `certificate_price`, `paid`, `payment_date`, `p_desc`, `p_number`) VALUES
(8, 1, 34, 70, '2023-08-12 09:59:33', '2023-09-17 15:24:54', 'Requisição de Certificado', NULL, '2023-08-12 09:59:33', 1, 1, '2023-08-12 09:59:33', NULL, '847001734'),
(9, 1, 39, 72, '2023-08-13 17:39:03', '2023-08-13 17:40:49', 'Requisição de Certificado', NULL, '2023-08-13 17:39:03', 1, 1, '2023-08-13 17:39:03', NULL, '849138315'),
(10, 1, 39, 77, '2023-08-13 17:51:10', '2023-09-17 15:24:41', 'Requisição de Certificado', NULL, '2023-08-13 17:51:10', 0.1, 1, '2023-08-13 17:51:10', NULL, '849138315'),
(11, 1, 40, 64, '2023-08-14 19:02:51', '2023-09-17 15:24:49', 'Requisição de Certificado', NULL, '2023-08-14 19:02:51', 1, 1, '2023-08-14 19:02:51', NULL, '847718628'),
(12, 1, 60, 82, '2023-12-31 17:50:45', '2024-01-13 14:55:04', 'Requisição de Certificado', NULL, '2023-12-31 17:50:45', 500, 1, '2023-12-31 17:50:45', NULL, '845215319');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `description` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `description`, `active`) VALUES
(1, 'Cidade de Maputo', NULL, 1),
(2, 'Matola', NULL, 1),
(3, 'Sofala', NULL, 1),
(4, 'Nampula', NULL, 1),
(5, 'Manica', NULL, 1),
(6, 'Zambézia', NULL, 1),
(7, 'Tete', NULL, 1),
(8, 'Gaza', NULL, 1),
(9, 'Inhambane', NULL, 1),
(10, 'Niassa', NULL, 1),
(11, 'Cabo delgado', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` bigint(20) NOT NULL,
  `monetize_info_pt` text DEFAULT NULL,
  `monetize_info_en` text DEFAULT NULL,
  `about_info_pt` text DEFAULT NULL,
  `about_info_en` text DEFAULT NULL,
  `terms_info_pt` text DEFAULT NULL,
  `terms_info_en` text DEFAULT NULL,
  `refund_info_pt` text DEFAULT NULL,
  `refund_info_en` text DEFAULT NULL,
  `privacy_info_pt` text DEFAULT NULL,
  `privacy_info_en` text DEFAULT NULL,
  `other_info_pt` text DEFAULT NULL,
  `other_info_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_top_info_pt` text DEFAULT NULL,
  `home_top_info_en` text DEFAULT NULL,
  `card1_info_pt` text DEFAULT NULL,
  `card1_info_en` text DEFAULT NULL,
  `card2_info_pt` text DEFAULT NULL,
  `card2_info_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `monetize_info_pt`, `monetize_info_en`, `about_info_pt`, `about_info_en`, `terms_info_pt`, `terms_info_en`, `refund_info_pt`, `refund_info_en`, `privacy_info_pt`, `privacy_info_en`, `other_info_pt`, `other_info_en`, `created_at`, `updated_at`, `home_top_info_pt`, `home_top_info_en`, `card1_info_pt`, `card1_info_en`, `card2_info_pt`, `card2_info_en`) VALUES
(1, '<h4>Programa de Afiliados</h4>\r\n      <p>Empresa Possui um Programa de Afiliados para os Cursantes, com uma comissão imediata de até 50% nas inscrições Directas e até 10%&nbsp; nas inscrições Indirectas<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">.</span></p><p>\r\n        Participar do Programa de Afiliados é muito importante para o cursante, pois tem a oportunidade de monetizar (Gerar renda através da plataforma) e aplicar no mercado real o conhecimento obtido nos cursos.</p><p> </p>\r\n\r\n      <h4>Como Monetizar</h4><p><b>Primeiro: </b>Deve se inscrever numa das Classes para se tornar um Cursante Afiliado. A Inscrição determina a margem de comissão a Receber em cada Referência ou novo Registo.</p><p><b>Segundo</b>: Deve Recomendar os Tesouros Virtuais usando o seu código de Afiliado. Em cada Compra/Registo Efectuado Recebe um pagamento Imediato mediante sua margem de comissão.</p><h4><br></h4><h4>Horário De Pagamento Sobre Vendas Directas </h4>\r\n      <p>De Segunda à Sexta-feira os pagamentos são efetuados no período das <b>08:00</b> horas às <b>18:00</b> \r\n        horas.<br> \r\n        Sábado e Domingo os pagamentos são efetuados no período das <b>10:00</b> horas às <b>14:00</b> horas.<br> \r\n        Caso cursante efectuar uma operação de venda fora do horário estabelecido, os pagamentos \r\n        serão efectuados imediatamente no próximo horário.  </p>\r\n\r\n\r\n      <h4>Horário De Pagamento Sobre Vendas Indirectas</h4>\r\n      <p>De Segunda à Sexta-feira os pagamentos são efetuados no período das <b>18:00</b> horas às <b>19:30</b> \r\n        horas. \r\n        Sábado e Domingo os pagamentos são efetuados no período das <b>14:00</b> horas às <b>14:30</b> horas. </p>', '<h4>Affiliate Program</h4>\r\n      <p>Company has an Affiliate Program for Students, with a daily commission of up to\r\n        70% on Direct Sales of Treasures and up to 10% on Indirect Sales of Treasures.\r\n        Participating in the Affiliate Program is very important for the student because it has\r\n        opportunity to monetize and apply the knowledge obtained in the courses in the real market. </p>\r\n\r\n\r\n        <h4>How to Monetize</h4>\r\n      <p><b>First</b>: You must buy a Virtual Treasure from the company in the affiliated course. the purchase of\r\n        one of the treasures determines the lean to receive on each sale. </p>\r\n        <p><b>Second</b>: In order to monetize, the attendee must sell the Virtual Treasures using their\r\n        affiliate and for each sale made you receive an immediate payment. </p>\r\n\r\n        <h4>Time of Payment on Direct Sales </h4>\r\n      <p>From Monday to Friday, payments are made from <b>08:00</b> hours to <b>18:00</b>\r\n        hours.<br>\r\n        On Saturdays and Sundays, payments are made between <b>10:00</b> hours and <b>2:00 pm</b> hours.<br>\r\n        If the student carries out a sales operation outside the established hours, the payments\r\n        will be carried out immediately at the next schedule. </p>\r\n\r\n     \r\n        <h4>Time of Payment on Indirect Sales</h4>\r\n        <p>From Monday to Friday, payments are made between <b>6:00 pm</b> and <b>7:30 pm</b>\r\n        hours.\r\n        On Saturdays and Sundays, payments are made from <b>2:00 pm</b> to <b>2:30 pm</b>. </p>', '<p><b><span style=\"font-family: Verdana;\">Makemoney</span></b><span style=\"font-family: Verdana;\"> é uma&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Plataforma Certificada de Capacitação Técnica e Profissional em Diversas Áreas de Ensino e Aprendizagem a Nível de Línguas, Tecnologia, Empresas e Negócios.</span></p><p><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size);\"><br></b></p><p><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size);\">Makemoney&nbsp; RH</b><br></p><p>Através de Serviços de Recursos Humanos, vários Cursantes Foram alocados a Micro, Pequenas e Médias Empresas para efeitos de estágio&nbsp; Profissional e/ou Emprego.</p><p>Para se qualificar e se beneficiar desses Serviços é necessário:</p><p>1. Se inscrever numa das Classes, para constar na Base de Dados de Candidatos a Vagas de Emprego e Estágio Profissional;</p><p>2. Capacitar-se com os Cursos existentes na Plataforma;</p><p>3. Requisitar/Emitir o Certificado.</p><p><br></p><p><b><span style=\"font-family: Verdana;\">Tesouros Virtuais</span></b></p><p><span style=\"font-family: Verdana;\">Produtos que integram cursos em forma de&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Vídeos-Aulas,</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">&nbsp;e-Books e áudio-Books \r\n    que abrangem diversas áreas como, Empreendedorismo, Educação Financeira Empresarial e \r\n    Familiar, Marketing, Gestão de Negócios e curso de línguas.</span></p><p><span style=\"font-weight: bolder; font-family: Verdana;\">Áreas de Actuação:</span></p><p><span style=\"font-family: Verdana;\">1.&nbsp;</span><span style=\"font-weight: bolder; font-family: Verdana;\">Educação</span><span style=\"font-family: Verdana;\">, através de Vídeo-Aulas, Audio-book\'s, Ebook\'s e Aulas Interrativas.</span></p><p><span style=\"font-family: Verdana;\">2.&nbsp;</span><span style=\"font-weight: bolder; font-family: Verdana;\">Monetização (Geração de Renda)</span><span style=\"font-family: Verdana;\">, através de Marketing de Afiliados.</span></p><p><span style=\"font-family: Verdana;\">3.&nbsp;</span><span style=\"font-weight: bolder; font-family: Verdana;\">Filantropia</span><span style=\"font-family: Verdana;\">, através da Makemoney Foundation.</span></p><p><font face=\"Verdana\">Por Cada Cursante novo na Plafaforma, Canalizamos 10% do valor pago na Inscrição para&nbsp;</font><span style=\"font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-size: var(--mdb-body-font-size);\"><b>Makemoney Foundation</b></span><span style=\"font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\"> que por sua vez apoia</span><span style=\"font-weight: bold; font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-size: var(--mdb-body-font-size);\"> </span><span style=\"font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-size: var(--mdb-body-font-size);\">Instituições de caridade</span><span style=\"font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\"> e de Luta contra&nbsp; violência, luta contra várias doenças, como malária, Cólera, Câncer, Diabete, entre Outras.</span></p><h4><span style=\"font-family: Verdana;\"><br></span></h4><h4><span style=\"font-family: Verdana;\">Aulas Interativas</span></h4><p><span style=\"font-family: Verdana;\">Geralmente, para uma interação directa entre o professor e os cursantes, turmas são abertas, Com uma carga horária&nbsp; de:&nbsp; 1hora por semana</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">.</span></p><p><span style=\"font-family: Verdana;\"> </span></p><span style=\"font-family: Verdana;\">\r\n\r\n\r\n    </span><h4><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; text-align: var(--mdb-body-text-align);\"><br></span></h4><h4><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; text-align: var(--mdb-body-text-align);\">e-Books - áudio-Books - VídeoAulas</span><br></h4><span style=\"font-family: Verdana;\">\r\n    </span><p><span style=\"font-family: Verdana;\">Não existe sucesso duradouro sem aprendizado contínuo. A Plataforma Makemoney apresenta \r\n    um modelo de ensino e aprendizagem único em e-Books e áudio-Books e&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Vídeos-Aulas.</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: Verdana; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">&nbsp;Fundamentado em \r\n    três pilares:</span></p><span style=\"font-family: Verdana;\">\r\n\r\n    </span><h4><span style=\"font-family: Verdana; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); text-align: var(--mdb-body-text-align);\">Fronteira do Conhecimento</span><br></h4><span style=\"font-family: Verdana;\">\r\n     </span><p><span style=\"font-family: Verdana;\">Disponibilizamos matérias mais avançadas no mundo de \r\n    Empreendedorismo, Educação Financeira, Marketing e Gestão de Negócios, para que os \r\n    cursantes possam se desenvolver de forma constante e consistente.</span></p><h4><span style=\"font-family: Verdana;\">Comodidade</span></h4><span style=\"font-family: Verdana;\">\r\n     </span><p><span style=\"font-family: Verdana;\">Após o estudo do comportamento de Milhares de pessoas, descobriu-se que é \r\n        possível aliar aprendizagem e Lazer, tornando o hábito de aprender em algo prazeroso e \r\n        viciante.</span></p><h4><span style=\"font-family: Verdana;\">Directo ao Ponto</span></h4><span style=\"font-family: Verdana;\">\r\n    </span><p><span style=\"font-family: Verdana;\">Observou-se que grosso modo de conteúdos disponíveis na internet são \r\n    rasos e tentam preencher a mente dos leitores com assuntos irrelevantes. Por tanto, em resposta \r\n    a esse problema a empresa desenvolve e disponibiliza material rico em conteúdo de forma que \r\n    você se desenvolva rapidamente, alcançando a excelência com muita facilidade e sem perder \r\n    tempo.</span></p><p><span style=\"font-family: Verdana;\"><br></span></p><h4><span style=\"font-family: Verdana;\">Valores</span></h4><span style=\"font-family: Verdana;\">\r\n\r\n     </span><ol class=\"list-style-dots\"><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Comprometimento;</span></li><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Responsabilidade;</span></li><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Integridade;</span></li><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Dinamismo;</span></li><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Confiança;</span></li><span style=\"font-family: Verdana;\">\r\n        </span><li><span style=\"font-family: Verdana;\">Qualidade e Transparência.</span></li>\r\n     </ol>', '<p>Makemoney is a Technical and Professional Training Platform in several areas of\r\n    Teaching and Learning, Virtually and Face-to-face. </p>\r\n\r\n    <p>The Company calls the Set of Courses, Advantages and Benefits, Virtual Treasures,\r\n    thus forming a digital treasure, which the Attendant enjoys right after his Enrollment.\r\n    </p>\r\n\r\n    <p>The Virtual Treasures are treasures that integrate courses in the form of e-Books and audio-Books\r\n    that cover several areas such as Entrepreneurship, Corporate Financial Education and\r\n    Family, Marketing, Business Management and language course. </p>\r\n\r\n<h4>e-Books and Audio-Books</h4>\r\n    <p>There is no lasting success without continuous learning. The Makemoney Platform presents\r\n    a unique teaching and learning model in e-Books and audio-Books. Based on\r\n    three pillars:\r\n    </p>\r\n\r\n    <h4>Frontier of Knowledge</h4>\r\n     <p>We provide the most advanced materials in the world of\r\n    Entrepreneurship, Financial Education, Marketing and Business Management, so that\r\n    students can develop steadily and consistently.\r\n    </p>\r\n\r\n    <h4>Convenience</h4>\r\n     <p>After studying the behavior of thousands of people, it was discovered that it is\r\n        possible to combine learning and leisure, making the habit of learning something pleasurable and\r\n        addictive.\r\n    </p>\r\n\r\n<h4>Straight to the Point</h4>\r\n    <p>It was observed that the bulk of content available on the internet is\r\n    shallow and try to fill readers\' minds with irrelevant subjects. Therefore, in response\r\n    to this problem the company develops and makes material rich in content available so that\r\n    you to develop quickly, reaching excellence very easily and without losing\r\n    time.</p><p><br></p>\r\n\r\n     <h4>Values</h4>\r\n\r\n     <ol class=\"list-style-dots\">\r\n        <li>Commitment;</li>\r\n        <li>Responsibility;</li>\r\n        <li>Integrity;</li>\r\n        <li>Dynamism;</li>\r\n        <li>Confidence;</li>\r\n        <li>Quality and Transparency.</li>\r\n     </ol>', '<p>O acesso a plataforma Makemoney e a revenda de Tesouros Virtuais está sujeito a termos abaixo descritos, você declara que concorda inteiramente com as condições descritas aqui, \n        bem como fornecimento de dados pessoais e qualquer outro termo de uso estabelecido nesta \n        plataforma digital. Estas condições contêm todo o contrato entre você e nós em relação ao \n        produto. Você confirma que, ao concordar em aceitar estas Condições, não confiou em \n        nenhuma representação, excepto na medida em que as mesmas tenham sido expressamente \n        representadas nessas Condições. \n        </p>\n\n        <h4>1. Geral</h4>\n        \n        <p>A finalidade destes Termos e Condições é definir e explicar os Termos e Condições ao abrigo \n        dos quais todos os produtos virtuais são oferecidos e vendidos pela Makemoney. Estes \n        Termos e Condições são aplicados a todas as transacções entre o cliente, vendedor e a \n        Makemoney.\n        </p>\n\n        <p>\n        \n        A Makemoney não será vinculada por qualquer Termo, declaração, garantia, promessa ou \n        algo similar, expressamente ou implicitamente, e que não esteja aqui indicado. \n        Qualquer venda e compra de produtos virtuais da empresa Makemoney está sujeita a estes \n        Termos e Condições. <br> É da responsabilidade do vendedor assegurar que conheça e esteja \n        familiarizado integralmente com os mesmos, bem como com as disposições pertinentes da \n        legislação nacional. \n        <br>Estes Termos e Condições podem ser alterados periodicamente pela Makemoney e é da \n        responsabilidade do vendedor garantir que fique a par e familiarizado com tais alterações. \n        Nenhuma variação, acréscimo ou anulação de qualquer um destes termos e condições terá \n        validade ou efeito amenos que seja acorado por escrito pela Makemoney. \n        <br>O não exercício ou atraso no exercício pela Makemoney de qualquer direito ao abrigo em \n        conformidade com estes Termos e Condições não constituirão renúncia desse direito e nem \n        exclusão de qualquer outro direito. \n        <br>Caso a Makemoney não aplique ou se recuse aplicar a totalidadeou parte destes Termos e \n        Condições ou a conceder o Vendedor e o Cliente qualquer indulgência, então tal acto ou \n        omissão não se deve interpretar como uma renúncia de direitos, nem servirá de preclusão \n        contra ou em prejuízo da Makemoney. \n        <br>Se qualquer parte destas Condições for considerada ilegal, nula ou por qualquer motivo \n        impraticável, essa disposição será considerada separável destas Condições e não afectará a \n        validade e aplicabilidade de nenhuma das demais disposições destas Condições. \n        </p>\n\n        <h4>2. Licenciamento da Empresa </h4>\n\n        <p>\n            A Makemoney está licenciada pelo órgão competente com o Número Único da Entidade \n            Legal 101****22 e Número Único de Identificação Tributária 401****16, actuando no Ramo \n            de Marketing Digital em Moçambique.  \n        </p>\n\n         <h4>3. Actividades Fraudulentas </h4>\n            <p>Caso a Makemoney suspeite sobre actividades fraudulentas ou violação dos Termos e \n            Condições, sem nenhum prejuízo aos demais direitos que a Makemoney possui sob estes \n            Termos, a Makemoney se reserva o direito de tomar as medidas que achar necessárias. Entre \n            elas, tirar a licença de venda e comercialização de Tesouros Virtuais da empresa, tomada de \n            providências jurídicas contra o indivíduo que esteja ligado directa ou indirectamente na \n            actividade ilícita e suspender o seu acesso a plataforma por um tempo \n            indeterminado,bloquear o seu código de licença na empresa e contactar o provedor da internet \n            para que ele bloqueie o seu a cesso ou tomar providências jurídicas contra o violador. \n            </p>\n            \n            <h4>4. Divisibilidade de Cláusulas</h4> \n            <p> Se um tribunal com a devida jurisdição declarar que alguma cláusula destes termos é nula, \n            inválida, ilegal ou inaplicável, as outras cláusulas continuarão em vigor. Se a Makemoney \n            falhar em fazer valer alguma cláusula destes Termos e Condições, isso não significa que o \n            vendedor esteja isento de cumpri-la ou que a Makemoney não tenha o direito de fazê-la valer. \n             </p>\n\n            <h4>5. Lei Aplicável e Jurisdição </h4>\n            <p>A empresa é regida pelas leis de Moçambique. Os produtos virtuais emitidos pela empresa \n            são passíveis de venda somente na Makemoney nos termos das referidas leis. \n            </p>\n\n\n            <h4>6. Acordo Integral </h4>\n           <p>A compra do produto e o cumprimento dos Termos e Condições são o acordo integral entre a \n            Makemoney e você no que diz respeito a revenda dos mesmos. Qualquer acordo diferente \n            relacionado a licença para revenda dos produtos virtuais da empresa está anulado. <br>\n            Reservamo-nos o direito de retirar o Produto ou elementos do Produto a qualquer momento e \n            não seremos responsáveis por você como resultado de qualquer acção desse tipo.<br> \n            Nada nestas Condições deve ser interpretado como criando qualquer agência, parceria ou \n            qualquer outra forma de empreendimento conjunto entre você e a Makemoney. \n            </p>\n\n            <h4>7. Sem garantia </h4>\n            <p>Nos esforçaremos para fornecer o Produto usando nossa habilidade e cuidados razoáveis. Não \n            oferecemos garantia ou representação adicional, expressa ou implícita, em relação ao \n            Produto. Todas as garantias ou condições implícitas de qualidade satisfatória, adequação ao \n            objectivo, completude ou precisão são excluídas. <br>\n            Não garantimos que o Produto atenda às suas necessidades ou seja ininterrupto, oportuno, \n            seguro ou livre de erros, que os defeitos sejam corrigidos ou que o site makemoney.co.mz ou \n            o servidor que o disponibiliza esteja disponível livre de vírus ou bugs ou representa a \n            funcionalidade completa, a precisão. <br>\n            No caso de erros de sistema ou comunicação relacionados à venda de produtos, liquidação de \n            vendas ou outro elemento do Produto, não seremos responsáveis por você como resultado de \n            tais erros e nos reservamos o direito de anular todas as vendas em questão. \n            </p>\n            \n            <h4>8. Limitação de Responsabilidade </h4>\n            <p>Não nos responsabilizamos por contracto, delito, negligência ou qualquer outra forma, por \n            qualquer perda ou dano decorrente de alguma forma relacionado ao seu uso do Produto, seja \n            directo ou indirecto, incluindo, sem limitação, danos por perda de negócios, perda de \n            comissões, interrupção de negócios, perda de informações comerciais ou qualquer outra \n            perda pecuniária ou consequente (mesmo quando tenhamos sido notificados por você da \n            possibilidade de tal perda ou dano).\n            </p>\n       \n\n            <h4>10. Propriedade Intelectual</h4> \n            <p>Você reconhece e concorda que todos os direitos autorais, marcas registadas e todos os outros \n            direitos de propriedade intelectual de todo material ou conteúdo disponível como parte do \n            serviço de Makemoney permanecerão sempre investidos em nós ou em nossos licenciadores. \n            Você tem permissão para usar este material apenas conforme expressamente autorizado por \n            nós ou por nossos licenciadores. \n            Você reconhece e concorda que o material e o conteúdo contidos no site makemoney.co.mz \n            fornecidos como parte do Produto são disponibilizados apenas para uso comercial da \n            Makemoney e que qualquer outro uso desse material e conteúdo é estritamente proibido. \n            Você concorda em não ajudar ou facilitar a terceiros copiar, reproduzir, transmitir, publicar, \n            exibir, distribuir, explorar comercialmente, adulterar ou criar trabalhos derivados de tal \n            material e conteúdo. \n            </p>\n\n            <h4>11. Conta de Registo / Vendas </h4>\n           <p>A empresa reserva-se o direito de excluir usuários com informações falsas erecusar o \n            pagamento de quaisquer ganhos. A pedido da empresa, o usuário é obrigado a produzir um \n            documento oficial mostrando sua foto, comprovando sua identidade (cópia do passaporte, \n            carteira de motorista ou carteira de identidade). \n            Você reconhece e concorda que a compra de um produto da Makemoney permite ao \n            vendedor obter licença para revender somente produtos dessa categoria. \n            O vendedor pode ter mais de uma conta. Os vendedores já registados podem se registar como \n            novos vendedores com o mesmo nome e com mesmo endereço de email quando emitir-se \n            novos produtos para venda. \n            </p> \n\n            <h4>12. Sua Obrigação Como Vendedor </h4>\n            <p>Você declara e garante que: \n            Tem mais de 18 anos de idade ou maior idade legal mínima, conforme estipulado na \n            jurisdição e, de acordo com as leis aplicáveis a Você, tiver permissão legal para efectuar \n            vendas dos produtos oferecidos pela Makemoney. \n            Vende produtos em seu próprio nome e não em nome de qualquer outra pessoa; \n            Todas as informações que você fornece à Makemoney durante o prazo de validade deste \n            contrato são verdadeiras, completas e correctas, e que você deve notificar por escrito \n            imediatamente a Makemoney sobre qualquer alteração dessas informações; \n            Você é o único responsável por relatar e contabilizar quaisquer impostos aplicáveis a Você, \n            de acordo com as leis relevantes, por quaisquer ganhos que receber da Makemoney; \n           </p>\n\n            <h4>13. Horário de Compra </h4>\n            <p>Nos esforçaremos para fornecer o Produto no horário favorável para o cliente (24/24 horas), a \n            empresa reserva-se o direito de conceder a licença no Horário Pré-estabelecido no ponto (14).\n            </p>\n\n\n            <h4>14. Processamento e Horário de Pagamento </h4>\n            <p>A empresa reserva-se o direito de alterar o método de pagamento em casos individuais (por \n            exemplo, através de métodos de pagamento móvel ou transferência bancária). \n            Você reconhece e aceita que nos dias laborais (2a a 6a\n            Feira) os pagamentos serão efectuados no período das 08 horas às 18 horas. Sábado e Domingo os pagamentos serão no período das \n            10 horas às 14 horas. Caso efectuar uma operação de venda fora do horário pré-estabelecido, \n            o seu pagamento será processado e pago no próximo horário. \n            </p>\n            \n           \n           <h5> A Makemoney não é uma Instituição Financeira e muito menos Pirâmide Financeira.</h5>', '<p>Access to the Makemoney platform and the resale of Virtual Treasures is subject to \n        described below, you represent that you fully agree to the conditions described herein, \n        as well as the provision of personal data and any other terms of use set forth in this \n        digital platform. These conditions contain the entire contract between you and us in relation to the \n        treasure. You confirm that by agreeing to accept these Conditions, you have not relied on \n        representation, except to the extent that they have been expressly represented by the \n        represented under these Conditions. \n        </p>\n\n        <h4>1. General</h4>\n        \n        <p>The purpose of these Terms and Conditions is to define and explain the Terms and Conditions under \n        of which all virtual treasures are offered and sold by Makemoney. These \n        Terms and Conditions are applied to all transactions between the customer, seller and the \n        Makemoney.\n        </p>\n\n        <p>\n        \n        Makemoney will not be bound by any Term, statement, warranty, promise or \n        something similar, expressly or implicitly, and that is not indicated here. \n        Any sale and purchase of virtual treasures from Makemoney company is subject to these \n        Terms and Conditions. <br> It is the seller\'s responsibility to ensure that he knows and is \n        fully familiar with them, as well as with the relevant provisions of the \n        national legislation. \n        <br>These Terms and Conditions may be amended from time to time by Makemoney and is \n        seller\'s responsibility to ensure that he is aware of and familiar with such changes. \n        No variation, addition or cancellation of any of these terms and conditions shall be \n        validity or effect unless it is printed in writing by Makemoney. \n        <br>The non-exercise or delay in the exercise by Makemoney of any right under \n        accordance with these Terms and Conditions shall not constitute a waiver of that right or \n        exclusion of any other right. \n        <br>If Makemoney does not apply or refuses to apply all or part of these Terms and \n        conditions or to grant seller and customer any indulgence, then such act or \n        omission should not be interpreted as a waiver of rights, nor shall it serve as a preclusion \n        against or to the detriment of Makemoney. \n        <br>If any part of these Conditions is found to be illegal, void or for any reason \n        impractical, such provision shall be deemed separable from these Conditions and shall not affect the \n        validity and enforceability of any of the other provisions of these Conditions. \n        </p>\n\n        <h4>2. Company Licensing </h4>\n\n        <p>\n            Makemoney is licensed by the competent body with the Single Number of the \n            Legal 101****22 and Unique Tax Identification Number 401****16, acting in the Branch \n            Digital Marketing In Mozambique.  \n        </p>\n\n         <h4>3. Fraudulent Activities </h4>\n            <p>If Makemoney suspects fraudulent activity or violation of the Terms and \n            Conditions, without prejudice to the other rights that Makemoney has under these Terms, Makemoney reserves the right to take any action it deems necessary.\n            Among them, to take away the license to sell and commercialize virtual treasures of the company, taking \n            legal action against the individual who is directly or indirectly linked to the \n            illegal activity and suspend their access to the platform for a time \n            block your license code in the company and contact your internet service provider \n            to block your access or take legal action against the rapist. \n            </p>\n            \n            <h4>4. Divisibility of Clauses</h4> \n            <p> If a court with due jurisdiction declares that any provision of these terms is void, \n            invalid, illegal or unenforceable, the other clauses will remain in force. If Makemoney \n            failure to enforce any provision of these Terms and Conditions, this does not mean that the \n            seller is exempt from complying with it or that Makemoney does not have the right to enforce it. \n             </p>\n\n            <h4>5. Applicable Law and Jurisdiction </h4>\n            <p>The company is governed by the laws of Mozambique. Virtual treasures issued by the company \n            be liable to sell only to Makemoney under those laws. \n            </p>\n\n\n            <h4>6. Agreement </h4>\n           <p>The purchase of the treasure and compliance with the Terms and Conditions are the entire agreement between the \n            Makemoney and you with regard to reselling them. Any different agreement \n            license for the resale of the company\'s virtual treasures is void.<br>\n            We reserve the right to remove the treasure or elements of the treasure at any time and \n            we will not be liable to you as a result of any such action.<br> \n            Nothing in these Conditions shall be construed as creating any agency, partnership or \n            any other form of joint venture between you and Makemoney. \n            </p>\n\n            <h4>7. No warranty </h4>\n            <p>We will endeavour to provide the treasure using our skill and reasonable care. No \n            we offer additional warranty or representation, express or implied, in relation to the \n            treasure. All implied warranties or conditions of satisfactory quality, fitness of \n            completeness or accuracy are excluded. <br>\n            We do not guarantee that the treasure meets your needs or is uninterrupted, timely, \n            safe or error-free, that defects are corrected or that the website makemoney.co.mz or \n            the server that makes it available is available free of viruses or bugs or represents the \n            full functionality, accuracy. <br>\n            In the case of system or communication errors related to the sale of treasures, liquidation of \n            sales or other element of the treasure, we will not be liable to you as a result of \n            such errors and reserve the right to cancel all sales in question. \n            </p>\n            \n            <h4>8. Limitation of Liability </h4>\n            <p>We are not liable for contract, tort, negligence or otherwise, for \n            any loss or damage arising in any way related to your use of the treasure, whether \n            direct or indirect, including, without limitation, damages for loss of business, loss of \n            commissions, business interruption, loss of business information or any other \n            pecuniary or consequential loss (even when we have been notified by you of the \n            possibility of such loss or damage).\n            </p>\n       \n\n            <h4>10. Intellectual Property</h4> \n            <p>You acknowledge and agree that all copyrights, trademarks and all other \n            intellectual property rights of all material or content available as part of the \n            Makemoney service will always remain invested in us or our licensors. \n            You are permitted to use this material only as expressly authorized by \n            us or our licensors. \n            You acknowledge and agree that the material and content contained on the site makemoney.co.mz \n            provided as part of the treasure are made available for commercial use only of the \n            Makemoney and that any other use of such material and content is strictly prohibited. \n            You agree not to assist or facilitate third parties to copy, reproduce, transmit, publish, \n            display, distribute, commercially exploit, tamper with or create derivative works of such \n            material and content. \n            </p>\n\n            <h4>11. Registration Account / Sales </h4>\n           <p>The company reserves the right to exclude users with false information and refuse the \n            payment of any winnings. At the request of the company, the user is obliged to produce a \n            official document showing your photo, proving your identity (copy of passport, \n            driver\'s license or id card). \n            You acknowledge and agree that the purchase of a Makemoney treasure allows the \n            seller obtain license to resell only treasures of that category. \n            The seller may have more than one account. Sellers already registered can register as \n            new sellers with the same name and same email address when issuing \n            new treasures for sale. \n            </p> \n\n            <h4>12. Your Obligation as a Seller </h4>\n            <p>You represent and warrant that: \n            You are over 18 years of age or of a legal age of minimum, as stipulated in \n            jurisdiction and, in accordance with the laws applicable to You, have legal permission to perform \n            sales of the treasures offered by Makemoney. \n            It sells treasures in its own name and not on behalf of anyone else; \n            All information you provide to Makemoney during the validity of this period. \n            agreement are true, complete and correct, and that you must notify in writing \n            makemoney about any change to this information; \n            You are solely responsible for reporting and accounting for any taxes applicable to You, \n            accordance with the relevant laws, for any winnings you receive from Makemoney; \n           </p>\n\n            <h4>13. Purchase Hours </h4>\n            <p>We will endeavor to provide the treasure on a favorable time for the customer (24/24 hours), the \n            company reserves the right to grant the licence at the Pre-established Time at paragraph (14).\n            </p>\n\n\n            <h4>14. Processing and Payment Time </h4>\n            <p>The company reserves the right to change the payment method in individual cases (e.g. \n            mobile payment methods or bank transfer). \n            You acknowledge and accept that on working days (2nd to 6th\n            Fair) payments will be made in the period from 08:00 to 18:00. Saturday and Sunday payments will be in the period of \n            10:00 a.m. to 2:00 p.m. If you carry out a sale operation outside the pre-set hours, \n            your payment will be processed and paid at the next time. \n            </p>\n            \n           \n           <h5> Makemoney is not a Financial Institution, neither a Financial Pyramid.</h5>', NULL, NULL, '<p>\n        Você reconhece e aceita que é necessário que a Makemoney colete e armazene seus dados \n        pessoais para permitir o acesso e o uso da plataforma digital e para permitir a participação em \n        vendas. \n        Você reconhece e aceita que todas as chamadas telefónicas feitas por você para a \n        Makemoney serão gravadas para sua própria protecção e benefício. \n        No processamento de sua conta de vendas e transacções associadas, a Makemoney pode \n        recorrer a agências de classificação de crédito, agências de detecção de fraudes e agências de \n        combate à lavagem de dinheiro ou branqueamento de capitais. Você concorda com essas \n        divulgações. \n        Seus dados pessoais não serão divulgados a terceiros, a menos que tal divulgação seja \n        necessária para o processamento de suas solicitações em relação às vendas ou a menos que \n        seja exigido por lei. Você concorda com essas divulgações. \n    </p>', '<p>\n        You acknowledge and agree that Makemoney can collect and store your data \n        to enable access to and use of the digital platform and to allow participation in \n        sales. \n        You acknowledge and accept that all telephone calls made by you to the \n        Makemoney will be recorded for your own protection and benefit. \n        In the processing of your associated sales and transaction account, Makemoney may \n        to credit rating agencies, fraud detection agencies and credit rating agencies. \n        combating money laundering or money laundering. You agree to these \n        Disclosures. \n        Your personal data will not be disclosed to third parties unless such disclosure is \n        necessary for processing your requests in relation to sales or unless \n        required by law. You agree to these disclosures. \n    </p>', NULL, NULL, '2023-04-01 16:09:23', '2024-06-06 14:05:15', '<h3>Um Pouco Sobre a Makemoney</h3><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Plataforma de Capacitação Técnica e Profissional em Diversas Áreas de Ensino e Aprendizagem a Nível de Línguas, Tecnologia, Empresas e Negócios. </span></p>', '<h3>A little about Makemoney</h3><p>Certified Technical and professional Training Platform um Various Teaching and Learning Areas in Languages, Technology, Companies, Business and Games </p>', '<h3>Capacite-se De Forma Simples no Mundo de Negócios,&nbsp; Profissional, Tecnologia e Comunique-se Em Várias Línguas</h3>\r\n                                <p> \r\n                                </p><p style=\"margin-top: 0px;\"><span style=\"font-weight: bolder;\">+ 5 000 </span>Estagiários Profissionais</p><p style=\"margin-top: 0px;\"><span style=\"font-weight: bolder;\">+ 1 000 </span>Profissionais</p><p style=\"margin-top: 0px;\"><span style=\"font-weight: bolder;\">+ 100 000</span>&nbsp;Cursantes&nbsp;<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Afiliados</span></p><p style=\"margin-top: 0px;\"><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 500 000</span>&nbsp;Certificados Emitidos</span></p><p style=\"margin-top: 0px;\"><span style=\"font-weight: bolder;\">+ 1 000 000</span>&nbsp;Horas Assistidas</p><p style=\"margin-top: 0px;\"><br></p><p style=\"margin-top: 0px;\"><b>OUTROS SERVIÇOS</b>:</p><p style=\"margin-top: 0px;\">+ Makemoney Serviços e Consultoria (Contabilidade, Fiscalidade e Negócios)</p><p style=\"margin-top: 0px;\"><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size);\">+ Makemoney Gráfica, Serigrafia e Papelaria</span></p><p style=\"margin-top: 0px;\"><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size);\">+ Makemoney RH (Serviços de recrutamento e Seleção de Candidatos)</span></p><p style=\"margin-top: 0px;\">+ Gestão de Arquivo</p><p style=\"margin-top: 0px;\"><br></p><p style=\"margin-top: 0px;\"><u style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\"><b>Faça o seu Pedido e Obtenha já a sua cotação</b></u></p>\r\n                                <p></p>', '<h3>The simplest way\r\n                                    and easy to generate money\r\n                                    for your pocket.</h3>\r\n                                <p>\r\n                                </p><p>Learn to control your finances and generate extra income without leaving home. Explore inexhaustible knowledge and open up a world of endless opportunities.</p>\r\n                                <p></p>', '<h3>Aprenda na Prática e de Forma Descontraída A controlar Sua Vida Financeira E Monetize Sem Sair De Casa</h3>\r\n                                <p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight);\">Você só tem o controlo da Sua Vida quando Sabe  controlar o Dinheiro. Explore o conhecimento inesgotável e abra um mundo de Oportunidades Infinitas</span></p>', '<h3>Learn in a relaxed<span style=\"font-size: 1.75rem; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); text-align: var(--mdb-body-text-align);\"> </span>way to control your financial life<span style=\"font-size: 1.75rem; background-color: var(--mdb-card-bg); color: var(--mdb-body-color); font-family: var(--mdb-body-font-family); text-align: var(--mdb-body-text-align);\">.</span></h3>\r\n                                <p>You only have control of your life when you know to control the money. </p>');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `order` int(11) NOT NULL DEFAULT 0,
  `use_ext_url` tinyint(4) NOT NULL DEFAULT 0,
  `ext_url` text DEFAULT NULL,
  `use_opt_url` tinyint(4) NOT NULL DEFAULT 0,
  `opt_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `course_id`, `content_type_id`, `name`, `image`, `path`, `description`, `created_at`, `updated_at`, `order`, `use_ext_url`, `ext_url`, `use_opt_url`, `opt_url`) VALUES
(44, 67, 2, 'Pdf Exclusivo', '[]', '[{\"id\":\"UQXFAMVSQWYCMIXOAQFKURLGZLPWYCHPCBNGFOEVJCBVCCMLDA\",\"name\":\"Brymond Business Plan 2023-2024-1 (1).pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Brymond Business Plan 2023-2024-1 (1).pdf\",\"type\":\"Document\"}]', 'Este conteúdo é exclusivo!', '2023-08-05 20:33:28', '2023-08-05 20:33:28', 0, 0, NULL, 0, NULL),
(45, 67, 2, '10 Propostas para o sucesso de uma start up', '[]', '[{\"id\":\"JJDCYWFLFALCHPKPBDIEZOTCZHTABSVKHWRWADCVXAVMGBEFJR\",\"name\":\"10 PROPOSTAS PARA O SUCESSO INICIAL DE UMA STARTUP......pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/10 PROPOSTAS PARA O SUCESSO INICIAL DE UMA STARTUP......pdf\",\"type\":\"Document\"}]', 'Conteúdo importante sobre startups', '2023-08-05 22:36:07', '2023-08-05 22:36:07', 0, 0, NULL, 0, NULL),
(46, 70, 2, 'Contabilidade Básica', '[]', '[{\"id\":\"ADTEAOXACVYIAULGCKOQYWGGAIGNIPYDUCGOYSWGZHXIKGANXH\",\"name\":\"Apostila de Contabilidade.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Apostila de Contabilidade.pdf\",\"type\":\"Document\"}]', NULL, '2023-08-05 22:43:45', '2023-08-05 22:43:45', 0, 0, NULL, 0, NULL),
(47, 71, 2, 'Introdução a programação', '[]', '[{\"id\":\"EFLOIDQSLLZKFJXISXTMFOJPBBGWGGXSLBVFCVKQIPNFAPCCTN\",\"name\":\"AulasCs(1Bim).pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/AulasCs(1Bim).pdf\",\"type\":\"Document\"}]', 'sadsad', '2023-08-05 23:11:33', '2023-08-05 23:11:33', 0, 0, NULL, 0, NULL),
(48, 71, 1, 'Audio Book Avaço da Programação', '[]', '[{\"id\":\"AQOOCKEXGUEFNNUWRPHQDLIWPGDSTPOSTJKKAKDARKRVPSEDNM\",\"name\":\"y2mate.com - J\\u00d8RD BIAN  I Know U Lyric Video_320kbps (2).mp3\",\"url\":\"\\/uploads\\/treasures\\/package\\/y2mate.com - J\\u00d8RD BIAN  I Know U Lyric Video_320kbps (2).mp3\",\"type\":\"Audio\"}]', 'sasad', '2023-08-05 23:12:07', '2023-08-05 23:12:07', 0, 0, NULL, 0, NULL),
(50, 72, 4, 'Demonstração deSoftware', '[]', '[{\"id\":\"FTQFGSJRPTHXFQXGDVUWYDUTJNJNWNVZARWSDAFNABAGGOWORX\",\"name\":\"DB2C-328-GalleryVideo-S23Series-AnimatedKV_Letterbox.mp4\",\"url\":\"\\/uploads\\/treasures\\/package\\/DB2C-328-GalleryVideo-S23Series-AnimatedKV_Letterbox.mp4\",\"type\":\"video\"}]', 'Adasdsad', '2023-08-06 01:52:39', '2023-08-06 01:52:39', 0, 0, NULL, 0, NULL),
(51, 72, 2, 'Aprender a vender de forma simples', '[]', '[{\"id\":\"VCBOHYPXLYWRMCHFETTMAMHGAUWEWEUBCYMMQHEZZUHOFDOWJN\",\"name\":\"Apostila de Contabilidade (1).pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Apostila de Contabilidade (1).pdf\",\"type\":\"Document\"}]', 'Teste', '2023-08-06 01:53:33', '2023-08-06 01:53:33', 0, 0, NULL, 0, NULL),
(53, 76, 2, 'Hg', '[]', '[{\"id\":\"KJBXFQIYQCCCLLFVLMDRNJHLRKMLEEJQDGTWDINHGTPYQPVRSB\",\"name\":\"51 H\\u00e1bitos de Milion\\u00e1rios_ Pense como um milion\\u00e1rio para ser um.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/51 H\\u00e1bitos de Milion\\u00e1rios_ Pense como um milion\\u00e1rio para ser um.pdf\",\"type\":\"Document\"}]', 'Cafsn', '2023-08-09 16:39:41', '2023-08-09 16:39:41', 0, 0, NULL, 0, NULL),
(55, 79, 2, 'Informática Básica e Intermedia', '[]', '[{\"id\":\"BKUGSOHWXLPTCLMJWIJWZCZRCAOQKZCVUAGPREEJIOTYFCMMJB\",\"name\":\"Inform\\u00e1tica B\\u00e1sica e Intermedia.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Inform\\u00e1tica B\\u00e1sica e Intermedia.pdf\",\"type\":\"Document\"}]', NULL, '2023-08-22 02:25:26', '2023-08-22 02:25:26', 0, 0, NULL, 0, NULL),
(56, 74, 2, 'Empreendedorismo', '[]', '[{\"id\":\"UGYIDDBDIVJHYXMIAXIEFRCNYPQRWIXAOIPFLLOZLIAZNGXXAN\",\"name\":\"Empreendedorismo.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Empreendedorismo.pdf\",\"type\":\"Document\"}]', NULL, '2023-08-22 11:48:53', '2023-08-22 11:48:53', 0, 0, NULL, 0, NULL),
(57, 80, 2, 'Guia de Chinês Intermédio', '[]', '[{\"id\":\"FFQKUFXCONTALRHLAEVEHEQVQKVISJMBPAVYEPXJURSHJBBJQF\",\"name\":\"Guia de Chin\\u00eas Interm\\u00e9dio.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Guia de Chin\\u00eas Interm\\u00e9dio.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:37:00', '2023-09-02 17:37:00', 0, 0, NULL, 0, NULL),
(60, 81, 2, 'Vocabulário para o HSK 1', '[]', '[{\"id\":\"MKDVVGVZNFHUSRCBMLPWDLXNQGSEBROCOTMLDFCNHMXPJMADOR\",\"name\":\"Vocabul\\u00e1rio para o HSK 1-1.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Vocabul\\u00e1rio para o HSK 1-1.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:46:45', '2023-09-02 17:46:45', 0, 0, NULL, 0, NULL),
(61, 81, 2, 'Vocabulário para o HSK 2', '[]', '[{\"id\":\"ZGVRVNZHGXBTLUISGPPLSHQPXXMUHNOTVCESETVLGEOHUFJBJA\",\"name\":\"Vocabul\\u00e1rio para o HSK 2-1.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Vocabul\\u00e1rio para o HSK 2-1.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:47:20', '2023-09-02 17:47:20', 0, 0, NULL, 0, NULL),
(62, 81, 2, 'Vocabulário para o HSK 3', '[]', '[{\"id\":\"FYHJNAIXDSFHPQFTHLBIOISONXQTLGTXYGNUZAWALHBSETYSBH\",\"name\":\"Vocabul\\u00e1rio para o HSK 3.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Vocabul\\u00e1rio para o HSK 3.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:48:00', '2023-09-02 17:48:00', 0, 0, NULL, 0, NULL),
(63, 81, 2, 'Partes do corpo humano em chinês', '[]', '[{\"id\":\"IHEFUNOICSJCBYHMXLVUIPHZFAMJZDVBGEGAUHOUMFAZXETJAJ\",\"name\":\"Partes do corpo humano em chin\\u00eas.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Partes do corpo humano em chin\\u00eas.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:48:53', '2023-09-02 17:48:53', 0, 0, NULL, 0, NULL),
(64, 80, 2, '20 frases em chinês que pode usar imediatamente', '[]', '[{\"id\":\"XSKSVOGQNIXMDDHKISDQLJUOGISOKVLXYJNZPMCHJAQVXQDTUU\",\"name\":\"20 frases em chin\\u00eas que pode usar imediatamente.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/20 frases em chin\\u00eas que pode usar imediatamente.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-02 17:50:50', '2023-09-02 17:50:50', 0, 0, NULL, 0, NULL),
(65, 82, 2, 'Inglês para Iniciantes', '[]', '[{\"id\":\"EWQDXTUOFUKLVQOGBXYUFAQIZZWZRPWBBDZTTOMPYKDSXRCQXM\",\"name\":\"Ingl\\u00eas para iniciantes.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Ingl\\u00eas para iniciantes.pdf\",\"type\":\"Document\"}]', 'Inglês para Iniciantes', '2023-09-03 12:47:18', '2023-09-03 12:47:18', 0, 0, NULL, 0, NULL),
(66, 83, 2, 'Frases-mais-usadas-no-ingles', '[]', '[{\"id\":\"PTCZEZKUMXQNYQJWIPGERUGKCLJRHRNNUBEMLAMDVIYVSGLTUK\",\"name\":\"frases-mais-usadas-no-ingles.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/frases-mais-usadas-no-ingles.pdf\",\"type\":\"Document\"}]', 'Frases-mais-usadas-no-ingles', '2023-09-03 13:20:22', '2023-09-03 13:20:22', 0, 0, NULL, 0, NULL),
(67, 83, 2, 'Guia Prático', '[]', '[{\"id\":\"HJGYNFQJDRWJIYIOUIRNNMJGRXOSXMBKBWERMOSHCVEMKIYEUX\",\"name\":\"Guia Pr\\u00e1tico.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Guia Pr\\u00e1tico.pdf\",\"type\":\"Document\"}]', 'Guia Prático', '2023-09-03 13:28:19', '2023-09-03 13:28:19', 0, 0, NULL, 0, NULL),
(68, 84, 2, 'Vocabulário', '[]', '[{\"id\":\"UDYVQPRPWKQUUHQIUVRGHRIUPVGYULKLUXQHGZFJCVFWWEQVDK\",\"name\":\"Vocabul\\u00e1rio.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Vocabul\\u00e1rio.pdf\",\"type\":\"Document\"}]', 'Vocabulário', '2023-09-03 13:57:50', '2023-09-03 13:57:50', 0, 0, NULL, 0, NULL),
(69, 84, 2, 'Nomes dos Animais.pdf', '[]', '[{\"id\":\"YQOJOCZFFEKYMTYRNKXHSJZDKXVFOPYQWAUWVTOFLGZFUXHXPW\",\"name\":\"Nomes dos Animais.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Nomes dos Animais.pdf\",\"type\":\"Document\"}]', 'Nomes dos Animais.pdf', '2023-09-03 13:57:50', '2023-09-03 13:57:50', 0, 0, NULL, 0, NULL),
(70, 84, 2, 'Expressões, palavras e frases comuns', '[]', '[{\"id\":\"OKXIRQNFABLOZVBDMNLYHMCFOZLWEOMBITBITQICZJPHOSSZNN\",\"name\":\"Express\\u00f5es, palavras e frases comuns.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Express\\u00f5es, palavras e frases comuns.pdf\",\"type\":\"Document\"}]', 'Expressões, palavras e frases comuns', '2023-09-03 13:57:50', '2023-09-03 13:57:50', 0, 0, NULL, 0, NULL),
(71, 84, 2, 'Guia', '[]', '[{\"id\":\"MUKMTJPXFGOLIJCNNTXMDMSHWFSUVZCDLPKVITLLCMGONAPMXN\",\"name\":\"Guia.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Guia.pdf\",\"type\":\"Document\"}]', 'Guia', '2023-09-03 13:57:50', '2023-09-03 13:57:50', 0, 0, NULL, 0, NULL),
(72, 85, 2, 'Verbos em presente indicativo', '[]', '[{\"id\":\"HXQTJLGBPCZMQJBERZAZMQPMYEJNYEOKAQNMSFEJPRRSSNZVZS\",\"name\":\"Verbos em presente indicativo.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Verbos em presente indicativo.pdf\",\"type\":\"Document\"}]', 'Verbos em presente indicativo', '2023-09-03 16:00:20', '2023-09-03 16:00:20', 0, 0, NULL, 0, NULL),
(73, 85, 2, 'Curso Básico', '[]', '[{\"id\":\"QCJKTAHHVNOLSQMFKWABNWCSRIFHKBRNTTPZTOMBSENQASQGRU\",\"name\":\"Curso B\\u00e1sico.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Curso B\\u00e1sico.pdf\",\"type\":\"Document\"}]', 'Curso Básico', '2023-09-03 16:00:20', '2023-09-03 16:00:20', 0, 0, NULL, 0, NULL),
(74, 85, 2, 'Gramática', '[]', '[{\"id\":\"FIVIWLGBVXGZBKCXQMLQLHRUMHBZXCTOPSCBPEZHPYFRCOTGFU\",\"name\":\"Gram\\u00e1tica.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Gram\\u00e1tica.pdf\",\"type\":\"Document\"}]', 'Gramática', '2023-09-03 16:00:20', '2023-09-03 16:00:20', 0, 0, NULL, 0, NULL),
(75, 78, 2, 'Excel', '[]', '[{\"id\":\"FHSBIEYEJUJXHERCERPCJZYLHCVSYQOIKMVKAKHJHFNNTSJNSE\",\"name\":\"EXCEL-AVAN\\u00c7ADO_Makemoney.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/EXCEL-AVAN\\u00c7ADO_Makemoney.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-12 16:03:25', '2023-09-12 16:03:25', 0, 0, NULL, 0, NULL),
(76, 86, 2, 'Meu primeiro livro de Xadrez', '[]', '[{\"id\":\"RTGBOBLNMYEHGDSTYAOYDZGTANBQBFBIONJGFCNDVVOBUGUTWC\",\"name\":\"Meu_primeiro_livro_de_xadrez.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Meu_primeiro_livro_de_xadrez.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-15 14:54:40', '2023-09-15 14:54:40', 0, 0, NULL, 0, NULL),
(77, 86, 2, 'Xadrez-Vitorioso-Tticas', '[]', '[{\"id\":\"XWBJXKEEHTCOFZBFDUIYBJPDZSLHFXMIWBWZRSPWCUBHQFBPMD\",\"name\":\"Xadrez-Vitorioso-Tticas.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Xadrez-Vitorioso-Tticas.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-15 15:09:20', '2023-09-15 15:09:20', 0, 0, NULL, 0, NULL),
(78, 87, 2, 'RUBIK 1', '[]', '[{\"id\":\"VELVFOCEOCQLBOYRHLOGGPNFGJGMJZIELYYECLHFIHPETEKOFF\",\"name\":\"RUBIK 1.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 1.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 09:49:29', '2023-09-22 09:49:29', 0, 0, NULL, 0, NULL),
(79, 74, 2, 'Manual para Jovens Sonhadores', '[]', '[{\"id\":\"UCFCSTLGUHPHOMKZGQRXHVSCVKEMQYAKQHAJCTUBTBRGXNKCGL\",\"name\":\"Manual para Jovens Sonhadores-Makemoney.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Manual para Jovens Sonhadores-Makemoney.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 13:45:52', '2023-09-22 13:45:52', 0, 0, NULL, 0, NULL),
(80, 74, 2, 'Modelo de Negócios Canvas', '[]', '[{\"id\":\"PFFNKZRJMVSFIRSSLPKIGWKPZBCBOEBKIQGSPFXKLKTVFNNDXX\",\"name\":\"Modelo de Neg\\u00f3cios Canvas.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/Modelo de Neg\\u00f3cios Canvas.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:02:40', '2023-09-22 14:02:40', 0, 0, NULL, 0, NULL),
(81, 87, 2, 'RUBIK 2', '[]', '[{\"id\":\"RMVDPEMITXMHIMOECFCGTNVRKKTFUGGBBFYAIVHWLZLDEXRIYT\",\"name\":\"RUBIK 2.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 2.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:03:52', '2023-09-22 14:03:52', 0, 0, NULL, 0, NULL),
(82, 87, 2, 'RUBIK 3', '[]', '[{\"id\":\"GSBXALBUSQSHAJUUNUJGYCWLAVKSFLNUNQDJJQBUSIVJENJSJK\",\"name\":\"RUBIK 3.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 3.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:05:41', '2023-09-22 14:05:41', 0, 0, NULL, 0, NULL),
(83, 87, 2, 'RUBIK 4', '[]', '[{\"id\":\"SCLCLFWKPTGKNCGNFJAKOAGKVMIVMHSNNNSNUBOOBTEPZHFCEU\",\"name\":\"RUBIK 4.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 4.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:06:06', '2023-09-22 14:06:06', 0, 0, NULL, 0, NULL),
(84, 87, 2, 'RUBIK 4x4x4-guide-v2', '[]', '[{\"id\":\"KAKLVLLLXLWMJFZGUZZWWBWSEITAZWUUBCZLUTMFKZJNZUYSQJ\",\"name\":\"RUBIK 4x4x4-guide-v2.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 4x4x4-guide-v2.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:08:09', '2023-09-22 14:08:09', 0, 0, NULL, 0, NULL),
(85, 87, 2, 'RUBIK 5', '[]', '[{\"id\":\"YBWHRABYFFCBKDGVCSTDOHVWIYJTNRQHUJBEMYMUBKGZPRFEZK\",\"name\":\"RUBIK 5.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/RUBIK 5.pdf\",\"type\":\"Document\"}]', NULL, '2023-09-22 14:08:09', '2023-09-22 14:08:09', 0, 0, NULL, 0, NULL),
(101, 74, 1, 'Aula 01 - Introdução', '[]', '[{\"id\":\"UTWUUHXXIUGAROGIUDKCIKNYJDOYRQZECCPQTWZDCCIDJTLXOR\",\"name\":\"Curso de Empreendedorismo - Introdu\\u00e7\\u00e3o - 01 - Aula 01.mp3\",\"url\":\"\\/uploads\\/treasures\\/package\\/Curso de Empreendedorismo - Introdu\\u00e7\\u00e3o - 01 - Aula 01.mp3\",\"type\":\"Audio\"}]', NULL, '2023-10-31 20:31:38', '2023-11-22 13:26:25', 0, 0, NULL, 0, NULL),
(105, 88, 4, 'Aula 1', '[]', '[{\"id\":\"HCGRCSXCSTTRQKWBQWOBCDZCBZWHNKAHYYPNUVQMCLAUFNOHMV\",\"name\":\"Aula 1 - Introdu\\u00e7\\u00e3o.mp4\",\"url\":\"\\/uploads\\/treasures\\/package\\/Aula 1 - Introdu\\u00e7\\u00e3o.mp4\",\"type\":\"video\"}]', 'Introdução', '2023-11-02 21:03:44', '2023-11-02 21:03:44', 1, 0, NULL, 0, NULL),
(106, 89, 4, 'Aula 01', '[]', '[{\"id\":\"AHVCKTRTVNNEMTWUNVXPKPWASREHFRZMWBINJZYMHLMJSRQQXL\",\"name\":\"Aula 01 - Curso Educa\\u00e7\\u00e3o Financeira - O que \\u00e9 Educa\\u00e7\\u00e3o Financeira.mp4\",\"url\":\"\\/uploads\\/treasures\\/package\\/Aula 01 - Curso Educa\\u00e7\\u00e3o Financeira - O que \\u00e9 Educa\\u00e7\\u00e3o Financeira.mp4\",\"type\":\"video\"}]', 'O que é Educação Financeira.', '2023-11-02 21:13:19', '2023-11-02 21:13:19', 0, 0, NULL, 0, NULL),
(116, 88, 4, 'Aula 2', '[]', '[]', 'Aula 2', '2023-11-15 21:08:11', '2023-11-15 21:08:11', 2, 1, 'https://drive.google.com/file/d/1_r2imo-lE-vqreq0Co_DGmCBqlsRhRu6/preview', 0, NULL),
(118, 88, 4, 'Aula 3', '[]', '[]', 'Aula 3', '2023-11-18 13:14:42', '2023-11-18 13:14:42', 3, 1, 'https://drive.google.com/file/d/1K-Ary-Zwp2ITEsKGpGuKU784lTKojHkm/preview', 0, NULL),
(119, 88, 4, 'Aula 4', '[]', '[]', 'Aula 4', '2023-11-18 13:18:27', '2023-11-18 13:18:27', 4, 1, 'https://drive.google.com/file/d/1dtgu-Md2SASmqhzjokBXwxaZ9TbgEbW_/preview', 0, NULL),
(120, 88, 4, 'Aula 5', '[]', '[]', 'Aula 5', '2023-11-18 13:21:06', '2023-11-18 13:21:06', 5, 1, 'https://drive.google.com/file/d/1WY1ab3tEPr8xBZhl8iNbL-AVZGY5ZU3s/preview', 0, NULL),
(124, 88, 4, 'Aula 6', '[]', '[]', 'Aula 6', '2023-11-18 13:33:17', '2023-11-18 13:33:17', 6, 1, 'https://drive.google.com/file/d/1ZU3Ki-1FUF35Jg6gcz4RDlZgrcMTdUUn/preview', 0, NULL),
(125, 88, 4, 'Aula 7', '[]', '[]', 'Aula 7', '2023-11-18 13:35:25', '2023-11-18 13:35:25', 7, 1, 'https://drive.google.com/file/d/1coah4YdI6KrZCBooL_ura0dlqWqfKlPj/preview', 0, NULL),
(126, 88, 4, 'Aula 8', '[]', '[]', 'Aula 8', '2023-11-18 13:37:45', '2023-11-18 13:37:45', 8, 1, 'https://drive.google.com/file/d/1VG-7jF9ZgVxf-MTNRfrEdQU0kUGH_At9/preview', 0, NULL),
(127, 88, 4, 'Aula 9', '[]', '[]', 'Aula 9', '2023-11-18 13:39:57', '2023-11-18 13:39:57', 9, 1, 'https://drive.google.com/file/d/1hxFN2a1P45bI4LT7gCk7ar-6_WcMYriK/preview', 0, NULL),
(128, 88, 4, 'Aula 10', '[]', '[]', 'Aula 10', '2023-11-18 13:42:30', '2023-11-18 13:42:30', 10, 1, 'https://drive.google.com/file/d/1zluC_j6CguhfSgSnrhG5D8KGqXxN5NGf/preview', 0, NULL),
(129, 88, 4, 'Aula 11', '[]', '[]', 'Aula 11', '2023-11-18 13:44:54', '2023-11-18 13:44:54', 11, 1, 'https://drive.google.com/file/d/1SwtQRpMNmjJP4wB6EJYElhvdZGK8cSeX/preview', 0, NULL),
(131, 89, 4, 'Aula 02', '[]', '[]', 'Teste Sua Inteligência.', '2023-11-18 13:57:43', '2023-11-18 13:57:43', 0, 1, 'https://drive.google.com/file/d/12KojoOSumrifC9O397Sz3tBAG1IMrUz2/preview', 0, NULL),
(132, 89, 4, 'Aula 03', '[]', '[]', 'Planejando Sua Vida Financeira.', '2023-11-18 14:00:21', '2023-11-18 14:00:21', 0, 1, 'https://drive.google.com/file/d/1HnF3mRwqQJL8r5Inm60TVVAm5AbvSt0b/preview', 0, NULL),
(133, 89, 4, 'Aula 04', '[]', '[]', 'Como Está Sua Saúde financeira.', '2023-11-18 14:02:30', '2023-11-18 14:02:30', 0, 1, 'https://drive.google.com/file/d/1bnjezn_RJBxjunDbQSHmC1T35V9GXWDs/preview', 0, NULL),
(134, 89, 4, 'Aula 05', '[]', '[]', 'Planejamento Financeiro.', '2023-11-18 14:04:33', '2023-11-18 14:04:33', 0, 1, 'https://drive.google.com/file/d/1GZAHel7TFThq-Z3K4DVCKXJiWVYyyzu3/preview', 0, NULL),
(135, 89, 4, 'Aula 06', '[]', '[]', 'Sobre Emprestimos e Financiamentos.', '2023-11-18 14:06:15', '2023-11-18 14:06:15', 0, 1, 'https://drive.google.com/file/d/1MPlG57WDi2QJYNNaifX61TfkKEYZFS88/preview', 0, NULL),
(136, 90, 4, 'Aula-1', '[]', '[]', 'Aula-1', '2023-11-18 14:09:40', '2023-11-18 14:09:40', 0, 1, 'https://drive.google.com/file/d/19KScKJ9DbYbi3pzYps9IEZFhfZG0la0K/preview', 0, NULL),
(137, 90, 4, 'Aula-2', '[]', '[]', 'Aula-2', '2023-11-18 14:12:05', '2023-11-18 14:12:05', 0, 1, 'https://drive.google.com/file/d/1PtlQCjQ2Nhc4racugEst1_4A5XklQY06/preview', 0, NULL),
(138, 90, 4, 'Aula-3', '[]', '[]', 'Aula-3', '2023-11-18 14:13:33', '2023-11-18 14:13:33', 0, 1, 'https://drive.google.com/file/d/1AxLFeyBlnngn1Py58scIWja-_GM4xM-d/preview', 0, NULL),
(139, 90, 4, 'Aula-4', '[]', '[]', 'Aula-4', '2023-11-18 14:15:37', '2023-11-18 14:15:37', 0, 1, 'https://drive.google.com/file/d/12bupAvxd-5O78_6N5ZWbBZQb-DjKfWFY/preview', 0, NULL),
(140, 82, 4, 'Aula - 01', '[]', '[]', 'Cumprimentos, Apresentações e Despedidas', '2023-11-18 19:17:01', '2023-11-18 19:17:01', 0, 1, 'https://drive.google.com/file/d/1qfGXNEv7lM5bDX-zd2sIe2WdaceBgxeB/preview', 0, NULL),
(141, 82, 4, 'Aula-02', '[]', '[]', 'Idade, Nacionalidade e Ocupação.', '2023-11-18 19:22:12', '2023-11-18 19:22:12', 0, 1, 'https://drive.google.com/file/d/1xznFATjumJuIx7u3X9v6ky-Tioy4-jPg/preview', 0, NULL),
(142, 82, 4, 'Aula - 03', '[]', '[]', 'A Estrutura Básica da Língua Inglesa.', '2023-11-18 19:28:05', '2023-11-18 19:28:05', 0, 1, 'https://drive.google.com/file/d/1L1Xgp0E7XKK6VuAPb6Hyj69-4RjnHjXX/preview', 0, NULL),
(143, 82, 4, 'Aula - 04', '[]', '[]', 'Números em inglês de 0 à 100.', '2023-11-18 19:32:50', '2023-11-18 19:32:50', 0, 1, 'https://drive.google.com/file/d/1zM4pxAHwSEUtdIo30ezIaUudtzWgmVqs/preview', 0, NULL),
(144, 82, 4, 'Aula - 05', '[]', '[]', 'Hobbies e Favoritos.', '2023-11-18 19:35:13', '2023-11-18 19:35:13', 0, 1, 'https://drive.google.com/file/d/1vuHBQ8YsgD7E0h-f_WthaOTmo4S1y7-7/preview', 0, NULL),
(145, 82, 4, 'Aula - 06', '[]', '[]', 'Small Talk.', '2023-11-18 19:37:25', '2023-11-18 19:37:25', 0, 1, 'https://drive.google.com/file/d/1Be23CpF02VFk9ybcq0vvqXrRgkh7w9sR/preview', 0, NULL),
(146, 82, 4, 'Aula - 07', '[]', '[]', 'Family Tree.', '2023-11-18 19:43:11', '2023-11-18 19:43:11', 0, 1, 'https://drive.google.com/file/d/1ONSm41uA0_eAxDP6acyimaw5JlrUF3AS/preview', 0, NULL),
(147, 81, 4, 'Aula_1', '[]', '[]', 'Introdução ao Básico do Chinês Mandarim.', '2023-11-18 20:37:49', '2023-11-18 20:37:49', 0, 1, 'https://drive.google.com/file/d/13gVxrAI29lLEjODmbckkAIj6IpQf_Zmp/preview', 0, NULL),
(148, 81, 4, 'Aula_2', '[]', '[]', 'O Melhor Método para Aprender Ideogramas.', '2023-11-18 20:42:25', '2023-11-18 20:42:25', 0, 1, 'https://drive.google.com/file/d/1Ooeqf3AcBuSFyIxmwbkJg2rqR8wOS1nS/preview', 0, NULL),
(149, 81, 4, 'Aula_3', '[]', '[]', 'A Melhor Aula de Ideogramas Fonéticos.', '2023-11-18 20:45:13', '2023-11-18 20:45:13', 0, 1, 'https://drive.google.com/file/d/1R4PH-rvFZeTKgQT89KDuVLDkqbUZ2MYN/preview', 0, NULL),
(150, 81, 4, 'Aula_4', '[]', '[]', 'Como São Formadas as Palavras.', '2023-11-18 20:47:19', '2023-11-18 20:47:19', 0, 1, 'https://drive.google.com/file/d/1o0t7GajJNFgRwr2dL1qOAq9syO_Jj81h/preview', 0, NULL),
(151, 81, 4, 'Aula_5', '[]', '[]', 'Aprendendo os 4 Tons Definitivamente.', '2023-11-18 20:49:40', '2023-11-18 20:49:40', 0, 1, 'https://drive.google.com/file/d/1ik4iSO5dFICmSdyI9oKYyEebDCYV6RyB/preview', 0, NULL),
(152, 81, 4, 'Aula_6', '[]', '[]', 'Como Treinar os Tons do Mandarim.', '2023-11-19 11:22:44', '2023-11-19 11:22:44', 0, 1, 'https://drive.google.com/file/d/17VId1iUBhNagDcVutR14Sb_VW3HLXDwm/preview', 0, NULL),
(153, 85, 4, 'Aula_01', '[]', '[]', 'Aula_01', '2023-11-19 11:32:43', '2023-11-19 11:32:43', 0, 1, 'https://drive.google.com/file/d/1cGhBF7_o2aIosA2eEP4-24PAwJICSlK1/preview', 0, NULL),
(154, 85, 4, 'Aula_02', '[]', '[]', 'Aula_02', '2023-11-19 11:36:19', '2023-11-19 11:36:19', 0, 1, 'https://drive.google.com/file/d/1HWVW4jacP6IKZvJfZn2s1eeQPoJq2n92/preview', 0, NULL),
(155, 85, 4, 'Aula_03', '[]', '[]', 'Aula_03', '2023-11-19 11:38:11', '2023-11-19 11:38:11', 0, 1, 'https://drive.google.com/file/d/1Z1h4b-IcnYnPoY8p4SbqNQFVLhZ8ZqB2/preview', 0, NULL),
(156, 85, 4, 'Aula_04', '[]', '[]', 'Aula_04', '2023-11-19 11:39:48', '2023-11-19 11:39:48', 0, 1, 'https://drive.google.com/file/d/1T4dP72OdcWVDDMHSd-xIxMQrc6xH9rjH/preview', 0, NULL),
(157, 85, 4, 'Aula_05', '[]', '[]', 'Aula_05', '2023-11-19 11:41:41', '2023-11-19 11:41:41', 0, 1, 'https://drive.google.com/file/d/1vhri3WaUKA1MbpHvr_bsdxpytzA8ZDFu/preview', 0, NULL),
(158, 85, 4, 'Aula_06', '[]', '[]', 'Aula_06', '2023-11-19 11:46:10', '2023-11-19 11:46:10', 0, 1, 'https://drive.google.com/file/d/1_Bm6qvsdU8DEaKsbPvSipTuAyEBLvxp-/preview', 0, NULL),
(159, 91, 4, 'Aula--1', '[]', '[]', 'Aula--1', '2023-11-19 12:00:57', '2023-11-19 12:00:57', 0, 1, 'https://drive.google.com/file/d/1n_X96gdaUSr7LNPU4OnrH8U3o0XG9DKE/preview', 0, NULL),
(160, 91, 4, 'Aula--2', '[]', '[]', 'Aula--2', '2023-11-19 12:02:46', '2023-11-19 12:02:46', 0, 1, 'https://drive.google.com/file/d/1XPLGQu1I6b7JoomQbKuX2j3M1kcDX6cN/preview', 0, NULL),
(161, 91, 4, 'Aula--3', '[]', '[]', 'Aula--3', '2023-11-19 12:05:17', '2023-11-19 12:05:17', 0, 1, 'https://drive.google.com/file/d/1NzOg0EMl1FDIPeajQqr7Jwnn4e84h4PY/preview', 0, NULL),
(162, 91, 4, 'Aula--4', '[]', '[]', 'Aula--4', '2023-11-19 12:08:02', '2023-11-19 12:08:02', 0, 1, 'https://drive.google.com/file/d/10eKik6IQbkgn1pxLTkHV9rLxZJ76EIyi/preview', 0, NULL),
(163, 91, 4, 'Aula--5', '[]', '[]', 'Aula--5', '2023-11-19 12:09:49', '2023-11-19 12:09:49', 0, 1, 'https://drive.google.com/file/d/1VMx3eIB350DoZolWOhb8keiV1xSjFs03/preview', 0, NULL),
(164, 91, 4, 'Aula--6', '[]', '[]', 'Aula--6', '2023-11-19 12:17:20', '2023-11-19 12:17:20', 0, 1, 'https://drive.google.com/file/d/1VZNDLypgH7T-juYbdqxFXDyC7GFD3-TS/preview', 0, NULL),
(165, 91, 4, 'Aula--7', '[]', '[]', 'Aula--7', '2023-11-19 12:23:08', '2023-11-19 12:23:08', 0, 1, 'https://drive.google.com/file/d/1XeeJLPqXKqs-nYjghin7b8e3yJf0CmLi/preview', 0, NULL),
(166, 91, 4, 'Aula--8', '[]', '[]', 'Aula--8', '2023-11-19 12:25:16', '2023-11-19 12:25:16', 0, 1, 'https://drive.google.com/file/d/1DorlwI0sm4XCgswpSPfyJCUkjaK0bQhZ/preview', 0, NULL),
(167, 91, 4, 'Aula--9', '[]', '[]', 'Aula--9', '2023-11-19 12:27:34', '2023-11-19 12:27:34', 0, 1, 'https://drive.google.com/file/d/1HV7IkxqallCUIPaCatldNlftGNTrRRga/preview', 0, NULL),
(168, 91, 4, 'Aula--10', '[]', '[]', 'Aula--10', '2023-11-19 12:29:04', '2023-11-19 12:29:04', 0, 1, 'https://drive.google.com/file/d/1Lgro9bLewxwR530imhwhYFF0oPbvpxVB/preview', 0, NULL),
(169, 91, 4, 'Aula--11', '[]', '[]', 'Aula--11', '2023-11-19 12:30:47', '2023-11-19 12:30:47', 0, 1, 'https://drive.google.com/file/d/1xk5PG1izBnml_sB1pPa5zbfjGjhRJRZC/preview', 0, NULL),
(170, 91, 4, 'Aula--12', '[]', '[]', 'Aula-12', '2023-11-19 12:33:01', '2023-11-19 12:33:01', 0, 1, 'https://drive.google.com/file/d/1c_Etg6o9J2O9t7oO7qKONBq4412LKPNp/preview', 0, NULL),
(171, 91, 4, 'Aula--13', '[]', '[]', 'Aula--13', '2023-11-19 12:34:46', '2023-11-19 12:34:46', 0, 1, 'https://drive.google.com/file/d/1eC6mYNLfoZuWvBGxjMsvbaJx0cLdNaCo/preview', 0, NULL),
(172, 91, 4, 'Aula--14', '[]', '[]', 'Aula--14', '2023-11-19 12:36:01', '2023-11-19 12:36:01', 0, 1, 'https://drive.google.com/file/d/1O9rPXjXM_Y_L_CoIMQ7jbkjp3yvPTgiF/preview', 0, NULL),
(173, 91, 4, 'Aula--15', '[]', '[]', 'Aula--15', '2023-11-19 12:37:20', '2023-11-19 12:37:20', 0, 1, 'https://drive.google.com/file/d/1jN0Rop3EixCCtXUWlqBWEOvpt9Wnxf9d/preview', 0, NULL),
(176, 74, 1, 'Aula 02 - Introdução 2', '[]', '[]', NULL, '2023-11-22 13:37:20', '2023-11-22 13:37:20', 12, 1, 'https://drive.google.com/file/d/1aVrD2CoWReOlmoTjNX8beUYECm-YAkkY/view', 0, NULL),
(177, 74, 4, 'Aula 01 - Introdução 01 -', '[]', '[]', NULL, '2023-11-22 15:16:51', '2023-11-22 15:16:51', 13, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kPgFfzP7REQ?si=jwuRzy9uuDwwV3c3&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 0, NULL),
(184, 92, 4, 'Aula1 - Técnicas de Vendas, Estratégia para Equipe de Vendas', '[]', '[]', NULL, '2023-12-04 13:42:29', '2023-12-04 13:42:29', 0, 1, 'https://drive.google.com/file/d/1Jc9UCIK65NXgX1wuuVJ7-LnlqkH0PNnr/preview', 0, NULL),
(185, 84, 4, 'Aula 1 - Coordonnées', '[]', '[]', 'Aula 1- Coordonnées', '2023-12-25 18:46:42', '2023-12-25 18:46:42', 14, 1, 'https://drive.google.com/file/d/1pWC-C82r2N4AJ2lCWB2QiXnMtpyi23Rx/preview', 0, NULL),
(186, 84, 4, 'Aula 2 - Faire Des Achats', '[]', '[]', 'Aula 2 - Faire Des Achats', '2023-12-25 18:56:00', '2023-12-25 18:56:00', 15, 1, 'https://drive.google.com/file/d/1M9xReEl1BnAINF7spRSk2vQMrttjaI7E/preview', 0, NULL),
(187, 84, 4, 'Aula 3 - L\'Alphabet', '[]', '[]', 'Aula 3 - L\'Alphabet', '2023-12-25 18:58:39', '2023-12-25 18:58:39', 16, 1, 'https://drive.google.com/file/d/1ONDd5yLbYI7RbgGvXL0ZwlSBi4QkcrOY/preview', 0, NULL),
(188, 84, 4, 'Aula 4 - Les Jours de la Semaine et Les Mois de L\'Année', '[]', '[]', 'Aula 4 - Les Jours de la Semaine et Les Mois de L\'Année', '2023-12-25 19:00:50', '2023-12-25 19:00:50', 17, 1, 'https://drive.google.com/file/d/1yxt-HPVnTySrkuWiBuj72nA6iNhswa0Z/preview', 0, NULL),
(189, 84, 4, 'Aula 5 - Les Nombres', '[]', '[]', 'Aula 5 - Les Nombres', '2023-12-25 19:03:28', '2023-12-25 19:03:28', 18, 1, 'https://drive.google.com/file/d/1qn4wK4zu9U0eWIL21TH5Mw-ZDZleMEp5/preview', 0, NULL),
(190, 84, 4, 'Aula 6 - Les Verbes Être et Avoir', '[]', '[]', 'Aula 6 - Les Verbes Être et Avoir', '2023-12-25 19:05:52', '2023-12-25 19:05:52', 19, 1, 'https://drive.google.com/file/d/12cItQaYHu48tLCtqWK7pmuVHJuJAffV9/preview', 0, NULL),
(191, 84, 4, 'Aula 7- Se Présenter', '[]', '[]', 'Aula 7- Se Présenter', '2023-12-25 19:08:05', '2023-12-25 19:08:05', 20, 1, 'https://drive.google.com/file/d/1JBIrqYmiy2ba943Pn2xo-79GIoxaY9MR/preview', 0, NULL),
(192, 93, 4, 'Aula 1- Introdução ao Curso', '[]', '[]', 'Aula 1- Introdução ao Curso de Contabilidade Geral Básica', '2023-12-25 19:15:48', '2023-12-25 19:15:48', 0, 1, 'https://drive.google.com/file/d/1wJUEwIv_WhWKPCPBDe7z-wOUIO8Z0KNr/preview', 0, NULL),
(193, 93, 4, 'Aula 2 - Direito em Contabilidade', '[]', '[]', 'Aula 2 - Direito em Contabilidade', '2023-12-25 19:22:01', '2023-12-25 19:22:01', 0, 1, 'https://drive.google.com/file/d/1GuqDnV-GHYdgN9iMdwFLr01DnwPweD1y/preview', 0, NULL),
(194, 93, 4, 'Aula 3 - Livros Contábeis', '[]', '[]', 'Aula 3 - Livros Contábeis', '2023-12-25 19:26:24', '2023-12-25 19:26:24', 0, 1, 'https://drive.google.com/file/d/147iwNJ7KmiLr70C9JHE4VCndx3WkiLoC/preview', 0, NULL),
(195, 93, 4, 'Aula 4- Pagamentos', '[]', '[]', 'Aula 4- Pagamentos', '2023-12-25 19:29:30', '2023-12-25 19:29:30', 0, 1, 'https://drive.google.com/file/d/1YVocwIqNGGBP29EjXb3svQnHSA5t6f2k/preview', 0, NULL),
(196, 93, 4, 'Aula 5- Balanço', '[]', '[]', 'Aula 5- Balanço', '2023-12-25 19:34:39', '2023-12-25 19:34:39', 0, 1, 'https://drive.google.com/file/d/1fPWLDuSJLZAmP33Eko2mds4AxZsPpSsW/preview', 0, NULL),
(197, 93, 4, 'Aula 6 - Obrigações com Terceiros', '[]', '[]', 'Aula 6 - Obrigações com Terceiros', '2023-12-25 19:37:21', '2023-12-25 19:37:21', 0, 1, 'https://drive.google.com/file/d/1YfSScsiboCakeSrexLn7xZMD1cmsCSjI/preview', 0, NULL),
(198, 93, 4, 'Aula 7 - Patente', '[]', '[]', 'Aula 7 - Patente', '2023-12-25 19:39:57', '2023-12-25 19:39:57', 0, 1, 'https://drive.google.com/file/d/1RAssQnln2FVTij01wSG0hecKRRZxxKna/preview', 0, NULL),
(199, 93, 4, 'Aula 8 - Lançamentos', '[]', '[]', 'Aula 8 - Lançamentos', '2023-12-25 19:42:06', '2023-12-25 19:42:06', 0, 1, 'https://drive.google.com/file/d/13sPwJW0WwXmx7yACEQigzhpcrOmz-SOg/preview', 0, NULL),
(200, 94, 4, 'Aula 1 - O Processo de Marketing', '[]', '[]', 'O Processo de Marketing - Marketing Digital', '2023-12-26 21:42:52', '2023-12-26 21:42:52', 0, 1, 'https://drive.google.com/file/d/1vFw4OXn1ITKVVVjGSggDAYR2xt3LYtGX/preview', 0, NULL),
(201, 94, 4, 'Aula 2- Necessidade, Desejo e Demanda', '[]', '[]', 'Necessidade, Desejo e Demanda', '2023-12-26 21:51:17', '2023-12-26 21:51:17', 0, 1, 'https://drive.google.com/file/d/1kTXJtfHTWDSbqcLZ5nFDLH7QmJCAa09K/preview', 0, NULL),
(202, 94, 4, 'Aula 3 - Produtos, Serviços e Experiências', '[]', '[]', 'Produtos, Serviços e Experiências', '2023-12-26 21:56:44', '2023-12-26 21:56:44', 0, 1, 'https://drive.google.com/file/d/1tU5MqQRJtH-EjmUrsl11qLYrODbUEvDA/preview', 0, NULL),
(203, 94, 4, 'Aula 4 - Trocas, Relacionamentos e Mercados', '[]', '[]', 'Trocas, Relacionamentos e Mercados', '2023-12-26 21:58:32', '2023-12-26 21:58:32', 0, 1, 'https://drive.google.com/file/d/1vXpbQ1S-mNZHL51fDVe3pkeHU_hn3jIq/preview', 0, NULL),
(204, 94, 4, 'Aula 5 - Estratégia, matriz SWOT e UVP', '[]', '[]', 'Estratégia, Matriz SWOT e UVP', '2023-12-26 22:02:27', '2023-12-26 22:02:27', 0, 1, 'https://drive.google.com/file/d/1B7HibzP2-90hiQxR8vYok4wGJwB2cDOK/preview', 0, NULL),
(205, 94, 4, 'Aula 6 - Os 4P\'s do Marketing', '[]', '[]', 'Os 4P\'s do Marketing.', '2023-12-26 22:05:06', '2023-12-26 22:05:06', 0, 1, 'https://drive.google.com/file/d/1IiHhKnlOtMDGZGvMkKAnv8bMp6ZnFt57/preview', 0, NULL),
(206, 93, 4, 'Aula 9 - Resolução de Exercícios', '[]', '[]', 'Resolução de Exercícios', '2023-12-26 22:12:13', '2023-12-26 22:12:13', 0, 1, 'https://drive.google.com/file/d/1pzseugy0PhM3LeK3D6FvERNGQF2pKZZ0/preview', 0, NULL),
(207, 93, 4, 'Aula 10 - Resolução de Exercícios', '[]', '[]', 'Continuação...', '2023-12-26 22:15:50', '2023-12-26 22:15:50', 0, 1, 'https://drive.google.com/file/d/1xjtJyolQVQDv0mpWW4t5BcDLIxmDkzY5/preview', 0, NULL),
(208, 93, 4, 'Aula 11 - Resolucão de Exercícios', '[]', '[]', 'Continuação...', '2023-12-26 22:18:12', '2023-12-26 22:18:12', 0, 1, 'https://drive.google.com/file/d/1r4Yz26ViQ1aPySBJlU13BZ6mBYKbITUE/preview', 0, NULL),
(209, 93, 4, 'Aula 12 - Resolução de Exercícios', '[]', '[]', 'Continuação...', '2023-12-26 22:20:31', '2023-12-26 22:20:31', 0, 1, 'https://drive.google.com/file/d/1xiEWsBbgagaY_LD_BZBbEmXSP8oz1yQV/preview', 0, NULL),
(210, 95, 4, 'Aula_1-', '[]', '[]', NULL, '2023-12-27 21:39:00', '2023-12-27 21:39:00', 0, 1, 'https://drive.google.com/file/d/1qP15T7-l64LrKhM_K_4BAQighR7zK_FR/preview', 0, NULL),
(211, 95, 4, 'Aula_2- Lentes', '[]', '[]', 'Lentes', '2023-12-27 21:40:57', '2023-12-27 21:40:57', 0, 1, 'https://drive.google.com/file/d/1WBpxPIQrxQS8wDW6FS2fWNUsIxY3eqEh/preview', 0, NULL),
(213, 95, 4, 'Aula_3-Técnica Fotográfica', '[]', '[]', 'Técnica Fotográfica na Prática.', '2023-12-27 21:48:25', '2023-12-27 21:48:25', 0, 1, 'https://drive.google.com/file/d/1OPn4voTQCRL2J7TWLKfamWugTK_-FHCh/preview', 0, NULL),
(214, 95, 4, 'Aula_4- Efeitos de Optiradores', '[]', '[]', 'Efeitos de Optiradores', '2023-12-27 21:51:31', '2023-12-27 21:51:31', 0, 1, 'https://drive.google.com/file/d/1f1sWMLwhPKW3jELwkqrBtx-aa23Ei5zr/preview', 0, NULL),
(215, 95, 4, 'Aula_5- Domínio da Luz', '[]', '[]', 'Domínio da Luz', '2023-12-27 21:54:45', '2023-12-27 21:54:45', 0, 1, 'https://drive.google.com/file/d/1AKme1VDvUBlHvQWjmW5F8Om7RGRKZD-9/preview', 0, NULL),
(217, 95, 4, 'Aula_6- Prática de Luz', '[]', '[]', 'Prática de Luz', '2023-12-27 21:59:21', '2023-12-27 21:59:21', 0, 1, 'https://drive.google.com/file/d/15QKe5Wvuid9OjyxTj4jIdfnTin2WB3JL/preview', 0, NULL),
(218, 96, 4, 'Aula 1- O que é segurança do Trabalho.', '[]', '[]', 'O que é segurança do Trabalho.', '2024-01-07 16:24:00', '2024-01-07 16:24:00', 0, 1, 'https://drive.google.com/file/d/1-v5uv9MfvUaTVnenhs5-z38m53vkYL9C/preview', 0, NULL),
(219, 96, 4, 'Aula 2 - Normas e Leis', '[]', '[]', 'Aula 2 - Normas e Leis', '2024-01-07 16:32:39', '2024-01-07 16:32:39', 0, 1, 'https://drive.google.com/file/d/142sMNndboOL4UYLMaLCPB1uDK7DNvSLa/preview', 0, NULL),
(220, 96, 4, 'Aula 3 - Direitos e Deveres da Empresa', '[]', '[]', 'Aula 3 - Direitos e Deveres da Empresa', '2024-01-07 16:37:09', '2024-01-07 16:37:09', 0, 1, 'https://drive.google.com/file/d/1sIR1xgPTe_o3XbAulSfR1MQGVOKbsoS4/preview', 0, NULL),
(221, 96, 4, 'Aula 4 -  Direitos e Deveres dos Funcionários', '[]', '[]', 'Aula 4_ Direitos e Deveres dos Funcionários', '2024-01-07 16:44:48', '2024-01-07 16:44:48', 0, 1, 'https://drive.google.com/file/d/1ghVqaU2yW_C8kkkZSmBtzgM_CnyxWskJ/preview', 0, NULL),
(222, 96, 4, 'Aula 5 - Investimentos', '[]', '[]', 'Investimentos', '2024-01-07 16:48:31', '2024-01-07 16:48:31', 0, 1, 'https://drive.google.com/file/d/12iZrUefJmHn9CgCxXs9WxGAyEwKk0Xdv/preview', 0, NULL),
(223, 96, 4, 'Aula 6 - Principais Erros', '[]', '[]', 'Aula 6 - Principais Erros.', '2024-01-07 16:53:06', '2024-01-07 16:53:06', 0, 1, 'https://drive.google.com/file/d/1MUXaYk2Krr8kYk7PR5NHgLLXvftu12vF/preview', 0, NULL),
(224, 97, 4, 'Aula 1 - Introdução', '[]', '[]', 'Introdução', '2024-01-13 13:01:28', '2024-01-13 13:01:28', 0, 1, 'https://drive.google.com/file/d/1ijZfOvLl-g0C1OnXp4-uJJnRlNbDwJgn/preview', 0, NULL),
(225, 97, 4, 'Aula-2- Continuação', '[]', '[]', 'Continuação', '2024-01-13 13:36:12', '2024-01-13 13:36:12', 0, 1, 'https://drive.google.com/file/d/1EMauCy-fRCsmm_Fl434c4P7kGT46-SWg/preview', 0, NULL),
(226, 97, 4, 'Aula 3- Tipos de Liderança', '[]', '[]', 'Tipos de Liderança', '2024-01-13 13:44:21', '2024-01-13 13:44:21', 0, 1, 'https://drive.google.com/file/d/16sXyKNm6A-HUoiRRqz7x28NpJgsPlvr-/preview', 0, NULL),
(227, 97, 4, 'Aula 4 - Gestão de Pessoas', '[]', '[]', 'Gestão de Pessoas.', '2024-01-13 13:53:20', '2024-01-13 13:53:20', 0, 1, 'https://drive.google.com/file/d/17cyFIKUYaTlfFjSmR8f9Dehd9sJTyF_v/preview', 0, NULL),
(228, 97, 4, 'Aula 5 - Equipes de Trabalho ou Trabalho em Equipe.', '[]', '[]', 'Equipes de Trabalho ou Trabalho em Equipe', '2024-01-13 14:01:34', '2024-01-13 14:01:34', 0, 1, 'https://drive.google.com/file/d/18V0ptmBrLOMePlaa12Z7f1dOIiQDwleD/preview', 0, NULL),
(229, 97, 4, 'Aula 6 - Cultura Organizacional', '[]', '[]', 'Aula 6 - Cultura Organizacional', '2024-01-13 14:04:56', '2024-01-13 14:04:56', 0, 1, 'https://drive.google.com/file/d/1CKskN3kdYcHyl4f-pMHoKTqo0xuV7VkS/preview', 0, NULL),
(230, 97, 4, 'Aula 7 - Análise e Descrição de Cargos', '[]', '[]', 'Análise e Descrição de Cargos', '2024-01-13 14:14:46', '2024-01-13 14:14:46', 0, 1, 'https://drive.google.com/file/d/1d8d-z1n9YahlJjTiPwkMKVUnsZdvs5Sv/preview', 0, NULL),
(231, 97, 4, 'Aula 8 - Tipos de Cultura Organizacional', '[]', '[]', 'Tipos de Cultura Organizacional.', '2024-01-13 14:21:22', '2024-01-13 14:21:22', 0, 1, 'https://drive.google.com/file/d/1bBvLfsCnwrlax5EG5Nq-y1tnVPqwtx5_/preview', 0, NULL),
(232, 97, 4, 'Aula 9 - Lideranca e Motivação.', '[]', '[]', 'Lideranca e Motivação.', '2024-01-13 14:27:01', '2024-01-13 14:27:01', 0, 1, 'https://drive.google.com/file/d/1QFJ4eotQIlRchgI1E8Dh8JKFedPzvXoT/preview', 0, NULL),
(233, 98, 4, 'Aula 1 - O que faz o Auxiliar Administrativo.', '[]', '[]', 'O que faz o Auxiliar Administrativo.', '2024-01-13 14:50:42', '2024-01-13 14:50:42', 0, 1, 'https://drive.google.com/file/d/19QX5YAIjOrfxSBVUlDS1qM6QQhdgOgDf/preview', 0, NULL),
(234, 98, 4, 'Aula 2 - Definições Importantes', '[]', '[]', 'Definições Importantes.', '2024-01-13 14:56:15', '2024-01-13 14:56:15', 0, 1, 'https://drive.google.com/file/d/1OW6LdYAkMMYgSrcurvdhMabQUcBXQUrb/view', 0, NULL),
(235, 98, 4, 'AULA 3 - Documentos para Abrir uma Empresa', '[]', '[]', 'Documentos para Abrir uma Empresa', '2024-01-13 15:00:34', '2024-01-13 15:00:34', 0, 1, 'https://drive.google.com/file/d/1dqmbAjjNzpRkEee_Vk4rlYjyejvRZwwA/preview', 0, NULL),
(236, 98, 4, 'AULA 4 - Sectores Dentro de Uma Empresa', '[]', '[]', 'Sectores Dentro de Uma Empresa.', '2024-01-13 15:07:27', '2024-01-13 15:07:27', 0, 1, 'https://drive.google.com/file/d/1YvmdcnfHdxZeWkHFAXof_-n7uStWD3VW/preview', 0, NULL),
(237, 98, 4, 'AULA 5 - Podc e Organograma', '[]', '[]', 'Podc e Organograma.', '2024-01-13 15:10:06', '2024-01-13 15:10:06', 0, 1, 'https://drive.google.com/file/d/1sIETbfPtgMTIdPKRDLj6E6wmfXeXLAfe/preview', 0, NULL),
(238, 98, 4, 'AULA 6 - Fluxograma', '[]', '[]', 'Fluxograma.', '2024-01-13 15:14:06', '2024-01-13 15:14:06', 0, 1, 'https://drive.google.com/file/d/1XAfzrssweFt-NBDbzaF5t8Ch1_qe0Pbz/preview', 0, NULL),
(239, 98, 4, 'AULA 7 - CRONOGRAMA', '[]', '[]', 'CRONOGRAMA', '2024-01-13 15:17:58', '2024-01-13 15:17:58', 0, 1, 'https://drive.google.com/file/d/1LDCARYqBuQlMJYkD0ZNJpJsBuSrL2Wmj/preview', 0, NULL),
(250, 99, 4, 'Aula de Inglês Intermediário - 1 Aula', '[]', '[]', NULL, '2024-07-17 09:12:45', '2024-07-17 09:12:45', 0, 1, 'https://drive.google.com/file/d/1jc242Jb5s7oVe2U0bq274V7fe6jtjtKa/preview', 0, NULL),
(251, 99, 4, 'Aula de Ingles intermediario - 2 - Verbos Irregulares', '[]', '[]', NULL, '2024-07-18 08:21:03', '2024-07-18 08:21:03', 0, 1, 'https://drive.google.com/file/d/1qs3YcZ1YBotxbSQbXayXgGu5cQR4M1s8/preview', 0, NULL),
(252, 99, 4, 'AULA DE INGLÊS INTERMEDIÁRIO - 3 - Passado Contínuo.', '[]', '[]', NULL, '2024-07-18 08:48:25', '2024-07-18 08:48:25', 0, 1, 'https://drive.google.com/file/d/1ah3cqMA-izwGtVEYVbITcvjYsTJGczMT/preview', 0, NULL),
(253, 99, 4, 'Aula de Inglês Intermediário - 4 - Present Perfect', '[]', '[]', NULL, '2024-07-18 08:56:53', '2024-07-18 08:56:53', 0, 1, 'https://drive.google.com/file/d/1pNiO6Uz956pmIm_zQbmbECjQhW7MPtB2/preview', 0, NULL),
(254, 99, 4, 'Aula de Inglês Intermediário - 5 - Present Perfect vs. Simple Past', '[]', '[]', NULL, '2024-07-18 08:59:00', '2024-07-18 08:59:00', 0, 1, 'https://drive.google.com/file/d/1cRWm_b7AkxQY6xtgU7MM2RwCVz5WmN-m/preview', 0, NULL),
(261, 99, 4, 'Aula de Inglês Intermediário - 6 - Have got.', '[]', '[]', NULL, '2024-07-18 09:23:20', '2024-07-20 13:50:24', 0, 1, 'https://drive.google.com/file/d/1egc_AggvWMHUN4q3u1pznn3HwpxEUKw8/preview', 0, NULL),
(281, 99, 4, 'Aula de Inglês Pré-Intermediário -1 - Fazendo Perguntas', '[]', '[]', NULL, '2024-07-20 15:33:54', '2024-07-20 15:33:54', 0, 1, 'https://drive.google.com/file/d/1VS_A7KtsCJzueGIubc8jytm7aFPLCqmg/preview', 0, NULL),
(282, 99, 4, 'Aula de Inglês Pré-intermediário - 2', '[]', '[]', NULL, '2024-07-20 15:37:30', '2024-07-20 15:37:30', 0, 1, 'https://drive.google.com/file/d/1HFjZ3UPydH3oORhYVp7OWRLZAEzgm3yp/preview', 0, NULL),
(283, 99, 4, 'Aula de Inglês Pré-Intermediário - 3 - Profissões e Locais de Trabalho.', '[]', '[]', NULL, '2024-07-20 15:39:58', '2024-07-20 15:39:58', 0, 1, 'https://drive.google.com/file/d/1HFjZ3UPydH3oORhYVp7OWRLZAEzgm3yp/preview', 0, NULL),
(284, 99, 4, 'Aula de Inglês Pré-Intermediário - 4 - Expressões no Trabalho', '[]', '[]', NULL, '2024-07-20 15:42:25', '2024-07-20 15:42:25', 0, 1, 'https://drive.google.com/file/d/1oBuD5bKHF7aW9MGNA3t7Uqcw-AQczwH_/preview', 0, NULL),
(285, 99, 4, 'Aula de Inglês Pré-Intermediário - 5 - Terceira pessoa singular.', '[]', '[]', NULL, '2024-07-20 15:44:02', '2024-07-20 15:44:02', 0, 1, 'https://drive.google.com/file/d/1CRVM5j2DO4piSJFxR9uES6mRKZXc9yGc/preview', 0, NULL),
(286, 99, 4, 'Aula de Inglês pré-intermediário - 6 - Um Gringo Na Empresa!', '[]', '[]', NULL, '2024-07-20 15:46:26', '2024-07-20 15:46:26', 0, 1, 'https://drive.google.com/file/d/1PaZF-vu-u5vo-BOD-opSgAhxyYRiCfdt/preview', 0, NULL),
(287, 99, 4, 'Aula de Inglês pré-intermediário - 7 - Present Continuous', '[]', '[]', NULL, '2024-07-20 15:50:03', '2024-07-20 15:50:03', 0, 1, 'https://drive.google.com/file/d/1eAkwkXVvTsdJntkEk71TzxNUSQAwBO0J/preview', 0, NULL),
(288, 99, 4, 'Aula de Inglês Pré-intermediário - 8', '[]', '[]', NULL, '2024-07-20 15:51:54', '2024-07-20 15:51:54', 0, 1, 'https://drive.google.com/file/d/1DorXfAr-B9EzAqqWtQVEGDP_9GxAK8JJ/preview', 0, NULL),
(289, 99, 4, 'Aula de Inglês Pré-Intermediário - 9 - Linking Words', '[]', '[]', NULL, '2024-07-20 15:53:25', '2024-07-20 15:53:25', 0, 1, 'https://drive.google.com/file/d/1H3a9SThX1fL73YEQBDxs-My0DbNXUuLM/preview', 0, NULL),
(290, 99, 4, 'Aula de Inglês Pré-intermediário - 10 - Falar do seu País', '[]', '[]', NULL, '2024-07-20 15:55:38', '2024-07-20 15:55:38', 0, 1, 'https://drive.google.com/file/d/1SThQX8Q6T59gDI9Jk38cEwgS8unQNlJ-/preview', 0, NULL),
(291, 99, 4, 'Aula de Inglês Pré-intermediário - 11 - Tag Questions', '[]', '[]', NULL, '2024-07-20 15:59:16', '2024-07-20 15:59:16', 0, 1, 'https://drive.google.com/file/d/1tXOl5WWBRfAn0Ui3eYH6IiXiXnWAqN2V/preview', 0, NULL),
(292, 99, 4, 'Aula de Inglês Pré-intermediário - 12 - Como Falar Inglês no Restaurante', '[]', '[]', NULL, '2024-07-20 16:01:24', '2024-07-20 16:01:24', 0, 1, 'https://drive.google.com/file/d/1bq94xzXH2V9C6WG6Y8jf_8RVeWOjL86F/preview', 0, NULL),
(293, 99, 4, 'Aula de Inglês Pré-intermediário - 13 - Verbos Modais COULD e WOULD', '[]', '[]', NULL, '2024-07-20 16:03:03', '2024-07-20 16:03:03', 0, 1, 'https://drive.google.com/file/d/1FmRI993hBJYLPcHOYIMUBX_zmDuVf-Nk/preview', 0, NULL),
(294, 99, 4, 'Aula de Inglês Pré-intermediário - 14 - Desvendando o Simple Past em Inglês', '[]', '[]', NULL, '2024-07-20 16:04:48', '2024-07-20 16:04:48', 0, 1, 'https://drive.google.com/file/d/1duXthvbbmXAQf2_Xhz-gMSFcx6abw6WW/preview', 0, NULL),
(295, 99, 4, 'Aula de Inglês Pré-intermediário - 15 - Como Usar BE ABLE TO em Inglês', '[]', '[]', NULL, '2024-07-20 16:07:06', '2024-07-20 16:07:06', 0, 1, 'https://drive.google.com/file/d/1AVycN6WFOcViboPPndkMtVLy642xnwfP/preview', 0, NULL),
(296, 99, 4, 'Aula de inglês Pré-intermediário - 16 - Vacation', '[]', '[]', NULL, '2024-07-20 16:08:57', '2024-07-20 16:08:57', 0, 1, 'https://drive.google.com/file/d/18DcV25wTMbbxg73WQsH6i1tPNJcPG6iv/preview', 0, NULL),
(297, 99, 4, 'Aula de inglês pré-intermediário - 17 - Quantidades', '[]', '[]', NULL, '2024-07-20 16:11:04', '2024-07-20 16:11:04', 0, 1, 'https://drive.google.com/file/d/1w5MG4WSnLNHmVXKBy8vXxzN74qUaVtId/preview', 0, NULL),
(298, 99, 4, 'Gírias e Expressões em Inglês.', '[]', '[]', NULL, '2024-07-20 16:13:29', '2024-07-20 16:13:29', 0, 1, 'https://drive.google.com/file/d/1aNfvuvQkGvcpdKs-3pylGWCp7lWZLA2g/preview', 0, NULL),
(299, 99, 2, 'INTRODUCING OF THE INTERMEDIATE AND ADVANCED', '[]', '[{\"id\":\"SPNRUTYYCTGZEPMUEUFJMTPDNMZTXTYGENTZXPGSMWTTZIWTWM\",\"name\":\"INTRODUCING OF THE INTERMEDIATE AND ADVANCED.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/INTRODUCING OF THE INTERMEDIATE AND ADVANCED.pdf\",\"type\":\"Document\"}]', NULL, '2024-07-20 16:17:40', '2024-07-20 16:17:40', 0, 0, NULL, 0, NULL),
(300, 99, 2, 'READING COMPREHENSION', '[]', '[{\"id\":\"ZRDJXZCSIYNBKYMCJJYLXMHQUKMHUGYWJOGZBKCNVGVJYXDTFG\",\"name\":\"READING COMPREHENSION.pdf\",\"url\":\"\\/uploads\\/treasures\\/package\\/READING COMPREHENSION.pdf\",\"type\":\"Document\"}]', NULL, '2024-07-20 16:18:21', '2024-07-20 16:18:21', 0, 0, NULL, 0, NULL),
(303, 99, 1, 'Aula de Inglês Pré-Intermediário # 1 - Fazendo Perguntas', '[]', '[]', NULL, '2024-07-20 16:45:14', '2024-07-20 16:45:14', 0, 1, 'https://drive.google.com/file/d/13qf2gY9-CjTX7mAgPHIAEsPeHo-vE_hG/preview', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_type`
--

CREATE TABLE `content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `extension` text NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_type`
--

INSERT INTO `content_type` (`id`, `name`, `extension`, `image`, `created_at`, `updated_at`) VALUES
(1, 'AudioBook', '[\".wav\",\".aac\",\".mp3\"]', '[{\"type\":\"Image\",\"id\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT\",\"name\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\",\"url\":\"\\/uploads\\/treasures\\/TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\",\"sizes\":{\"min\":{\"id\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT\",\"name\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/min\\/TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\"},\"med\":{\"id\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT\",\"name\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/med\\/TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\"},\"max\":{\"id\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT\",\"name\":\"TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/max\\/TmfX1s4DOFaCKvphoySEr3Tce4GwQdiKNc3QliKCSoYiinuVxeccPHNKudJQaKGbzM3MJ5WIsvrkKKw6fmKW7HNfYxqMhJDBFsWT.jpg\"}}}]', '2023-02-19 23:28:38', '2023-04-13 17:10:41'),
(2, 'Pdf', '[\".pdf\"]', '[]', '2023-02-19 23:32:33', '2023-08-05 14:48:26'),
(4, 'Video', '[\".mp4\"]', '[]', '2023-02-19 23:33:53', '2023-02-19 23:33:53'),
(6, 'Imagem', '[\".jpeg\",\".jpg\",\".png\"]', '[]', '2023-08-05 14:50:19', '2023-08-05 14:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(11) NOT NULL,
  `reference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `price` double DEFAULT NULL,
  `use_order` tinyint(4) NOT NULL DEFAULT 0,
  `separate_by_type` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `reference`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`, `price`, `use_order`, `separate_by_type`) VALUES
(64, 'GESTCONT2023', 'Curso Gestão de Conteúdos digitais', '[]', '<ul><li>Este curso irá permitir-lhe gerir os diferentes conteúdos digitais como produtos de marketing e como ponto de contacto com os seus clientes, potenciais clientes e empresas parceiras. Conhecer os diferentes formatos de conteúdos que existem e como usá-los, e em que meios, de forma a otimizar o seu negócio.</li><li>Gestão de conteúdo é o processo de planejar, criar, revisar, publicar e promover conteúdos. Ela também envolve a mensuração de resultados, o que é essencial para a melhoria contínua das ações</li><li>O curso foi criado para todos aqueles que precisam melhorar sua comunicação nas plataformas digitais, seja para projetos da empresa na qual trabalham ou para projetos.<br></li></ul>', 0, '2023-07-30 00:08:35', '2023-08-19 13:49:17', 1, 0, 1),
(67, 'ENG2023', 'Curso Online Grátis de Inglês Básico', '[{\"type\":\"Image\",\"id\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH\",\"name\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\",\"url\":\"\\/uploads\\/courses\\/HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\",\"sizes\":{\"min\":{\"id\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH\",\"name\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\"},\"med\":{\"id\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH\",\"name\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\"},\"max\":{\"id\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH\",\"name\":\"HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/HVKWLAZZJJMFRIUTASEOCMCOFFZPVMPFOCESJBNEGTSSWKVVRQVTDOWAPSOLXZJINJHQZDOLVZJPOVRJOEAKGNQXSSSFIJSOBHRH.jpg\"}}}]', '<ul><li>Você estuda a distância em uma plataforma intuitiva, de qualquer lugar e quando quiser;</li><li>Acesso gratuito as apostilas e avaliação do Curso! O Certificado Digital NÃO é gratuito. Taxa do certificado digital 300 MT</li><li>A carga horário desde curso é de 60 horas Baseada no conteúdo disponível do curso.<br></li></ul>', 0, '2023-07-30 00:26:52', '2023-08-05 16:10:21', 1, 0, 1),
(70, 'CONTBASIC2023', 'Curso de Contabilidade Básica', '[{\"type\":\"Image\",\"id\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF\",\"name\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\",\"url\":\"\\/uploads\\/courses\\/MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\",\"sizes\":{\"min\":{\"id\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF\",\"name\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\"},\"med\":{\"id\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF\",\"name\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\"},\"max\":{\"id\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF\",\"name\":\"MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/MUVRWUEJVZETJLUCAXDIOYAJRZGLKULBDAOKJHXCSEMPZLIHRRSLCRPFFTPJFDEEGVVAKBNDCBXYFKTZOIJINGRWYTYVELTZCLOF.jpg\"}}}]', '<ul><li>Contabilidade Geral: Noções do básico ao Profissional; Sistemas ERP de Contabilidade; Conteúdos práticos e objetivos.</li><li>Demonstrações contábeis na prática: Balanço Patrimonial; Demonstração do Resultado do Exercício; DFC; DVA; Balanço Social.</li><li>Noções práticas sobre escrituração contábeis; lançamentos à débito; lançamentos à crédito; Ativo; Passivo; Resultado Positivo; Resultado Negativo.</li><li>Apuração do Resultado do Exercício (ARE); Resultado Econômico; Resultado Financeiro; Relatórios contábeis na prática; Plano de Contas Contábeis.</li></ul>', 0, '2023-08-05 16:12:49', '2023-08-05 16:12:49', 1, 0, 1),
(71, 'PROGR2023', 'Programação OOP', '[{\"type\":\"Image\",\"id\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP\",\"name\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\",\"url\":\"\\/uploads\\/courses\\/IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\",\"sizes\":{\"min\":{\"id\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP\",\"name\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\"},\"med\":{\"id\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP\",\"name\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\"},\"max\":{\"id\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP\",\"name\":\"IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/IGDEIZOAVEMLAGWAKQJWTCBEHGFSIFIHVNDNDFIHYUJZSVAIXUAXWGYFGBRSNNSKFSWNWRTRTXBAYITCJTJEQUSDNVYPDDOXZQFP.jpg\"}}}]', '<p style=\"color: rgb(17, 17, 17); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Conheça o conteúdo do curso Programação Orientada a Objetos</p><p><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Introdução a classes, objetos e métodos</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Projetando classes</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Atributos e métodos de classe</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Encapsulamento e modificadores de acesso</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Introdução à herança</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Construtores e herança</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Sobrescrita</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Classes abstratas</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Interfaces</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Introdução ao polimorfismo</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Sobrecarga</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Atributos e métodos finais</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Classes aninhadas</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Classes com tipos genéricos</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Tratamento de exceções</span><br style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">- Padrões de projeto orientados a objeto</span><br></p>', 0, '2023-08-05 23:06:12', '2023-08-05 23:09:34', 1, 0, 1),
(72, 'PHP2023', 'Curso PHP Avançado', '[{\"type\":\"Image\",\"id\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI\",\"name\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\",\"url\":\"\\/uploads\\/courses\\/PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\",\"sizes\":{\"min\":{\"id\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI\",\"name\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\"},\"med\":{\"id\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI\",\"name\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\"},\"max\":{\"id\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI\",\"name\":\"PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/PXWYSXBKXFABRZTEBKAZQLORNKNJQAFMACXFEYURGHNEENGPKKNDJXNKSWQQFUTEOAHCNLYPSRHTSQWZPOPNNALYHDEXLQFHXKJI.jpg\"}}}]', '<p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Aliamos a experiência de gestão ao desenho de software para criar soluções adaptáveis e completas, que proporcionam flexibilidade ao dia a dia das empresas e aceleram a tomada de decisão.</span><br></p>', 0, '2023-08-06 01:49:43', '2023-08-06 01:49:58', 1, 0, 1),
(73, 'IOT2023', 'Inteligência Artificial - O futuro da Tecnologia', '[{\"type\":\"Image\",\"id\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ\",\"name\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\",\"url\":\"\\/uploads\\/courses\\/PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\",\"sizes\":{\"min\":{\"id\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ\",\"name\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\"},\"med\":{\"id\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ\",\"name\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\"},\"max\":{\"id\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ\",\"name\":\"PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/PBJQKIXMADMXXSZSDNOZUNBYRIGAMZFVQRZUDMYLSTZXPALKMXDRODYJNOHDKPQUKZZHJGDVAYYYRNNLPWXEGQSYFUZYGVYVLVLZ.jpg\"}}}]', '<p><font color=\"#000000\" face=\"Lexend, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(250, 250, 250);\">Para os interessados em entender melhor como funciona o universo do IA, a plataforma de cursos online Makemoney, de Moçambique, está a oferecer este curso introdutório sobre o tema. Mais de 1,5 milhão de pessoas ao redor do Brasil eAngola já foram beneficiadas com os conteúdos, que contam com aulas ministradas por grandes empresas, como FIAP, IBM, IDP e Microsoft.</span></font><br></p>', 0, '2023-08-06 02:16:38', '2023-08-06 02:16:38', 1, 0, 1),
(74, 'EMP-2023', 'EMPREENDEDORISMO', '[{\"type\":\"Image\",\"id\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH\",\"name\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\",\"url\":\"\\/uploads\\/courses\\/PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\",\"sizes\":{\"min\":{\"id\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH\",\"name\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\"},\"med\":{\"id\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH\",\"name\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\"},\"max\":{\"id\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH\",\"name\":\"PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/PJAEPGUFMDAAMBVHXWOEIOPVJXBUDDEFODDZQGPWLBMGGGOYZZWFURQUBADZNSOMPTWGNODHEHLMJYRLMYXDAMTKDTQDHLEAHNSH.png\"}}}]', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;text-align:justify;line-height:\r\n115%\"><br></p><p><span style=\"font-weight: bolder;\">+ 30 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 30 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 3 000</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 300</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 9</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 800 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 4 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><br></p>', 0, '2023-08-06 22:04:13', '2023-11-22 15:06:10', 500, 1, 1),
(76, 'Engen2023', 'Engenharia', '[{\"type\":\"Image\",\"id\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL\",\"name\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\",\"url\":\"\\/uploads\\/courses\\/BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\",\"sizes\":{\"min\":{\"id\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL\",\"name\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\"},\"med\":{\"id\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL\",\"name\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\"},\"max\":{\"id\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL\",\"name\":\"BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/BMMQPSIPFKAVBZVFIQLLDNTREHGSXQUXGTOSUNLICGHZACTAEUFJKBFRCSCSACGQIWHITCRGOCZHZBJEIENZLIPHQQJKOSSHMPGL.png\"}}}]', '<p>Bbbbbb</p>', 0, '2023-08-09 16:31:54', '2023-08-13 15:37:59', 0.1, 0, 1),
(77, 'Msc2023', 'Música', '[]', 'Dê vida as suas Cordas vocais.', 0, '2023-08-13 15:43:45', '2023-08-13 15:47:51', 0.1, 0, 1),
(78, 'Ex_2023', 'EXCEL', '[{\"type\":\"Image\",\"id\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH\",\"name\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\",\"url\":\"\\/uploads\\/courses\\/QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\",\"sizes\":{\"min\":{\"id\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH\",\"name\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\"},\"med\":{\"id\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH\",\"name\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\"},\"max\":{\"id\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH\",\"name\":\"QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/QVTHUJQDTJYQBFAMRNNAAOHQDSXOTQHWQHHFXODOJPWAKRCDEPVSFQYEBGRGUHOJBJYJZBDOHVRJDUQZROPPXJTBCPDYAVFSTJDH.png\"}}}]', '<p><span style=\"font-weight: bolder;\">+ 10 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 10 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 800</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 100</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 7</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 250 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 1 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p style=\"margin-top:0cm;text-align:justify;background:white;box-sizing: border-box;\r\nmargin-bottom:1rem;font-variant-ligatures: normal;font-variant-caps: normal;\r\norphans: 2;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;\r\ntext-decoration-style: initial;text-decoration-color: initial;word-spacing:\r\n0px\"><span lang=\"PT\" style=\"font-family:\" baskerville=\"\" old=\"\" face\",serif;mso-bidi-font-family:arial;=\"\" color:#4f4f4f;mso-ansi-language:pt\"=\"\"><o:p></o:p></span></p>', 0, '2023-08-14 09:58:22', '2023-11-22 15:06:36', 500, 1, 1),
(79, 'InfoBI-2023', 'Informática Básica e Intermédia', '[{\"type\":\"Image\",\"id\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS\",\"name\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\",\"url\":\"\\/uploads\\/courses\\/PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\",\"sizes\":{\"min\":{\"id\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS\",\"name\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\"},\"med\":{\"id\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS\",\"name\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\"},\"max\":{\"id\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS\",\"name\":\"PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/PFQPKYXNEEBZIKASDWSFIPZLIOQIZEYQANUAOXKWAZRCLXDHHREANHHIETHXWPVJLVZDZAOGJUZVXCHTJKSRFWPYSGVHEOWQNIHS.png\"}}}]', '<p><span style=\"font-weight: bolder;\">+ 8 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 8 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 600</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 90</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 6</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 200 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 900 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></p><p style=\"margin-top: 0cm; text-align: justify; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"PT\" style=\"font-size:13.0pt;\r\nline-height:150%;mso-ansi-language:PT\"><o:p></o:p></span></b></p><p style=\"margin-top: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></p>', 0, '2023-08-22 02:23:34', '2023-11-22 15:04:13', 500, 1, 1),
(80, 'Chninterm2023', 'CHINÊS INTERMÉDIO', '[]', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:150%;mso-layout-grid-align:none;text-autospace:none\"><font color=\"#000000\"><span lang=\"PT\" style=\"font-size: 12pt; line-height: 150%; font-family: Arial, sans-serif; letter-spacing: 0.75pt;\">Enfrentar por primeira vez a um&nbsp;</span><span lang=\"PT\" style=\"font-size: 12pt; line-height: 150%; font-family: &quot;var(--mdb-body-font-family)&quot;, serif; letter-spacing: 0.75pt;\"><a href=\"https://pt.wikipedia.org/wiki/Caracteres_chineses\" target=\"_blank\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-align: start;\"><span style=\"font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg);\"><span style=\"font-family: Arial, sans-serif;\">caráter chinês</span></span></a></span><span lang=\"PT\" style=\"font-size: 12pt; line-height: 150%; font-family: Arial, sans-serif; letter-spacing: 0.75pt;\"><span style=\"text-align: start;\"><span style=\"font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;é\r\ntodo um desafio. Mas com a ajuda dos Manuais deste curso, não será mais uma\r\ntarefa árdua.&nbsp;</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Você\r\ncertamente achará isso agradável e revigorante</span></span><span style=\"font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg);\">.</span></span></font></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:150%;mso-layout-grid-align:none;text-autospace:none\"><span lang=\"PT\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:black;letter-spacing:.75pt\"><span style=\"font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg);\"><br></span></span><span style=\"font-size: var(--mdb-body-font-size); background-color: var(--mdb-card-bg); font-family: Arial; color: rgb(0, 0, 0); font-weight: bolder;\">Com Manuais</span><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size);\"><font color=\"#000000\"><span style=\"font-size: var(--mdb-body-font-size); background-color: var(--mdb-card-bg); font-family: Arial;\">&nbsp;digitais de Chinês\r\nvocê será seu próprio professor, adaptando seu ritmo, tempo e vontade de\r\naprender. No entanto, é preciso um compromisso e dedicação da sua parte, para\r\nque você possa ver resultados no seu tempo de meta, e que seus objectivos sejam\r\nsempre realistas.</span></font></b></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:150%;mso-layout-grid-align:none;text-autospace:none\"><span lang=\"PT\" style=\"font-size:12.0pt;line-height:150%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:150%;mso-layout-grid-align:none;text-autospace:none\"><span lang=\"PT\" style=\"font-size:12.0pt;line-height:150%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p>', 0, '2023-09-02 17:25:42', '2023-09-03 16:57:05', 300, 0, 1),
(81, 'ChniBasic2023', 'MANDARIM', '[{\"type\":\"Image\",\"id\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS\",\"name\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\",\"url\":\"\\/uploads\\/courses\\/NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\",\"sizes\":{\"min\":{\"id\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS\",\"name\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\"},\"med\":{\"id\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS\",\"name\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\"},\"max\":{\"id\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS\",\"name\":\"NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/NXMSFTOGMKKSNQRIKNIGMJUMAADXWHROZBIOZINTNLPTVKZSIJUCOOXUFFTXTANVHQXZNLEGKKMXTYPZNODNMFDUDVDUBCXNFDUS.jpg\"}}}]', '<p><span style=\"font-weight: bolder;\">+ 18 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 18 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 1 500</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 150</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 15</span> Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 350 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 3 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></p><p style=\"text-align: justify; \"><font color=\"#000000\"><span style=\"font-family: Arial;\">Hoje, pelos cálculos do governo, 100 milhões de pessoas estão </span><span style=\"background-color: var(--mdb-card-bg); font-family: Arial; font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">aprendendo chinês no mundo. </span><span lang=\"PT\" style=\"text-align: justify; background-color: var(--mdb-card-bg); font-size: 12pt; font-weight: var(--mdb-body-font-weight); line-height: 150%; font-family: Arial;\">Essa\r\nestatística Revela o quão essa língua é poderosa e i</span><span style=\"text-align: var(--mdb-body-text-align); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); font-family: Arial;\">m</span><span style=\"text-align: var(--mdb-body-text-align); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); font-family: Arial;\">portante no </span><span style=\"text-align: var(--mdb-body-text-align); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); font-family: Arial;\">m</span><span style=\"text-align: var(--mdb-body-text-align); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); font-family: Arial;\">ercado Real. </span></font><span style=\"color: rgb(0, 0, 0); text-align: var(--mdb-body-text-align); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg); font-family: Arial;\">Aprenda de\r\nforma fácil e aplica-te através dos conteúdos que prepara</span><span style=\"color: rgb(0, 0, 0); text-align: var(--mdb-body-text-align); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg);\"><span style=\"font-family: Arial;\">mos para ti e esteja a 100 passos a frente da maioria.</span></span></p><p style=\"text-align: justify; \"><span style=\"color: rgb(0, 0, 0); text-align: var(--mdb-body-text-align); font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); background-color: var(--mdb-card-bg);\"><span style=\"font-family: Arial;\"><br></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:150%;mso-layout-grid-align:none;text-autospace:none\"><span lang=\"PT\" style=\"font-size:12.0pt;\r\nline-height:150%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p>', 1, '2023-09-02 17:26:38', '2023-12-27 21:10:58', 500, 0, 1),
(82, 'Ingbasi2023', 'INGLÊS', '[{\"type\":\"Image\",\"id\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON\",\"name\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\",\"url\":\"\\/uploads\\/courses\\/GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\",\"sizes\":{\"min\":{\"id\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON\",\"name\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\"},\"med\":{\"id\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON\",\"name\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\"},\"max\":{\"id\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON\",\"name\":\"GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/GIZCIWUQXPXPFLTIHEDZVBGIFEYZORFGPHFYOBBMUWWFWPWDOPGMCQCNHOXPNHTBNZPYMXPKTJDIOKXWLZSSSOQGEUGCJJOWJHON.png\"}}}]', '<p><span style=\"font-weight: bolder;\">Esse curso foi preparado pensando em você que gostaria de Aprender, do Zero, a se comunicar em Inglês.</span></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 25 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 25 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 3 000</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 300</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 15</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 500 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 5 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></p><p style=\"margin-top: 0cm; text-align: justify; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\"><o:p></o:p></span></p>', 1, '2023-09-02 17:27:33', '2023-12-27 21:10:25', 500, 0, 1),
(83, 'Ingmedio2023', 'INGLÊS MÉDIO', '[{\"type\":\"Image\",\"id\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC\",\"name\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\",\"url\":\"\\/uploads\\/courses\\/KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\",\"sizes\":{\"min\":{\"id\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC\",\"name\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\"},\"med\":{\"id\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC\",\"name\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\"},\"max\":{\"id\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC\",\"name\":\"KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/KSTCFDQIFBHRQHCACOXKBUPJETWREHKZSHMXOPYTGTRJHMHFJDXZVQSMSUKBCSJOHBZQVUJXIMTCVHCWJIBRHIGJRKRYVKSGRQCC.webp\"}}}]', '<p><span style=\"font-weight: bolder;\">+ 23 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 23 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 3 000</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 300</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 15</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 500 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 5 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p>', 0, '2023-09-02 17:28:19', '2023-11-18 19:03:57', 500, 1, 1),
(84, 'Fr2023', 'FRANCÊS', '[{\"type\":\"Image\",\"id\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK\",\"name\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\",\"url\":\"\\/uploads\\/courses\\/WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\",\"sizes\":{\"min\":{\"id\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK\",\"name\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\"},\"med\":{\"id\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK\",\"name\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\"},\"max\":{\"id\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK\",\"name\":\"WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/WGKJBDSUXZLINKGPKGRYJXPWDCLTWTWJHCTHRVNAWCVLUKTQJALTMHVPVEAZSQXOYPXPVXWUGXYPLYWITCTRJDLWFBWQKTGSFNVK.jpg\"}}}]', '<p><span style=\"font-weight: bolder;\">+ 12 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 12 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 900</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 100</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 7</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 350 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 2 000 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><br></p><p style=\"margin-top: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\"><o:p></o:p></span></p>', 1, '2023-09-02 18:39:05', '2023-12-25 18:47:25', 500, 1, 1);
INSERT INTO `course` (`id`, `reference`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`, `price`, `use_order`, `separate_by_type`) VALUES
(85, 'Esp2023', 'ESPANHOL', '[{\"type\":\"Image\",\"id\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM\",\"name\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\",\"url\":\"\\/uploads\\/courses\\/ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\",\"sizes\":{\"min\":{\"id\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM\",\"name\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\"},\"med\":{\"id\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM\",\"name\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\"},\"max\":{\"id\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM\",\"name\":\"ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/ZKGINAYKAVMHIXORZVUXHLXOESJXUQXADGCPYBXQLDQYREVHSKHVSZIIBGHTGZQVDEEGUWZEEGRGSNNLCQJEPEIOQHJKJGHLQUTM.jpg\"}}}]', '<p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align); font-weight: bolder;\">+ 8 000</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">&nbsp;Cursantes&nbsp; Ativos</span><br></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 8 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 600</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 90</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 4</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 180 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 900&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><p style=\"margin-top: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\" style=\"font-family: Arial; letter-spacing: 0.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p><br></p><p style=\"margin-top: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\" style=\"font-family: Arial; letter-spacing: 0.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\">Se você está\r\ncansado de procurar opções que lhe ajudem a aprender espanhol com eficiência,\r\naqui está a opção para você.</font></span></p><p style=\"margin-top: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\" style=\"font-family: Arial; letter-spacing: 0.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p><br></p><p style=\"text-align: justify; margin: 0cm 0cm 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit;\"><span lang=\"PT\" style=\"font-family:\r\n\" arial\",sans-serif;letter-spacing:.75pt;mso-ansi-language:pt\"=\"\"><o:p></o:p></span></p>', 1, '2023-09-02 18:39:47', '2023-11-22 15:19:47', 500, 0, 1),
(86, 'Xad-2023', 'XADREZ', '[{\"type\":\"Image\",\"id\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE\",\"name\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\",\"url\":\"\\/uploads\\/courses\\/JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\",\"sizes\":{\"min\":{\"id\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE\",\"name\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\"},\"med\":{\"id\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE\",\"name\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\"},\"max\":{\"id\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE\",\"name\":\"JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/JKFFALBBEYGPCLRDXAHZDVRPQVCJKLFCEJDZOIKBIVDTGEPOGIOJJRLMJWGFGQEIXMZFMQZUONNMSGHYGMWHVEKGLJVKGFFGDIDE.jpg\"}}}]', '<p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align); font-weight: bolder;\">+ 3 000</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"> Cursantes  Ativos</span><br></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 3 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 200</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 70</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 2</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 80 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 300 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder; font-size: var(--mdb-body-font-size); box-sizing: inherit; color: rgb(0, 0, 0); background-color: var(--mdb-card-bg); text-align: start; font-family: Arial;\"><span style=\"text-align: justify; background-color: var(--mdb-card-bg); font-size: var(--mdb-body-font-size);\"><br></span></span></p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder; font-size: var(--mdb-body-font-size); box-sizing: inherit; color: rgb(0, 0, 0); background-color: var(--mdb-card-bg); text-align: start; font-family: Arial;\"><span style=\"text-align: justify; background-color: var(--mdb-card-bg); font-size: var(--mdb-body-font-size);\">Com M</span>anuais</span><span style=\"font-weight: bolder; font-size: var(--mdb-body-font-size); color: rgb(0, 0, 0); background-color: var(--mdb-card-bg); font-family: Arial;\"> digitais de Xadrez você será seu próprio professor, adaptando seu ritmo, tempo e vontade de aprender. No entanto, é preciso um compromisso e dedicação da sua parte, para que você possa ver resultados no seu tempo de meta, e que seus objectivos sejam sempre realistas.</span><br></p><p style=\"text-align: justify;\">Obs: <span style=\"background-color: var(--mdb-card-bg); color: rgb(0, 0, 0); font-family: Arial; font-size: var(--mdb-body-font-size); font-weight: bolder;\">Este curso decorre também de forma interativa.</span></p><p style=\"text-align: justify;\"><span style=\"background-color: var(--mdb-card-bg); color: rgb(0, 0, 0); font-family: Arial; font-size: var(--mdb-body-font-size); font-weight: bolder;\"><br></span></p>', 0, '2023-09-15 14:43:17', '2023-11-18 14:18:42', 500, 0, 1),
(87, 'C. MÁG-2023', 'CUBO MÁGICO (RUBIK)', '[{\"type\":\"Image\",\"id\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF\",\"name\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\",\"url\":\"\\/uploads\\/courses\\/THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\",\"sizes\":{\"min\":{\"id\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF\",\"name\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\"},\"med\":{\"id\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF\",\"name\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\"},\"max\":{\"id\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF\",\"name\":\"THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/THSFAYNTHAWGWLQYXSHLJISOBYPCPUKAVADPPOQUGTJEOIFBVWZEIQFZNBBLVTDCXWMXFTJXCZCNKIMLSLKJSGGESRUBXWMDKDAF.jpg\"}}}]', '<p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"></span></p><p><span style=\"font-weight: bolder;\">+ 2 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 2 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 100</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 15</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 2</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 50 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 100 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Para   resolver  \r\no   cubo,   é  \r\nnecessário   realizar   um  \r\nconjunto   de   movimentos sequenciais.  No \r\nentanto,  movimentar  o  cubo  com \r\nalgoritmos  aleatórios  não  é  a \r\nmelhor forma  de  montá-lo. \r\nO  criador  do \r\nobjeto,  Erno  Rubik, \r\ndemorou  mais  de \r\num  mês  para resolver   o  \r\ncubo   pela   primeira  \r\nvez.  \r\nA   dificuldade   de  \r\nresolução   com movimentos  aleatórios \r\npode  ter  sido \r\na  motivação  para \r\na  descoberta  de \r\nalgoritmos  de resolução, tornando\r\na sua montagem mais fácil e rápida.</span><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">O  cubo \r\nmágico  foi  criado \r\nem  1974  pelo \r\nprofessor  de  arquitetura \r\nErno  Rubik, que   o desenvolveu   com  \r\no   intuito   inicial  \r\nde   auxiliar   seus  \r\nalunos   com   a  \r\ngeometria tridimensional. O cubo mágico padrão 3x3x3 é\r\nformado por 26 cubos menores, que podem ser chamados de “peças” ou de\r\n“cubinhos”. As peças classificam-se de acordo com a posição que ocupam: meio,\r\nque tem uma cor; centro, com duas cores; ou quina, com três cores.</span></p><p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"></span><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">O  cubo \r\nmágico  é  uma \r\nferramenta  que  pode \r\nauxiliar  no  desenvolvimento  da</span><font color=\"#000000\"><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> </span><span style=\"transform-origin: 0% 0%; text-align: start; transform: scaleX(0.945474); cursor: text; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">capacidade lógica do\r\nraciocínio do estudante.</span></font><span style=\"font-size: 15pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" black;\"=\"\"> </span><span style=\"font-size:12.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" color:black;mso-color-alt:windowtext\"=\"\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">A</span> </span><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\";color:black;mso-color-alt:windowtext;mso-fareast-language:=\"\" pt\"=\"\">atividade desafiadora que pode estimular o aluno a pensar e buscar\r\ninformações, além de trabalhar esquemas motores de ação e promover interação </span><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">social</span>. </p>', 0, '2023-09-22 09:35:37', '2023-11-18 14:18:04', 500, 1, 1),
(88, 'PN23', 'Plano De Negócio', '[{\"type\":\"Image\",\"id\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME\",\"name\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\",\"url\":\"\\/uploads\\/courses\\/CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\",\"sizes\":{\"min\":{\"id\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME\",\"name\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\"},\"med\":{\"id\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME\",\"name\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\"},\"max\":{\"id\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME\",\"name\":\"CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/CUTTLPLSJGWXNQPIOWPTCZGTENDZIFOPEVSKPVUDNGSUPFCQUHWVELEUFHHEEBHEQNCYOHQDJKZEASBYIQJJVVEUGJVQCFQIMJME.png\"}}}]', '<p><span style=\"font-weight: bolder;\">Esse curso foi preparado especialmente para ajudar você a elaborar um Bom Plano de Negócio para a sua empresa ou negócio e ter sucesso no mercado. Comece já:.</span></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 10 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><b><br></b></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><b>+ 10 000</b> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 700</span>&nbsp;Certificados Requisitados por Semana<b><br></b></p><p><span style=\"font-weight: bolder;\">+ 100</span>&nbsp;Certificados Requisitados por Dia<b><br></b></p><p><span style=\"font-weight: bolder;\">+ 5</span>&nbsp; Certificados Requisitados por Hora<b><br></b></p><p><b>+ 200 000</b>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 1 000&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><p><br></p>', 1, '2023-11-02 20:49:29', '2023-11-22 15:13:40', 500, 1, 1),
(89, 'EDFinan23', 'Educação Financeira', '[{\"type\":\"Image\",\"id\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM\",\"name\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\",\"url\":\"\\/uploads\\/courses\\/YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\",\"sizes\":{\"min\":{\"id\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM\",\"name\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\"},\"med\":{\"id\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM\",\"name\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\"},\"max\":{\"id\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM\",\"name\":\"YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/YEKWERGMSMAFTAUTDGIHSBGXKDMACXJADXNLSABNKREFQKBPTQWHOADQVPUWMUAHTNWVFVXPQYXKPGASEECXEDCVOAUTVTZWVAYM.jpg\"}}}]', '<p><b>O curso de Educação Financeira vai ajudar você a organizar e melhorar as suas finanças.</b></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 15 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 15 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 1000</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 150</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 7</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 300 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 3 000&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><p><br></p>', 1, '2023-11-02 21:09:44', '2023-11-20 15:23:18', 500, 1, 1),
(90, 'ORT23', 'Oratória', '[{\"type\":\"Image\",\"id\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ\",\"name\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\",\"url\":\"\\/uploads\\/courses\\/EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\",\"sizes\":{\"min\":{\"id\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ\",\"name\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\"},\"med\":{\"id\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ\",\"name\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\"},\"max\":{\"id\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ\",\"name\":\"EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/EWPAKIBQXGBHIWGZEYZSTNUWRIEVZZBEAJGOINVCCPRHSHSRYVXQEUSLEUUTZUSGLTMYZBZJOOCMPBCZRAEAPOTSMJYYDVYNWDWJ.jpg\"}}}]', '<p><span style=\"font-weight: bolder;\">O curso de Oratória vai ajudar você a saber falar no público, vencer a timidez e Aumentar a sua Confiança.</span></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 8 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 8 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 400</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 50</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 4</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 150 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 700&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></p>', 1, '2023-11-02 21:25:31', '2023-11-20 15:18:56', 500, 0, 1),
(91, 'HTML_CSS 23', 'HTML e CSS para Iniciantes', '[{\"type\":\"Image\",\"id\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX\",\"name\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\",\"url\":\"\\/uploads\\/courses\\/XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\",\"sizes\":{\"min\":{\"id\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX\",\"name\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\"},\"med\":{\"id\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX\",\"name\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\"},\"max\":{\"id\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX\",\"name\":\"XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/XEZAETVENSFXUGDVJCLYEUYDOXBEZKJSLYLUHQOIFCFXMRCSQKMIJSPDLZWTTDBLZPAWEYTKNRDINOIOCDQUZWRINMWBGOQNCOLX.png\"}}}]', '<p><span style=\"font-weight: bolder;\">Esse curso vai ajudar você a saber programar, criar websites e Aplicativos para a sua Empresa.</span></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 5 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 5 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 100</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 11</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 50 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 300 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></p>', 1, '2023-11-18 19:08:12', '2023-11-22 01:41:24', 500, 0, 1),
(92, 'VENDAS-2023', 'Técnicas de Vendas', '[{\"type\":\"Image\",\"id\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ\",\"name\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\",\"url\":\"\\/uploads\\/courses\\/RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\",\"sizes\":{\"min\":{\"id\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ\",\"name\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\"},\"med\":{\"id\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ\",\"name\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\"},\"max\":{\"id\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ\",\"name\":\"RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/RYVVPESABJYATEENZQIHAAKEMKUCETUBKDSTTZHJDVPAYQTRSUQSKFYCTAAMNBQHYYAAOZQBEGEEEPBZTVTILWKQRQYEZDUCJIFJ.jpg\"}}}]', '<p><span style=\"font-weight: bolder;\">Esse curso vai ajudar você a desenvolver técnicas de vendas e&nbsp; saber posicionar sua empresa no mercado.</span></p><p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 9 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 9 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 300</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 43</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 2</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 430 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 1000&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2023-12-04 09:42:01', '2023-12-04 14:46:49', 500, 0, 1),
(93, 'ContaB-2024', 'Contabilidade Geral Básica', '[{\"type\":\"Image\",\"id\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ\",\"name\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\",\"url\":\"\\/uploads\\/courses\\/UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\",\"sizes\":{\"min\":{\"id\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ\",\"name\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\"},\"med\":{\"id\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ\",\"name\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\"},\"max\":{\"id\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ\",\"name\":\"UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/UYDOJRFLKHMOPFJRQZXKEFTUQGLLDIXFJQFCDAZENVPWCWMEBAIRJOEJSLNRWREBYHEBMROISYNGHKFKTGKLVYSSIVKTDYXRZAWJ.jpg\"}}}]', '<p>Prezado Cursante, para Submeter a sua Candidatura ao <span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Emprego e </span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Estágio Profissional,</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Deve:</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">1. Concluir o Curso;</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">2. Requisitar o Certificado; e</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">3. Enviar para: </span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">rh@makemoney.co.mz.</span></p><p><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 2 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 2 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 10</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 20 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 100 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2023-12-25 19:10:57', '2024-01-13 16:07:33', 500, 0, 1),
(94, 'GestDig-2024', 'Marketing Digital', '[{\"type\":\"Image\",\"id\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO\",\"name\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\",\"url\":\"\\/uploads\\/courses\\/BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\",\"sizes\":{\"min\":{\"id\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO\",\"name\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\"},\"med\":{\"id\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO\",\"name\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\"},\"max\":{\"id\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO\",\"name\":\"BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/BMBPPIEAWZQRUMDILDHMECGLXMWDKNNMNBCSXUHAWCBXTWHMEDAPHLJPBWENPNZIJHJGITFBCIXOFKKOBHHFSMYNCRCPBRLLCNXO.webp\"}}}]', '<p>Prezado Cursante, para Submeter a sua Candidatura ao&nbsp;<span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Emprego e&nbsp;</span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Estágio Profissional,</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Deve:</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">1. Concluir o Curso;</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">2. Requisitar o Certificado; e</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">3. Enviar para:&nbsp;</span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">rh@makemoney.co.mz.</span></p><p><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 3 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 3 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 30</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 6</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 80 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 80&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2023-12-26 21:22:34', '2024-01-13 16:05:03', 500, 0, 1),
(95, 'Fotog2023', 'Fotografia', '[]', NULL, 0, '2023-12-27 21:34:41', '2023-12-27 21:58:15', 500, 0, 1);
INSERT INTO `course` (`id`, `reference`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`, `price`, `use_order`, `separate_by_type`) VALUES
(96, 'HST-24', 'HST', '[{\"type\":\"Image\",\"id\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV\",\"name\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\",\"url\":\"\\/uploads\\/courses\\/SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\",\"sizes\":{\"min\":{\"id\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV\",\"name\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\"},\"med\":{\"id\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV\",\"name\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\"},\"max\":{\"id\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV\",\"name\":\"SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/SABWVKOHJAZDYDGXZGVMXCBFJZVMNNQFJJXETRGMJYKVDSPUNNMJNNQSNLFNSBFEPNDYHZEXBTQTMOXGPIWVNTJQDVHDTXJIWZCV.jpg\"}}}]', '<p><span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 4 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 4 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 40</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 8</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 140 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 90 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2024-01-07 16:14:04', '2024-01-13 16:01:19', 500, 0, 1),
(97, 'ATDPUB2024', 'ATENDIMENTO AO PÚBLICO', '[{\"type\":\"Image\",\"id\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW\",\"name\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\",\"url\":\"\\/uploads\\/courses\\/JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\",\"sizes\":{\"min\":{\"id\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW\",\"name\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\"},\"med\":{\"id\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW\",\"name\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\"},\"max\":{\"id\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW\",\"name\":\"JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/JEEAXGMZYDPWSGYGDABCXVGDMVNHUAOZHUUNHEBWNZZIEEICNPXUQSWARWCKIDBFJYFGURLKTMQLZZYIKRLYQKKAIJPGITKLPUWW.jpg\"}}}]', '<p>Prezado Cursante, para Submeter a sua Candidatura ao&nbsp;<span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Emprego e&nbsp;</span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Estágio Profissional,</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Deve:</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">1. Concluir o Curso;</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">2. Requisitar o certificado; e </span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">3. Enviar para:&nbsp;</span><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">rh@makemoney.co.mz.</b></p><p><br></p><p><span style=\"font-weight: bolder;\">+ 5 000</span>&nbsp;Cursantes&nbsp; Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 5 000</span>&nbsp;Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 50</span>&nbsp;Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 9</span>&nbsp;Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>&nbsp; Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 150 000</span>&nbsp;Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 100&nbsp;</span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas&nbsp;Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2024-01-13 12:58:06', '2024-01-17 16:41:00', 500, 0, 1),
(98, 'AUXADMN2024', 'AUXILIAR ADMINISTRATIVO', '[{\"type\":\"Image\",\"id\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK\",\"name\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\",\"url\":\"\\/uploads\\/courses\\/JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\",\"sizes\":{\"min\":{\"id\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK\",\"name\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\"},\"med\":{\"id\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK\",\"name\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\"},\"max\":{\"id\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK\",\"name\":\"JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/JBMZSSNNXSJINYEJRPSACMWTLEPLUUJSPOBBTSASECCDPEFUVBASTUKDMXMPGVLQXHRCHORNOOFFSAUJETRLRYAVSAURWELEWILK.webp\"}}}]', '<p>Prezado Cursante, para Submeter a sua Candidatura ao <span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Emprego e </span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Estágio Profissional,</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Deve:</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">1. Concluir o Curso;</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">2. Requisitar o Certificado; e</span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">3. Enviar para: </span><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">rh@makemoney.co.mz.</span></p><p><span style=\"font-weight: bolder; background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 5 000</span> Cursantes  Ativos<span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><br></span></span></p><p><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\">+ 5 000</span> Certificados Emitidos</span></p><p><span style=\"font-weight: bolder;\">+ 50</span> Certificados Requisitados por Semana<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 9</span> Certificados Requisitados por Dia<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 1</span>  Certificados Requisitados por Hora<span style=\"font-weight: bolder;\"><br></span></p><p><span style=\"font-weight: bolder;\">+ 150 000</span> Horas Assistidas</p><p><span style=\"font-weight: bolder;\">+ 100 </span><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\">Horas Assistidas Por Dia</span></p><div><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); font-weight: var(--mdb-body-font-weight); text-align: var(--mdb-body-text-align);\"><br></span></div>', 1, '2024-01-13 14:42:13', '2024-01-13 15:53:12', 500, 0, 1),
(99, '2024-Ingles Inter', 'Ingles Intermedio', '[{\"type\":\"Image\",\"id\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT\",\"name\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\",\"url\":\"\\/uploads\\/courses\\/WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\",\"sizes\":{\"min\":{\"id\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT\",\"name\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/min\\/WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\"},\"med\":{\"id\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT\",\"name\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/med\\/WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\"},\"max\":{\"id\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT\",\"name\":\"WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\",\"url\":\"\\/uploads\\/thumbnails\\/courses\\/max\\/WBCUVSANDRKJUFAQBCJEGDRAVIALAKZLQWWZZMYOELXPNTRYQMMMRCGLUCFPLVJFSUVXEQILRERVFGUHNASENSUAASTZRPZGSKLT.png\"}}}]', NULL, 1, '2024-07-09 10:31:49', '2024-07-13 11:40:21', 500, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Saúde', NULL, 1, '2023-08-05 12:27:49', '2023-08-05 12:27:49'),
(2, 'Desporto', NULL, 1, '2023-08-05 12:27:49', '2023-08-05 12:27:49'),
(10, 'Programação', NULL, 1, '2023-08-06 01:06:04', '2023-08-06 01:06:04'),
(11, 'Tecnologia', NULL, 1, '2023-08-06 03:05:35', '2023-08-06 03:05:35'),
(12, 'Contabilidade e Finanças', NULL, 1, '2023-08-07 00:03:20', '2023-08-07 00:03:20'),
(13, 'Beleza', NULL, 1, '2023-08-07 21:41:42', '2023-08-07 21:41:42'),
(14, 'Engenharia', NULL, 1, '2023-08-09 18:30:21', '2023-08-09 18:30:21'),
(15, 'Música', NULL, 1, '2023-08-13 17:43:07', '2023-08-13 17:43:07'),
(16, 'EMPREEMDEDORIMO', NULL, 1, '2023-08-14 11:55:06', '2023-08-14 11:55:06'),
(17, 'Línguas', NULL, 1, '2023-09-02 19:19:42', '2023-09-02 19:19:42'),
(18, 'Jogos', NULL, 1, '2023-09-15 16:41:12', '2023-09-15 16:41:12'),
(19, 'TESTE1', NULL, 1, '2023-10-26 20:31:59', '2023-10-26 20:31:59'),
(20, 'FINANÇAS', NULL, 1, '2023-11-02 23:08:52', '2023-11-02 23:08:52'),
(21, 'Oratória', NULL, 1, '2023-11-02 23:25:09', '2023-11-02 23:25:09'),
(22, 'Empreendedorismo', NULL, 1, '2023-11-18 15:46:19', '2023-11-18 15:46:19'),
(23, 'Plano de Negócio', NULL, 1, '2023-11-18 20:47:14', '2023-11-18 20:47:14'),
(24, 'Educação Financeira', NULL, 1, '2023-11-18 20:48:51', '2023-11-18 20:48:51'),
(25, 'Espanhol', NULL, 1, '2023-11-18 20:50:43', '2023-11-18 20:50:43'),
(26, 'Francês', NULL, 1, '2023-11-18 20:52:14', '2023-11-18 20:52:14'),
(27, 'Inglês', NULL, 1, '2023-11-18 20:53:55', '2023-11-18 20:53:55'),
(28, 'Chinês-Mandarim', NULL, 1, '2023-11-18 20:56:58', '2023-11-18 20:56:58'),
(29, 'Informática', NULL, 1, '2023-11-18 20:59:17', '2023-11-18 20:59:17'),
(30, 'Excel', NULL, 1, '2023-11-18 21:00:58', '2023-11-18 21:00:58'),
(31, 'Programação Web', NULL, 1, '2023-11-18 21:07:43', '2023-11-18 21:07:43'),
(32, 'Marketing', NULL, 1, '2023-12-04 11:41:36', '2023-12-04 11:41:36'),
(33, 'Contabilidade', NULL, 1, '2023-12-25 21:10:33', '2023-12-25 21:10:33'),
(34, 'Ciências Econômicas', NULL, 1, '2023-12-26 20:01:54', '2023-12-26 20:01:54'),
(35, 'Gestão de Conteúdos', NULL, 1, '2023-12-26 23:17:11', '2023-12-26 23:17:11'),
(36, 'Fotografia', NULL, 1, '2023-12-27 23:34:29', '2023-12-27 23:34:29'),
(37, 'HST', NULL, 1, '2024-01-07 18:13:44', '2024-01-07 18:13:44'),
(38, 'ATENDIMENTO AO PÚBLICO', NULL, 1, '2024-01-13 14:57:32', '2024-01-13 14:57:32'),
(39, 'AUXILIAR ADMINISTRATIVO', NULL, 1, '2024-01-13 16:43:21', '2024-01-13 16:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `course_has_category`
--

CREATE TABLE `course_has_category` (
  `id` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `course_category_id` bigint(20) NOT NULL,
  `date_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course_has_category`
--

INSERT INTO `course_has_category` (`id`, `course_id`, `course_category_id`, `date_joined`) VALUES
(1, 64, 2, '2023-08-03 22:26:38'),
(2, 67, 1, '2023-08-03 22:26:38'),
(6, 70, 2, '2023-08-05 18:29:17'),
(7, 71, 10, '2023-08-06 01:06:12'),
(8, 72, 10, '2023-08-06 03:49:43'),
(9, 73, 11, '2023-08-06 04:16:38'),
(10, 74, 22, '2023-08-07 00:04:13'),
(12, 76, 14, '2023-08-09 18:31:54'),
(13, 77, 15, '2023-08-13 17:43:45'),
(14, 78, 30, '2023-08-14 11:58:22'),
(15, 79, 29, '2023-08-22 04:23:34'),
(16, 80, 17, '2023-09-02 19:25:42'),
(17, 81, 28, '2023-09-02 19:26:38'),
(18, 82, 27, '2023-09-02 19:27:33'),
(19, 84, 26, '2023-09-02 20:39:05'),
(20, 85, 25, '2023-09-02 20:40:17'),
(21, 83, 27, '2023-09-03 16:09:55'),
(22, 86, 18, '2023-09-15 16:43:17'),
(23, 87, 18, '2023-09-22 11:35:37'),
(24, 88, 23, '2023-11-02 22:49:29'),
(25, 89, 24, '2023-11-02 23:09:44'),
(26, 90, 21, '2023-11-02 23:25:31'),
(27, 91, 31, '2023-11-18 21:08:12'),
(28, 92, 32, '2023-12-04 11:42:01'),
(29, 93, 34, '2023-12-25 21:10:57'),
(30, 94, 32, '2023-12-26 23:22:34'),
(31, 95, 36, '2023-12-27 23:45:44'),
(32, 97, 38, '2024-01-13 14:58:06'),
(33, 98, 39, '2024-01-13 16:43:34'),
(34, 99, 17, '2024-07-09 12:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `code`, `city_id`, `user_id`, `phone`, `email`, `gender`, `created_at`, `updated_at`) VALUES
(34, 'Jusmen', 'Swedish', '', 1, 3, '877001734', 'jswedish200@gmail.com', 'M', '2023-04-12 01:22:50', '2024-05-26 15:54:43'),
(36, 'Makemoney', 'Reseller', 'MAKEMONEY', NULL, 5, '840000000', 'makemoney@makemoney.com', NULL, '2023-04-13 12:30:06', '2023-04-13 12:30:06'),
(38, 'Hilario', 'Hugo', 'VG-10038', 1, 7, '847001734', 'hilario.c.c.hugo@gmail.com', NULL, '2023-08-06 02:41:21', '2023-08-06 03:08:44'),
(39, 'Silvano', 'Sitoe', 'VD-10039', 1, 8, '860247223', 'silvanositoe97@gmail.com', 'M', '2023-08-06 17:02:08', '2023-12-14 14:59:31'),
(40, 'Gerson', 'Munguambe', 'VG-10040', 1, 9, '844782233', 'gersondasilvamunguambe@gmail.com', 'M', '2023-08-06 20:02:56', '2023-11-28 12:04:55'),
(41, 'Gerson', 'Munguambe', NULL, 1, 10, NULL, 'gersonbaltazar22@gmail.com', NULL, '2023-08-14 10:13:03', '2023-08-14 10:13:03'),
(42, 'Aylton', 'Muianga', 'VD-10042', 1, 11, '848088209', 'ayltonmuaianga@gmail.com', NULL, '2023-09-07 15:19:30', '2023-09-07 15:22:57'),
(43, 'Mércia', 'Francisco', NULL, 2, 12, NULL, 'merciagabrielf@gmail.com', NULL, '2023-09-07 22:52:41', '2023-09-07 22:52:41'),
(44, 'Antonia', 'Vembane', 'VD-10044', 1, 13, '848906924', 'fachitavembane@gmail.com', NULL, '2023-09-09 13:18:41', '2023-09-09 20:24:42'),
(45, 'Gelson', 'António', NULL, 1, 14, NULL, 'gelsoncarlos19@gmail.com', NULL, '2023-09-10 20:52:38', '2023-09-10 20:52:38'),
(46, 'Elias', 'Matola', NULL, 1, 15, NULL, 'eliasamericomatola421@gmail.com', NULL, '2023-09-11 10:06:53', '2023-09-11 10:06:53'),
(47, 'Zélio Júlio', 'Simango', NULL, 2, 16, NULL, 'Zeliosimango1@gmail.com', NULL, '2023-09-11 17:41:37', '2023-09-11 17:41:37'),
(48, 'Yurin', 'Chilaule', NULL, 1, 17, NULL, 'yurenchilaule@gmail.com', NULL, '2023-09-11 21:03:12', '2023-09-11 21:03:12'),
(49, 'NoName', 'NoName', NULL, 1, 18, NULL, 'noname@gmail.com', NULL, '2023-09-14 10:56:07', '2023-09-14 10:56:07'),
(50, 'Bruno', 'Nhamazana', NULL, 1, 19, NULL, 'Brunonhamazana@gmail.com', NULL, '2023-09-14 11:43:04', '2023-09-14 11:43:04'),
(51, 'Eugénio', 'Emiliano', NULL, 3, 20, NULL, 'emilianoarrasta@gmail.com', NULL, '2023-09-18 18:08:40', '2023-09-18 18:08:40'),
(52, 'Sil', 'Vano', NULL, 1, 21, NULL, 'silvanositoe@gmail.com', NULL, '2023-09-20 17:28:15', '2023-09-20 17:28:15'),
(53, 'paulo jorge', 'waite', NULL, 3, 22, NULL, 'paulojorgewaite@gmail.com', NULL, '2023-09-22 07:44:16', '2023-09-22 07:44:16'),
(54, 'Hortência', 'Mutambisse', NULL, 8, 23, NULL, 'hortenciapedromutambisse@gmail.com', NULL, '2023-09-25 18:51:31', '2023-09-25 18:51:31'),
(55, 'Olimpía', 'Pondja', NULL, 1, 24, NULL, 'olimpiapondja537@gmail.com', NULL, '2023-09-27 21:10:54', '2023-09-27 21:10:54'),
(56, 'Jhf', 'Dhkkff', NULL, 1, 25, NULL, 'Cjfhjfdd@fhjj.cjhg', NULL, '2023-10-04 04:54:33', '2023-10-04 04:54:33'),
(57, 'Ivo', 'Dengo', NULL, 1, 26, '841816957', 'ivodengo0@gmail.com', 'M', '2023-10-12 19:37:51', '2023-10-12 19:43:55'),
(58, 'Vasco Nhanda', 'Nhanda', NULL, 2, 27, NULL, 'vasconhandaguambe@gmail.com', NULL, '2023-10-13 07:25:05', '2023-10-13 07:25:05'),
(59, 'Alceu', 'Manjate', NULL, 2, 28, NULL, 'malceu2@gmail.com', NULL, '2023-10-14 14:10:59', '2023-10-14 14:10:59'),
(60, 'Edinel', 'Mulhanga', 'VG-10060', 1, 29, '846139439', 'edinelmulhanga@gmail.com', 'F', '2023-11-28 11:02:02', '2023-11-29 08:37:28'),
(61, 'Ultron', 'Swedish', NULL, 1, 30, '+258847001734', 'ultronhilas@gmail.com', NULL, '2023-12-09 04:52:27', '2023-12-09 04:52:27'),
(62, 'Teste', 'Teste', NULL, 1, 31, '860247223', 'silvanoteste@gmail.com', NULL, '2023-12-09 10:29:49', '2023-12-09 10:29:49'),
(63, 'Francisco', 'Matavel Júnior', NULL, 1, 32, '848230340', 'framatavel@gmail.com', NULL, '2023-12-27 12:33:09', '2023-12-27 12:33:09'),
(64, 'Cleyton Adelino', 'Cumbane', NULL, 9, 33, NULL, 'cleytonadelinocumbane@gmail.com', NULL, '2024-03-17 11:09:07', '2024-03-17 11:09:07'),
(65, 'Miranda Salvador', 'Massango', 'VG-10065', 2, 34, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:47', '2024-05-15 14:58:36'),
(66, 'Miranda Salvador', 'Massango', NULL, 2, 35, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:47', '2024-05-15 08:13:47'),
(67, 'Miranda Salvador', 'Massango', NULL, 2, 36, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:47', '2024-05-15 08:13:47'),
(68, 'Miranda Salvador', 'Massango', NULL, 2, 37, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:50', '2024-05-15 08:13:50'),
(69, 'Miranda Salvador', 'Massango', NULL, 2, 38, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:51', '2024-05-15 08:13:51'),
(70, 'Miranda Salvador', 'Massango', NULL, 2, 39, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:52', '2024-05-15 08:13:52'),
(71, 'Miranda Salvador', 'Massango', NULL, 2, 40, '875664081', 'Myraymassango@icloud.com', NULL, '2024-05-15 08:13:52', '2024-05-15 08:13:52'),
(72, 'Jessica Felismina', 'Mandlate', NULL, 1, 41, '845724346', 'jessicamandlate@gmail.com', NULL, '2024-05-15 08:16:43', '2024-05-15 08:16:43'),
(73, 'Jessica', 'Mandlate', 'VG-10073', 2, 42, '845724346', 'jessicamandlate5@gmail.com', NULL, '2024-05-15 08:32:03', '2024-06-05 10:00:59'),
(74, 'Frederico', 'Adriano', NULL, 4, 43, '871100766', 'fredericoadriano808@gmail.com', NULL, '2024-05-28 14:26:27', '2024-05-28 14:26:27'),
(75, 'Eminercia', 'Mazuze', NULL, 1, 44, '842670410', 'eminerciamazuze4342@gmail.com', NULL, '2024-05-29 09:41:26', '2024-05-29 09:41:26'),
(76, 'Eminercia', 'Mazuze', 'VG-10076', 1, 45, '866932937', 'eminerciarafaelmazuze@gmail.com', NULL, '2024-05-29 10:13:56', '2024-05-29 10:22:23'),
(77, 'Mércia Gabriel', 'Francisco', 'VG-10077', 2, 46, '874559030', 'merciaxavie@icloud.com', NULL, '2024-06-06 09:05:29', '2024-06-11 08:23:38'),
(78, 'Mércia Gabriel', 'Francisco', NULL, 2, 47, '874559030', 'merciaxavie@icloud.com', NULL, '2024-06-06 09:05:30', '2024-06-06 09:05:30'),
(79, 'Emilda Natau Armando', 'Nhantumbo', NULL, 1, 48, '870195439', 'Emildanhantumbonhantumbo@gmail.co', NULL, '2024-06-06 09:05:41', '2024-06-06 09:05:41'),
(80, 'fernando', 'mussuei', 'VG-10080', 1, 49, '846347501', 'mariamussuei788@gmail.com', NULL, '2024-06-07 09:20:23', '2024-06-07 09:49:36'),
(81, 'fernando', 'mussuei', NULL, 1, 50, '846347501', 'mariamussuei788@gmail.com', NULL, '2024-06-07 09:20:24', '2024-06-07 09:20:24'),
(82, 'fernando', 'mussuei', NULL, 1, 51, '846347501', 'fernando12@gmail.com', NULL, '2024-06-07 09:21:23', '2024-06-07 09:21:23'),
(83, 'Francisca', 'Gimo', NULL, 1, 53, '851513784', 'franciscagimo5419@gmail.com', NULL, '2024-06-10 10:24:45', '2024-06-10 10:24:45'),
(84, 'Francisca', 'Gimo', NULL, 1, 52, '851513784', 'franciscagimo5419@gmail.com', NULL, '2024-06-10 10:24:45', '2024-06-10 10:24:45'),
(85, 'Niquice', 'Mazive', NULL, 8, 54, '865407700', 'niquicen6@gmail.com', 'M', '2024-06-10 11:48:44', '2024-06-10 11:50:51'),
(86, 'Gerson', 'Arlindo Mutsuque', NULL, 1, 55, '868205383', 'gersonarlindo2@gmail.com', NULL, '2024-06-10 14:33:48', '2024-06-10 14:33:48'),
(87, 'Reginaldo', 'Nhone', NULL, 1, 56, '879536969', 'Reginaldorofu@gmail.com', NULL, '2024-06-11 14:48:42', '2024-06-11 14:48:42'),
(88, 'Reginaldo', 'Nhone', 'VG-10088', 1, 57, '879536969', 'Reginaldoroful@gmail.com', NULL, '2024-06-11 15:01:26', '2024-06-11 15:25:13'),
(89, 'Bildra', 'Agostinho Lombe', NULL, 1, 58, '840568573', 'bildraagostinho@gmail.com', NULL, '2024-06-11 16:55:47', '2024-06-11 16:55:47'),
(90, 'Mario', 'Junior', NULL, 2, 59, NULL, 'mariojorgemiganojr@icloud.com', NULL, '2024-06-11 18:03:22', '2024-06-11 18:03:22'),
(91, 'Ilódia', 'Bernardo', NULL, 1, 60, '847747584', 'ilodiachande@gmail.com', NULL, '2024-06-13 08:51:23', '2024-06-13 08:51:23'),
(92, 'Calado', 'Chicumule', 'VP-10092', 1, 61, '846763876', 'Caladojchi87@gmail.com', 'M', '2024-06-18 10:39:31', '2024-06-20 08:44:23'),
(93, 'Laurinda', 'Macôo', NULL, 8, 62, '842172900', 'Laurindamacoo9@gmail.com', NULL, '2024-06-18 15:07:32', '2024-06-18 15:07:32'),
(94, 'ilidio', 'Zucula', NULL, 1, 63, '844604669', 'ilidioalberto27@gmail.com', NULL, '2024-06-20 10:43:26', '2024-06-20 10:43:26'),
(95, 'Mário', 'Sitoe', NULL, 8, 64, '874297132', 'sitoemario864@gmail.com', NULL, '2024-07-23 17:29:33', '2024-07-23 17:29:33'),
(135, 'Alberto', 'Elias', NULL, 5, 104, '875380241', 'albertoeliassozai@gmail.com', NULL, '2024-08-07 09:32:50', '2024-08-07 09:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `entity` varchar(60) DEFAULT NULL,
  `description` text NOT NULL,
  `obs` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `notify_role` text DEFAULT NULL,
  `action` varchar(80) DEFAULT NULL,
  `action_from_user_id` bigint(20) DEFAULT NULL,
  `action_to_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `title`, `entity`, `description`, `obs`, `created_at`, `updated_at`, `active`, `notify_role`, `action`, `action_from_user_id`, `action_to_user_id`) VALUES
(1, 'Treasure  \"qwewe\" created', 'treasure', 'A new treasure was created by: Brymond Tech at: 2023-02-22 09:36:28', NULL, '2023-02-22 07:36:28', '2023-02-22 07:36:28', 1, NULL, 'create', NULL, NULL),
(2, 'Treasure  \"O poder da mentess\" created', '', 'A new treasure was created by: Brymond Tech at: 2023-02-22 09:37:53', NULL, '2023-02-22 07:37:53', '2023-02-22 07:37:53', 1, NULL, 'create', NULL, NULL),
(3, 'Treasure  \"2343\" created', '', 'A new treasure was created by: Brymond Tech at: 2023-02-22 09:38:50', NULL, '2023-02-22 07:38:50', '2023-02-22 07:38:50', 1, NULL, 'create', 1, NULL),
(4, 'Treasure  \"qwewesss\" was changed', 'Treasure', 'Changes were made in \"\" by user: Brymond Tech at: 2023-02-22 10:32:35', NULL, '2023-02-22 10:32:35', '2023-02-22 10:32:35', 1, NULL, 'update', 1, NULL),
(5, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"20\" by user: Brymond Tech at: 2023-02-22 10:34:14', NULL, '2023-02-22 10:34:14', '2023-02-22 10:34:14', 1, NULL, 'update', 1, NULL),
(6, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount_percentage\" by user: Brymond Tech at: 2023-02-22 10:36:11', NULL, '2023-02-22 10:36:11', '2023-02-22 10:36:11', 1, NULL, 'update', 1, NULL),
(7, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"\" by user: Brymond Tech at: 2023-02-22 10:44:49', NULL, '2023-02-22 10:44:49', '2023-02-22 10:44:49', 1, NULL, 'update', 1, NULL),
(8, 'Treasure  \"qwewesss sdfdsf\" was changed', 'Treasure', 'Changes were made in \"\" by user: Brymond Tech at: 2023-02-22 10:46:04', NULL, '2023-02-22 10:46:04', '2023-02-22 10:46:04', 1, NULL, 'update', 1, NULL),
(9, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"discount percentage\" by user: Brymond Tech at: 2023-02-22 10:50:47', NULL, '2023-02-22 10:50:47', '2023-02-22 10:50:47', 1, NULL, 'update', 1, NULL),
(10, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"discount percentage\" by user: Brymond Tech at: 2023-02-22 10:52:11', NULL, '2023-02-22 10:52:11', '2023-02-22 10:52:11', 1, NULL, 'update', 1, NULL),
(11, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"name,discount percentage\" by user: Brymond Tech at: 2023-02-22 10:54:33', NULL, '2023-02-22 10:54:33', '2023-02-22 10:54:33', 1, NULL, 'update', 1, NULL),
(12, 'Treasure  \"Virtual Gold2 adssd\" was changed', 'Treasure', 'Changes were made in \"name,description\" by user: Brymond Tech at: 2023-02-22 10:59:47', NULL, '2023-02-22 10:59:48', '2023-02-22 10:59:48', 1, NULL, 'update', 1, NULL),
(13, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"status, price\" by user: Brymond Tech at: 2023-02-22 11:03:59', NULL, '2023-02-22 11:03:59', '2023-02-22 11:03:59', 1, NULL, 'update', 1, NULL),
(14, 'Treasure  \"qwewesss sdfdsf\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Brymond Tech at: 2023-02-22 17:15:25', NULL, '2023-02-22 17:15:25', '2023-02-22 17:15:25', 1, NULL, 'update', 1, NULL),
(15, 'Treasure  \"Virtual Gold2\" was changed', 'Treasure', 'Changes were made in \"name, image\" by user: Brymond Tech at: 2023-02-22 18:57:10', NULL, '2023-02-22 18:57:10', '2023-02-22 18:57:10', 1, NULL, 'update', 1, NULL),
(16, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Brymond Tech at: 2023-02-22 18:57:16', NULL, '2023-02-22 18:57:16', '2023-02-22 18:57:16', 1, NULL, 'update', 1, NULL),
(17, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"description, sku number\" by user: Brymond Tech at: 2023-02-22 18:59:07', NULL, '2023-02-22 18:59:07', '2023-02-22 18:59:07', 1, NULL, 'update', 1, NULL),
(18, 'Treasure  \"qwewesss sdfdsf\" was changed', 'Treasure', 'Changes were made in \"name, image, sku number\" by user: Brymond Tech at: 2023-02-22 19:00:52', NULL, '2023-02-22 19:00:52', '2023-02-22 19:00:52', 1, NULL, 'update', 1, NULL),
(19, 'Treasure  \"O poder da mentess\" was changed', 'Treasure', 'Changes were made in \"name, image, discount percentage, discounted price, sku number\" by user: Brymond Tech at: 2023-02-22 19:03:22', NULL, '2023-02-22 19:03:22', '2023-02-22 19:03:22', 1, NULL, 'update', 1, NULL),
(20, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"description\" by user: Brymond Tech at: 2023-02-22 19:04:08', NULL, '2023-02-22 19:04:08', '2023-02-22 19:04:08', 1, NULL, 'update', 1, NULL),
(21, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"status\" by user: Brymond Tech at: 2023-02-22 19:04:38', NULL, '2023-02-22 19:04:38', '2023-02-22 19:04:38', 1, NULL, 'update', 1, NULL),
(22, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"description\" by user: Brymond Tech at: 2023-02-22 19:05:08', NULL, '2023-02-22 19:05:08', '2023-02-22 19:05:08', 1, NULL, 'update', 1, NULL),
(23, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"sku number\" by user: Brymond Tech at: 2023-02-22 19:53:26', NULL, '2023-02-22 19:53:26', '2023-02-22 19:53:26', 1, NULL, 'update', 1, NULL),
(24, 'You have a new order: YZHUN2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 14:25:26', NULL, '2023-03-10 14:25:26', '2023-03-10 14:25:26', 1, NULL, 'create', 4, NULL),
(25, 'You have a new order: YMBTY2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 14:44:28', NULL, '2023-03-10 14:44:28', '2023-03-10 14:44:28', 1, NULL, 'create', 4, NULL),
(26, 'You have a new order: EOLUW2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 14:49:53', NULL, '2023-03-10 14:49:53', '2023-03-10 14:49:53', 1, NULL, 'create', 4, NULL),
(27, 'You have a new order: BFMLU2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 14:51:59', NULL, '2023-03-10 14:51:59', '2023-03-10 14:51:59', 1, NULL, 'create', 4, NULL),
(28, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"BFMLU2023\" at 2023-03-10 14:52:09', NULL, '2023-03-10 14:52:09', '2023-03-10 14:52:09', 1, NULL, 'create', 4, NULL),
(29, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"EOLUW2023\" at 2023-03-10 17:45:14', NULL, '2023-03-10 17:45:14', '2023-03-10 17:45:14', 1, NULL, 'create', 4, NULL),
(30, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"YMBTY2023\" at 2023-03-10 17:45:53', NULL, '2023-03-10 17:45:53', '2023-03-10 17:45:53', 1, NULL, 'create', 4, NULL),
(31, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"YZHUN2023\" at 2023-03-10 18:05:09', NULL, '2023-03-10 18:05:09', '2023-03-10 18:05:09', 1, NULL, 'create', 4, NULL),
(32, 'You have a new order: POUDY2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 20:15:54', NULL, '2023-03-10 20:15:54', '2023-03-10 20:15:54', 1, NULL, 'create', 4, NULL),
(33, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"POUDY2023\" at 2023-03-10 20:16:19', NULL, '2023-03-10 20:16:19', '2023-03-10 20:16:19', 1, NULL, 'create', 4, NULL),
(34, 'You have a new order: RADVQ2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 20:18:10', NULL, '2023-03-10 20:18:10', '2023-03-10 20:18:10', 1, NULL, 'create', 4, NULL),
(35, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"RADVQ2023\" at 2023-03-10 20:19:35', NULL, '2023-03-10 20:19:35', '2023-03-10 20:19:35', 1, NULL, 'create', 4, NULL),
(36, 'You have a new order: EMZOI2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 20:24:53', NULL, '2023-03-10 20:24:53', '2023-03-10 20:24:53', 1, NULL, 'create', 4, NULL),
(37, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"EMZOI2023\" at 2023-03-10 20:25:32', NULL, '2023-03-10 20:25:32', '2023-03-10 20:25:32', 1, NULL, 'create', 4, NULL),
(38, 'You have a new order: ZRHFA2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 21:32:33', NULL, '2023-03-10 21:32:33', '2023-03-10 21:32:33', 1, NULL, 'create', 4, NULL),
(39, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"ZRHFA2023\" at 2023-03-10 21:32:57', NULL, '2023-03-10 21:32:57', '2023-03-10 21:32:57', 1, NULL, 'create', 4, NULL),
(40, 'You have a new order: CMDAB2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 21:51:48', NULL, '2023-03-10 21:51:48', '2023-03-10 21:51:48', 1, NULL, 'create', 4, NULL),
(41, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"CMDAB2023\" at 2023-03-10 21:52:14', NULL, '2023-03-10 21:52:14', '2023-03-10 21:52:14', 1, NULL, 'create', 4, NULL),
(42, 'You have a new order: UXCPQ2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 21:53:27', NULL, '2023-03-10 21:53:27', '2023-03-10 21:53:27', 1, NULL, 'create', 4, NULL),
(43, 'You have a new order: NSQWI2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 21:58:04', NULL, '2023-03-10 21:58:04', '2023-03-10 21:58:04', 1, NULL, 'create', 4, NULL),
(44, 'You have a new order: DKEGT2023', 'Order', 'New Order for \"Virtual Gold\" from \"Silvano Makemoney\" was received at 2023-03-10 22:02:08', NULL, '2023-03-10 22:02:08', '2023-03-10 22:02:08', 1, NULL, 'create', 4, NULL),
(45, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"DKEGT2023\" at 2023-03-10 22:09:06', NULL, '2023-03-10 22:09:06', '2023-03-10 22:09:06', 1, NULL, 'create', 4, NULL),
(46, 'You have a new order: OHCXA2023', 'Order', 'New Order for \"Virtual Gold\" from \"Brymond Tech\" was received at 2023-03-11 07:46:18', NULL, '2023-03-11 07:46:18', '2023-03-11 07:46:18', 1, NULL, 'create', 1, NULL),
(47, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"OHCXA2023\" at 2023-03-11 07:46:39', NULL, '2023-03-11 07:46:39', '2023-03-11 07:46:39', 1, NULL, 'create', 1, NULL),
(48, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"UXCPQ2023\" at 2023-03-12 12:13:07', NULL, '2023-03-12 12:13:07', '2023-03-12 12:13:07', 1, NULL, 'create', 4, NULL),
(49, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"NSQWI2023\" at 2023-03-12 12:16:32', NULL, '2023-03-12 12:16:32', '2023-03-12 12:16:32', 1, NULL, 'create', 4, NULL),
(50, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"description\" by user: Brymond Tech at: 2023-04-01 18:39:23', NULL, '2023-04-01 18:39:23', '2023-04-01 18:39:23', 1, NULL, 'update', 1, NULL),
(51, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount, discount percentage, discounted price\" by user: Brymond Tech at: 2023-04-01 18:41:45', NULL, '2023-04-01 18:41:45', '2023-04-01 18:41:45', 1, NULL, 'update', 1, NULL),
(52, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Brymond Tech at: 2023-04-01 18:43:08', NULL, '2023-04-01 18:43:08', '2023-04-01 18:43:08', 1, NULL, 'update', 1, NULL),
(53, 'You have a new order: FYYQJ2023', 'Order', 'New Order for \"Virtual Gold\" from \"Jusmen Swedish\" was received at 2023-04-01 22:08:34', NULL, '2023-04-01 22:08:34', '2023-04-01 22:08:34', 1, NULL, 'create', 28, NULL),
(54, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"FYYQJ2023\" at 2023-04-01 22:12:46', NULL, '2023-04-01 22:12:46', '2023-04-01 22:12:46', 1, NULL, 'create', 28, NULL),
(55, 'You have a new order: TMXHH2023', 'Order', 'New Order for \"Virtual Diamond\" from \"Jusmen Swedish\" was received at 2023-04-02 10:40:12', NULL, '2023-04-02 10:40:12', '2023-04-02 10:40:12', 1, NULL, 'create', 28, NULL),
(56, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"TMXHH2023\" at 2023-04-02 10:40:23', NULL, '2023-04-02 10:40:23', '2023-04-02 10:40:23', 1, NULL, 'create', 28, NULL),
(57, 'You have a new order: GGQQK2023', 'Order', 'New Order for \"Virtual Platinum\" from \"Jusmen Swedish\" was received at 2023-04-02 10:41:29', NULL, '2023-04-02 10:41:29', '2023-04-02 10:41:29', 1, NULL, 'create', 28, NULL),
(58, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"GGQQK2023\" at 2023-04-02 10:44:17', NULL, '2023-04-02 10:44:17', '2023-04-02 10:44:17', 1, NULL, 'create', 28, NULL),
(59, 'You have a new order: NSODY2023', 'Order', 'New Order for \"Virtual Gold\" from \"Ultron Machine\" was received at 2023-04-02 12:51:54', NULL, '2023-04-02 12:51:54', '2023-04-02 12:51:54', 1, NULL, 'create', 31, NULL),
(61, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"NSODY2023\" at 2023-04-02 12:56:42', NULL, '2023-04-02 12:56:42', '2023-04-02 12:56:42', 1, NULL, 'create', 31, NULL),
(62, 'You have a new order: OXETJ2023', 'Order', 'New Order for \"Virtual Platinum\" from \"Ultron Machine\" was received at 2023-04-02 13:01:35', NULL, '2023-04-02 13:01:35', '2023-04-02 13:01:35', 1, NULL, 'create', 31, NULL),
(63, 'You have a new order: ENHCG2023', 'Order', 'New Order for \"Virtual Platinum\" from \"Ultron Machine\" was received at 2023-04-02 13:10:31', NULL, '2023-04-02 13:10:31', '2023-04-02 13:10:31', 1, NULL, 'create', 31, NULL),
(64, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"ENHCG2023\" at 2023-04-02 13:10:43', NULL, '2023-04-02 13:10:43', '2023-04-02 13:10:43', 1, NULL, 'create', 31, NULL),
(65, 'You have a new order: WZQOD2023', 'Order', 'New Order for \"Virtual Platinum\" from \"Hilary Boy\" was received at 2023-04-02 15:30:58', NULL, '2023-04-02 15:30:58', '2023-04-02 15:30:58', 1, NULL, 'create', 32, NULL),
(66, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"WZQOD2023\" at 2023-04-02 15:31:14', NULL, '2023-04-02 15:31:14', '2023-04-02 15:31:14', 1, NULL, 'create', 32, NULL),
(67, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, description, price, discounted price, sku number\" by user: Brymond Tech at: 2023-04-12 02:40:18', NULL, '2023-04-12 02:40:18', '2023-04-12 02:40:18', 1, NULL, 'update', 1, NULL),
(68, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Brymond Tech at: 2023-04-12 02:40:24', NULL, '2023-04-12 02:40:24', '2023-04-12 02:40:24', 1, NULL, 'update', 1, NULL),
(69, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"description, discount, discount percentage, discounted price\" by user: Brymond Tech at: 2023-04-12 02:44:19', NULL, '2023-04-12 02:44:19', '2023-04-12 02:44:19', 1, NULL, 'update', 1, NULL),
(70, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"description, discounted price, sku number\" by user: Brymond Tech at: 2023-04-12 02:44:33', NULL, '2023-04-12 02:44:33', '2023-04-12 02:44:33', 1, NULL, 'update', 1, NULL),
(71, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"discounted price, sku number\" by user: Brymond Tech at: 2023-04-12 02:44:39', NULL, '2023-04-12 02:44:39', '2023-04-12 02:44:39', 1, NULL, 'update', 1, NULL),
(72, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Brymond Tech at: 2023-04-12 02:44:59', NULL, '2023-04-12 02:44:59', '2023-04-12 02:44:59', 1, NULL, 'update', 1, NULL),
(73, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"description, price, discount percentage, discounted price, sku number\" by user: Brymond Tech at: 2023-04-12 02:46:03', NULL, '2023-04-12 02:46:03', '2023-04-12 02:46:03', 1, NULL, 'update', 1, NULL),
(74, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Brymond Tech at: 2023-04-12 02:46:22', NULL, '2023-04-12 02:46:22', '2023-04-12 02:46:22', 1, NULL, 'update', 1, NULL),
(75, 'You have a new order: HIZAV2023', 'Order', 'New Order for \"Virtual Gold\" from \"Jusmen Swedish\" was received at 2023-04-12 03:29:53', NULL, '2023-04-12 03:29:53', '2023-04-12 03:29:53', 1, NULL, 'create', 3, NULL),
(76, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"HIZAV2023\" at 2023-04-12 03:30:08', NULL, '2023-04-12 03:30:08', '2023-04-12 03:30:08', 1, NULL, 'create', 3, NULL),
(77, 'You have a new order: QEHGZ2023', 'Order', 'New Order for \"Virtual Gold\" from \"Jusmen Swedish\" was received at 2023-04-12 03:43:23', NULL, '2023-04-12 03:43:23', '2023-04-12 03:43:23', 1, NULL, 'create', 3, NULL),
(78, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"QEHGZ2023\" at 2023-04-12 03:43:38', NULL, '2023-04-12 03:43:38', '2023-04-12 03:43:38', 1, NULL, 'create', 3, NULL),
(79, 'You have a new order: ADTLX2023', 'Order', 'New Order for \"Virtual Gold\" from \"Jusmen Swedish\" was received at 2023-04-12 03:47:06', NULL, '2023-04-12 03:47:06', '2023-04-12 03:47:06', 1, NULL, 'create', 3, NULL),
(80, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"ADTLX2023\" at 2023-04-12 03:47:16', NULL, '2023-04-12 03:47:16', '2023-04-12 03:47:16', 1, NULL, 'create', 3, NULL),
(81, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-04-13 07:15:18', NULL, '2023-04-13 07:15:18', '2023-04-13 07:15:18', 1, NULL, 'update', 1, NULL),
(82, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-04-13 07:15:29', NULL, '2023-04-13 07:15:29', '2023-04-13 07:15:29', 1, NULL, 'update', 1, NULL),
(83, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-04-13 07:25:51', NULL, '2023-04-13 07:25:51', '2023-04-13 07:25:51', 1, NULL, 'update', 1, NULL),
(84, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-04-13 07:48:34', NULL, '2023-04-13 07:48:34', '2023-04-13 07:48:34', 1, NULL, 'update', 1, NULL),
(85, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-04-13 07:57:39', NULL, '2023-04-13 07:57:39', '2023-04-13 07:57:39', 1, NULL, 'update', 1, NULL),
(86, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-04-13 08:40:49', NULL, '2023-04-13 08:40:49', '2023-04-13 08:40:49', 1, NULL, 'update', 1, NULL),
(87, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"description, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-04-13 08:42:37', NULL, '2023-04-13 08:42:37', '2023-04-13 08:42:37', 1, NULL, 'update', 1, NULL),
(88, 'You have a new order: OOKWZ2023', 'Order', 'New Order for \"Virtual Platinum\" from \"Jusmen Swedish\" was received at 2023-04-13 15:32:37', NULL, '2023-04-13 15:32:37', '2023-04-13 15:32:37', 1, NULL, 'create', 3, NULL),
(89, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"OOKWZ2023\" at 2023-04-13 15:32:50', NULL, '2023-04-13 15:32:50', '2023-04-13 15:32:50', 1, NULL, 'create', 3, NULL),
(90, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image, discount percentage\" by user: Admin Makemoney at: 2023-04-13 15:41:11', NULL, '2023-04-13 15:41:11', '2023-04-13 15:41:11', 1, NULL, 'update', 1, NULL),
(91, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Admin Makemoney at: 2023-04-13 15:41:26', NULL, '2023-04-13 15:41:26', '2023-04-13 15:41:26', 1, NULL, 'update', 1, NULL),
(92, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-04-13 15:41:38', NULL, '2023-04-13 15:41:38', '2023-04-13 15:41:38', 1, NULL, 'update', 1, NULL),
(93, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Admin Makemoney at: 2023-04-13 15:48:23', NULL, '2023-04-13 15:48:23', '2023-04-13 15:48:23', 1, NULL, 'update', 1, NULL),
(94, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Admin Makemoney at: 2023-04-13 15:48:40', NULL, '2023-04-13 15:48:40', '2023-04-13 15:48:40', 1, NULL, 'update', 1, NULL),
(95, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Admin Makemoney at: 2023-04-13 16:07:28', NULL, '2023-04-13 16:07:28', '2023-04-13 16:07:28', 1, NULL, 'update', 1, NULL),
(96, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-04-13 19:03:02', NULL, '2023-04-13 19:03:02', '2023-04-13 19:03:02', 1, NULL, 'update', 1, NULL),
(97, 'You have a new order: DOTJD2023', 'Order', 'New Order for \"Virtual Gold\" from \"Admin Makemoney\" was received at 2023-04-13 19:19:15', NULL, '2023-04-13 19:19:15', '2023-04-13 19:19:15', 1, NULL, 'create', 1, NULL),
(98, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"DOTJD2023\" at 2023-04-13 19:19:26', NULL, '2023-04-13 19:19:26', '2023-04-13 19:19:26', 1, NULL, 'create', 1, NULL),
(99, 'Course  \"course1\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:00:06', NULL, '2023-07-30 02:00:06', '2023-07-30 02:00:06', 1, NULL, 'create', 1, NULL),
(100, 'Course  \"sadsad\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:08:35', NULL, '2023-07-30 02:08:35', '2023-07-30 02:08:35', 1, NULL, 'create', 1, NULL),
(101, 'Course  \"dsfsdfdsfdf\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:09:19', NULL, '2023-07-30 02:09:19', '2023-07-30 02:09:19', 1, NULL, 'create', 1, NULL),
(102, 'Course  \"Curso de Portugues\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:09:41', NULL, '2023-07-30 02:09:41', '2023-07-30 02:09:41', 1, NULL, 'create', 1, NULL),
(103, 'Course  \"english\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:26:52', NULL, '2023-07-30 02:26:52', '2023-07-30 02:26:52', 1, NULL, 'create', 1, NULL),
(104, 'Course  \"sdfdsfdsfdf\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-07-30 02:34:55', NULL, '2023-07-30 02:34:55', '2023-07-30 02:34:55', 1, NULL, 'create', 1, NULL),
(105, 'Course  \"sdfdsfdsfdf\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 03:15:07', NULL, '2023-07-30 03:15:07', '2023-07-30 03:15:07', 1, NULL, 'update', 1, NULL),
(106, 'Course  \"sdfdsfdsfdf\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-07-30 03:15:17', NULL, '2023-07-30 03:15:17', '2023-07-30 03:15:17', 1, NULL, 'update', 1, NULL),
(107, 'Course  \"sdfdsfdsfdf\" was changed', 'Course', 'Changes were made in \"name, description\" by user: Admin Makemoney at: 2023-07-30 03:15:31', NULL, '2023-07-30 03:15:31', '2023-07-30 03:15:31', 1, NULL, 'update', 1, NULL),
(108, 'Course  \"Curso de Portugues\" was changed', 'Course', 'Changes were made in \"image, status\" by user: Admin Makemoney at: 2023-07-30 03:20:00', NULL, '2023-07-30 03:20:00', '2023-07-30 03:20:00', 1, NULL, 'update', 1, NULL),
(109, 'Treasure  \"teste1111\" created', 'Treasure', 'A new treasure was created by: Admin Makemoney at: 2023-07-30 04:08:20', NULL, '2023-07-30 04:08:20', '2023-07-30 04:08:20', 1, NULL, 'create', 1, NULL),
(110, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:10:21', NULL, '2023-07-30 04:10:21', '2023-07-30 04:10:21', 1, NULL, 'update', 1, NULL),
(111, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:10:47', NULL, '2023-07-30 04:10:47', '2023-07-30 04:10:47', 1, NULL, 'update', 1, NULL),
(112, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:11:01', NULL, '2023-07-30 04:11:01', '2023-07-30 04:11:01', 1, NULL, 'update', 1, NULL),
(113, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:11:09', NULL, '2023-07-30 04:11:09', '2023-07-30 04:11:09', 1, NULL, 'update', 1, NULL),
(114, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:11:19', NULL, '2023-07-30 04:11:19', '2023-07-30 04:11:19', 1, NULL, 'update', 1, NULL),
(115, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-07-30 04:11:49', NULL, '2023-07-30 04:11:49', '2023-07-30 04:11:49', 1, NULL, 'update', 1, NULL),
(116, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"discount, discounted price\" by user: Admin Makemoney at: 2023-07-30 04:24:36', NULL, '2023-07-30 04:24:36', '2023-07-30 04:24:36', 1, NULL, 'update', 1, NULL),
(117, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-07-30 04:24:49', NULL, '2023-07-30 04:24:49', '2023-07-30 04:24:49', 1, NULL, 'update', 1, NULL),
(118, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-07-30 04:40:38', NULL, '2023-07-30 04:40:38', '2023-07-30 04:40:38', 1, NULL, 'update', 1, NULL),
(119, 'Treasure item  \"dsfdsf\" was changed', 'Treasure', 'Changes were made in \"name, description\"  by user: Admin Makemoney at: 2023-07-30 09:24:18', NULL, '2023-07-30 09:24:18', '2023-07-30 09:24:18', 1, NULL, 'update', 1, NULL),
(120, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-07-30 09:37:46', NULL, '2023-07-30 09:37:46', '2023-07-30 09:37:46', 1, NULL, 'update', 1, NULL),
(121, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-07-30 09:37:52', NULL, '2023-07-30 09:37:52', '2023-07-30 09:37:52', 1, NULL, 'update', 1, NULL),
(122, 'Course  \"Fitness\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-04 00:57:30', NULL, '2023-08-04 00:57:30', '2023-08-04 00:57:30', 1, NULL, 'update', 1, NULL),
(123, 'Course  \"english\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-08-05 09:34:49', NULL, '2023-08-05 09:34:49', '2023-08-05 09:34:49', 1, NULL, 'update', 1, NULL),
(124, 'Course  \"English\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-05 10:08:34', NULL, '2023-08-05 10:08:34', '2023-08-05 10:08:34', 1, NULL, 'update', 1, NULL),
(125, 'Course  \"English\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-05 10:09:22', NULL, '2023-08-05 10:09:22', '2023-08-05 10:09:22', 1, NULL, 'update', 1, NULL),
(126, 'Course  \"English\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-05 10:11:40', NULL, '2023-08-05 10:11:40', '2023-08-05 10:11:40', 1, NULL, 'update', 1, NULL),
(127, 'Course  \"asdsd\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-05 13:15:39', NULL, '2023-08-05 13:15:39', '2023-08-05 13:15:39', 1, NULL, 'create', 1, NULL),
(128, 'Course  \"asdsd\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-05 13:27:29', NULL, '2023-08-05 13:27:29', '2023-08-05 13:27:29', 1, NULL, 'update', 1, NULL),
(129, 'Course  \"asdsd\" was changed', 'Course', 'Changes were made in \"description, status\" by user: Admin Makemoney at: 2023-08-05 13:35:15', NULL, '2023-08-05 13:35:15', '2023-08-05 13:35:15', 1, NULL, 'update', 1, NULL),
(130, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-08-05 15:41:08', NULL, '2023-08-05 15:41:08', '2023-08-05 15:41:08', 1, NULL, 'update', 1, NULL),
(131, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"name, discounted price, sku number\" by user: Admin Makemoney at: 2023-08-05 15:41:19', NULL, '2023-08-05 15:41:19', '2023-08-05 15:41:19', 1, NULL, 'update', 1, NULL),
(132, 'Treasure  \"Virtual Platinum f\" was changed', 'Treasure', 'Changes were made in \"name, image, discounted price, sku number\" by user: Admin Makemoney at: 2023-08-05 15:41:43', NULL, '2023-08-05 15:41:43', '2023-08-05 15:41:43', 1, NULL, 'update', 1, NULL),
(133, 'Treasure  \"sadsadsadasdsad\" created', 'Treasure', 'A new treasure was created by: Admin Makemoney at: 2023-08-05 16:16:11', NULL, '2023-08-05 16:16:11', '2023-08-05 16:16:11', 1, NULL, 'create', 1, NULL),
(134, 'Treasure  \"sdasd\" created', 'Treasure', 'A new treasure was created by: Admin Makemoney at: 2023-08-05 16:21:16', NULL, '2023-08-05 16:21:16', '2023-08-05 16:21:16', 1, NULL, 'create', 1, NULL),
(135, 'Treasure  \"sdasd\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-08-05 16:22:08', NULL, '2023-08-05 16:22:08', '2023-08-05 16:22:08', 1, NULL, 'update', 1, NULL),
(136, 'Treasure  \"sdasd\" was changed', 'Treasure', 'Changes were made in \"name, discounted price, sku number\" by user: Admin Makemoney at: 2023-08-05 16:22:35', NULL, '2023-08-05 16:22:35', '2023-08-05 16:22:35', 1, NULL, 'update', 1, NULL),
(137, 'Treasure  \"Vip Premium Prestige\" was changed', 'Treasure', 'Changes were made in \"image, discounted price\" by user: Admin Makemoney at: 2023-08-05 16:22:53', NULL, '2023-08-05 16:22:53', '2023-08-05 16:22:53', 1, NULL, 'update', 1, NULL),
(138, 'Treasure  \"teste1111\" was changed', 'Treasure', 'Changes were made in \"discounted price, sku number\" by user: Admin Makemoney at: 2023-08-05 16:55:11', NULL, '2023-08-05 16:55:11', '2023-08-05 16:55:11', 1, NULL, 'update', 1, NULL),
(139, 'Course  \"English\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-05 17:19:21', NULL, '2023-08-05 17:19:21', '2023-08-05 17:19:21', 1, NULL, 'update', 1, NULL),
(140, 'Course  \"English\" was changed', 'Course', 'Changes were made in \"reference, name, description\" by user: Admin Makemoney at: 2023-08-05 18:01:12', NULL, '2023-08-05 18:01:12', '2023-08-05 18:01:12', 1, NULL, 'update', 1, NULL),
(141, 'Course  \"Fitness\" was changed', 'Course', 'Changes were made in \"reference, name, description\" by user: Admin Makemoney at: 2023-08-05 18:09:06', NULL, '2023-08-05 18:09:06', '2023-08-05 18:09:06', 1, NULL, 'update', 1, NULL),
(142, 'Course  \"Curso Online Grátis de Inglês Básico\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-05 18:10:21', NULL, '2023-08-05 18:10:21', '2023-08-05 18:10:21', 1, NULL, 'update', 1, NULL),
(143, 'Course  \"Curso de Contabilidade Básica\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-05 18:12:49', NULL, '2023-08-05 18:12:49', '2023-08-05 18:12:49', 1, NULL, 'create', 1, NULL),
(144, 'Course  \"Curso Gestão de Conteúdos digitais\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-05 19:01:12', NULL, '2023-08-05 19:01:12', '2023-08-05 19:01:12', 1, NULL, 'update', 1, NULL),
(145, 'Treasure  \"Vip Premium Prestige\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-08-05 20:42:33', NULL, '2023-08-05 20:42:33', '2023-08-05 20:42:33', 1, NULL, 'update', 1, NULL),
(146, 'Treasure  \"Vip Premium Prestige\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-08-05 20:42:48', NULL, '2023-08-05 20:42:48', '2023-08-05 20:42:48', 1, NULL, 'update', 1, NULL),
(147, 'Course  \"Programação OOP\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-06 01:06:12', NULL, '2023-08-06 01:06:12', '2023-08-06 01:06:12', 1, NULL, 'create', 1, NULL),
(148, 'Course  \"Programação OOP\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-08-06 01:09:34', NULL, '2023-08-06 01:09:34', '2023-08-06 01:09:34', 1, NULL, 'update', 1, NULL),
(149, 'Course  \"Curso PHP Avançado\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-06 03:49:43', NULL, '2023-08-06 03:49:43', '2023-08-06 03:49:43', 1, NULL, 'create', 1, NULL),
(150, 'Course  \"Curso PHP Avançado\" was changed', 'Course', 'Changes were made in \"reference\" by user: Admin Makemoney at: 2023-08-06 03:49:58', NULL, '2023-08-06 03:49:58', '2023-08-06 03:49:58', 1, NULL, 'update', 1, NULL),
(151, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-08-06 03:55:13', NULL, '2023-08-06 03:55:13', '2023-08-06 03:55:13', 1, NULL, 'update', 1, NULL),
(152, 'Course  \"Inteligência Artificial - O futuro da Tecnologia\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-06 04:16:38', NULL, '2023-08-06 04:16:38', '2023-08-06 04:16:38', 1, NULL, 'create', 1, NULL),
(153, 'You have a new order: WJMXD2023', 'Order', 'New Order for \"Virtual Gold\" from \"Hilario Hugo\" was received at 2023-08-06 05:03:50', NULL, '2023-08-06 05:03:50', '2023-08-06 05:03:50', 1, NULL, 'create', 7, NULL),
(154, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"WJMXD2023\" at 2023-08-06 05:08:44', NULL, '2023-08-06 05:08:44', '2023-08-06 05:08:44', 1, NULL, 'create', 7, NULL),
(155, 'You have a new order: CTNKR2023', 'Order', 'New Order for \"Virtual Diamond\" from \"Silvano Sitoe\" was received at 2023-08-06 19:11:26', NULL, '2023-08-06 19:11:26', '2023-08-06 19:11:26', 1, NULL, 'create', 8, NULL),
(156, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"CTNKR2023\" at 2023-08-06 19:11:52', NULL, '2023-08-06 19:11:52', '2023-08-06 19:11:52', 1, NULL, 'create', 8, NULL),
(157, 'You have a new order: VPNEZ2023', 'Order', 'New Order for \"Virtual Gold\" from \"Gerson Munguambe\" was received at 2023-08-06 22:11:33', NULL, '2023-08-06 22:11:33', '2023-08-06 22:11:33', 1, NULL, 'create', 9, NULL),
(158, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"VPNEZ2023\" at 2023-08-06 22:14:31', NULL, '2023-08-06 22:14:31', '2023-08-06 22:14:31', 1, NULL, 'create', 9, NULL),
(159, 'Course  \"Balanço\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-07 00:04:13', NULL, '2023-08-07 00:04:13', '2023-08-07 00:04:13', 1, NULL, 'create', 1, NULL),
(160, 'Course  \"Balanço\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-08-07 07:41:07', NULL, '2023-08-07 07:41:07', '2023-08-07 07:41:07', 1, NULL, 'update', 1, NULL),
(161, 'Course  \"Maquiagem\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-07 21:58:22', NULL, '2023-08-07 21:58:22', '2023-08-07 21:58:22', 1, NULL, 'create', 1, NULL),
(162, 'Course  \"Maquiagem\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-07 21:58:51', NULL, '2023-08-07 21:58:51', '2023-08-07 21:58:51', 1, NULL, 'update', 1, NULL),
(163, 'Course  \"Engenharia\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-09 18:31:54', NULL, '2023-08-09 18:31:54', '2023-08-09 18:31:54', 1, NULL, 'create', 1, NULL),
(164, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-08-11 02:17:26', NULL, '2023-08-11 02:17:26', '2023-08-11 02:17:26', 1, NULL, 'update', 1, NULL),
(165, 'Course  \"Engenharia\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-08-13 17:37:59', NULL, '2023-08-13 17:37:59', '2023-08-13 17:37:59', 1, NULL, 'update', 1, NULL),
(166, 'Course  \"Música\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-13 17:43:45', NULL, '2023-08-13 17:43:45', '2023-08-13 17:43:45', 1, NULL, 'create', 1, NULL),
(167, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-08-13 17:45:16', NULL, '2023-08-13 17:45:16', '2023-08-13 17:45:16', 1, NULL, 'update', 1, NULL),
(168, 'Course  \"Música\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-08-13 17:47:51', NULL, '2023-08-13 17:47:51', '2023-08-13 17:47:51', 1, NULL, 'update', 1, NULL),
(169, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"reference, price\" by user: Admin Makemoney at: 2023-08-14 11:50:01', NULL, '2023-08-14 11:50:01', '2023-08-14 11:50:01', 1, NULL, 'update', 1, NULL),
(170, 'Course  \"Fundamentos de Design\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-14 11:58:22', NULL, '2023-08-14 11:58:22', '2023-08-14 11:58:22', 1, NULL, 'create', 1, NULL),
(171, 'Course  \"Fundamentos de Design\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-08-14 11:58:41', NULL, '2023-08-14 11:58:41', '2023-08-14 11:58:41', 1, NULL, 'update', 1, NULL),
(172, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"discount percentage, discounted price\" by user: Admin Makemoney at: 2023-08-14 12:09:06', NULL, '2023-08-14 12:09:06', '2023-08-14 12:09:06', 1, NULL, 'update', 1, NULL),
(173, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"discount percentage, discounted price\" by user: Admin Makemoney at: 2023-08-14 12:10:09', NULL, '2023-08-14 12:10:09', '2023-08-14 12:10:09', 1, NULL, 'update', 1, NULL),
(174, 'Treasure  \"Virtual Gold\" was changed', 'Treasure', 'Changes were made in \"name, description, price, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-08-19 16:12:04', NULL, '2023-08-19 16:12:04', '2023-08-19 16:12:04', 1, NULL, 'update', 1, NULL),
(175, 'Treasure  \"Virtual Platinum\" was changed', 'Treasure', 'Changes were made in \"name, description, price, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-08-19 16:27:32', NULL, '2023-08-19 16:27:32', '2023-08-19 16:27:32', 1, NULL, 'update', 1, NULL),
(176, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"description, price, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-08-19 16:34:22', NULL, '2023-08-19 16:34:22', '2023-08-19 16:34:22', 1, NULL, 'update', 1, NULL),
(177, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-08-20 20:49:27', NULL, '2023-08-20 20:49:27', '2023-08-20 20:49:27', 1, NULL, 'update', 1, NULL),
(178, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-08-20 20:50:03', NULL, '2023-08-20 20:50:03', '2023-08-20 20:50:03', 1, NULL, 'update', 1, NULL),
(179, 'Course  \"Informática Básica e Intermedia\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-08-22 04:23:34', NULL, '2023-08-22 04:23:34', '2023-08-22 04:23:34', 1, NULL, 'create', 1, NULL),
(180, 'Course  \"Informática Básica e Intermedia\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-08-22 04:26:16', NULL, '2023-08-22 04:26:16', '2023-08-22 04:26:16', 1, NULL, 'update', 1, NULL),
(181, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-08-22 13:45:29', NULL, '2023-08-22 13:45:29', '2023-08-22 13:45:29', 1, NULL, 'update', 1, NULL),
(182, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"description, status\" by user: Admin Makemoney at: 2023-08-22 13:47:51', NULL, '2023-08-22 13:47:51', '2023-08-22 13:47:51', 1, NULL, 'update', 1, NULL),
(183, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-22 13:50:18', NULL, '2023-08-22 13:50:18', '2023-08-22 13:50:18', 1, NULL, 'update', 1, NULL),
(184, 'Course  \"EMPREEMDEDORIMO\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-08-22 13:51:35', NULL, '2023-08-22 13:51:35', '2023-08-22 13:51:35', 1, NULL, 'update', 1, NULL),
(185, 'Course  \"Fundamentos de Design\" was changed', 'Course', 'Changes were made in \"reference, name, price\" by user: Admin Makemoney at: 2023-08-22 14:02:16', NULL, '2023-08-22 14:02:16', '2023-08-22 14:02:16', 1, NULL, 'update', 1, NULL),
(186, 'Course  \"Excel_2019\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-08-22 14:02:38', NULL, '2023-08-22 14:02:38', '2023-08-22 14:02:38', 1, NULL, 'update', 1, NULL),
(187, 'Course  \"Excel_2019\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-08-22 14:07:19', NULL, '2023-08-22 14:07:19', '2023-08-22 14:07:19', 1, NULL, 'update', 1, NULL),
(188, 'Course  \"Informática Básica e Intermedia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-22 16:42:19', NULL, '2023-08-22 16:42:19', '2023-08-22 16:42:19', 1, NULL, 'update', 1, NULL),
(189, 'Course  \"Empreendedorismo\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-23 16:24:33', NULL, '2023-08-23 16:24:33', '2023-08-23 16:24:33', 1, NULL, 'update', 1, NULL),
(190, 'Course  \"Informática Básica e Intermedia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-23 16:25:47', NULL, '2023-08-23 16:25:47', '2023-08-23 16:25:47', 1, NULL, 'update', 1, NULL),
(191, 'Course  \"Informática Básica e Intermedia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-08-23 16:33:02', NULL, '2023-08-23 16:33:02', '2023-08-23 16:33:02', 1, NULL, 'update', 1, NULL),
(192, 'Course  \"Empreendedorismo\" was changed', 'Course', 'Changes were made in \"name, description\" by user: Admin Makemoney at: 2023-08-23 16:37:10', NULL, '2023-08-23 16:37:10', '2023-08-23 16:37:10', 1, NULL, 'update', 1, NULL),
(193, 'Course  \"Informática Básica e Intermedia\" was changed', 'Course', 'Changes were made in \"name, description\" by user: Admin Makemoney at: 2023-08-23 16:38:28', NULL, '2023-08-23 16:38:28', '2023-08-23 16:38:28', 1, NULL, 'update', 1, NULL),
(194, 'Treasure  \"Virtual Diamond\" was changed', 'Treasure', 'Changes were made in \"name, discounted price\" by user: Admin Makemoney at: 2023-08-28 17:31:22', NULL, '2023-08-28 17:31:22', '2023-08-28 17:31:22', 1, NULL, 'update', 1, NULL),
(195, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-09-01 23:58:20', NULL, '2023-09-01 23:58:20', '2023-09-01 23:58:20', 1, NULL, 'update', 1, NULL),
(196, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-09-02 00:00:50', NULL, '2023-09-02 00:00:50', '2023-09-02 00:00:50', 1, NULL, 'update', 1, NULL),
(197, 'Course  \"Excel_2019\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-09-02 00:02:16', NULL, '2023-09-02 00:02:17', '2023-09-02 00:02:17', 1, NULL, 'update', 1, NULL),
(198, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-09-02 00:02:57', NULL, '2023-09-02 00:02:57', '2023-09-02 00:02:57', 1, NULL, 'update', 1, NULL),
(199, 'Course  \"Excel_2019\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-09-02 11:20:40', NULL, '2023-09-02 11:20:40', '2023-09-02 11:20:40', 1, NULL, 'update', 1, NULL),
(200, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:21:20', NULL, '2023-09-02 11:21:20', '2023-09-02 11:21:20', 1, NULL, 'update', 1, NULL),
(201, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:29:25', NULL, '2023-09-02 11:29:25', '2023-09-02 11:29:25', 1, NULL, 'update', 1, NULL),
(202, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:30:41', NULL, '2023-09-02 11:30:41', '2023-09-02 11:30:41', 1, NULL, 'update', 1, NULL),
(203, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:42:53', NULL, '2023-09-02 11:42:53', '2023-09-02 11:42:53', 1, NULL, 'update', 1, NULL),
(204, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:46:43', NULL, '2023-09-02 11:46:43', '2023-09-02 11:46:43', 1, NULL, 'update', 1, NULL),
(205, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:49:25', NULL, '2023-09-02 11:49:25', '2023-09-02 11:49:25', 1, NULL, 'update', 1, NULL),
(206, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:50:53', NULL, '2023-09-02 11:50:53', '2023-09-02 11:50:53', 1, NULL, 'update', 1, NULL),
(207, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:52:06', NULL, '2023-09-02 11:52:06', '2023-09-02 11:52:06', 1, NULL, 'update', 1, NULL),
(208, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:54:55', NULL, '2023-09-02 11:54:55', '2023-09-02 11:54:55', 1, NULL, 'update', 1, NULL),
(209, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:55:41', NULL, '2023-09-02 11:55:41', '2023-09-02 11:55:41', 1, NULL, 'update', 1, NULL),
(210, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 11:56:31', NULL, '2023-09-02 11:56:31', '2023-09-02 11:56:31', 1, NULL, 'update', 1, NULL),
(211, 'Course  \"CHINÊS INTERMÉDIO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 19:25:42', NULL, '2023-09-02 19:25:42', '2023-09-02 19:25:42', 1, NULL, 'create', 1, NULL),
(212, 'Course  \"CHINÊS BÁSICO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 19:26:38', NULL, '2023-09-02 19:26:38', '2023-09-02 19:26:38', 1, NULL, 'create', 1, NULL),
(213, 'Course  \"INGLÊS BÁSICO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 19:27:33', NULL, '2023-09-02 19:27:33', '2023-09-02 19:27:33', 1, NULL, 'create', 1, NULL),
(214, 'Course  \"INGLÊS MÉDIO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 19:28:19', NULL, '2023-09-02 19:28:19', '2023-09-02 19:28:19', 1, NULL, 'create', 1, NULL),
(215, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-09-02 19:31:05', NULL, '2023-09-02 19:31:05', '2023-09-02 19:31:05', 1, NULL, 'update', 1, NULL),
(216, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-02 19:38:10', NULL, '2023-09-02 19:38:10', '2023-09-02 19:38:10', 1, NULL, 'update', 1, NULL),
(217, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-02 19:38:55', NULL, '2023-09-02 19:38:55', '2023-09-02 19:38:55', 1, NULL, 'update', 1, NULL),
(218, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-02 19:49:18', NULL, '2023-09-02 19:49:18', '2023-09-02 19:49:18', 1, NULL, 'update', 1, NULL),
(219, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-02 19:51:45', NULL, '2023-09-02 19:51:45', '2023-09-02 19:51:45', 1, NULL, 'update', 1, NULL);
INSERT INTO `log` (`id`, `title`, `entity`, `description`, `obs`, `created_at`, `updated_at`, `active`, `notify_role`, `action`, `action_from_user_id`, `action_to_user_id`) VALUES
(220, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-09-02 19:53:50', NULL, '2023-09-02 19:53:50', '2023-09-02 19:53:50', 1, NULL, 'update', 1, NULL),
(221, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-09-02 19:57:52', NULL, '2023-09-02 19:57:52', '2023-09-02 19:57:52', 1, NULL, 'update', 1, NULL),
(222, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 20:36:15', NULL, '2023-09-02 20:36:15', '2023-09-02 20:36:15', 1, NULL, 'update', 1, NULL),
(223, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-09-02 20:36:47', NULL, '2023-09-02 20:36:47', '2023-09-02 20:36:47', 1, NULL, 'update', 1, NULL),
(224, 'Course  \"Francês\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 20:39:05', NULL, '2023-09-02 20:39:05', '2023-09-02 20:39:05', 1, NULL, 'create', 1, NULL),
(225, 'Course  \"ESPANHOL\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-02 20:39:47', NULL, '2023-09-02 20:39:47', '2023-09-02 20:39:47', 1, NULL, 'create', 1, NULL),
(226, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-02 20:40:17', NULL, '2023-09-02 20:40:17', '2023-09-02 20:40:17', 1, NULL, 'update', 1, NULL),
(227, 'Course  \"Francês\" was changed', 'Course', 'Changes were made in \"name, price\" by user: Admin Makemoney at: 2023-09-02 20:40:57', NULL, '2023-09-02 20:40:57', '2023-09-02 20:40:57', 1, NULL, 'update', 1, NULL),
(228, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-02 20:49:26', NULL, '2023-09-02 20:49:26', '2023-09-02 20:49:26', 1, NULL, 'update', 1, NULL),
(229, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-02 20:50:01', NULL, '2023-09-02 20:50:01', '2023-09-02 20:50:01', 1, NULL, 'update', 1, NULL),
(230, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-02 20:50:33', NULL, '2023-09-02 20:50:33', '2023-09-02 20:50:33', 1, NULL, 'update', 1, NULL),
(231, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:20:09', NULL, '2023-09-03 14:20:10', '2023-09-03 14:20:10', 1, NULL, 'update', 1, NULL),
(232, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:25:00', NULL, '2023-09-03 14:25:00', '2023-09-03 14:25:00', 1, NULL, 'update', 1, NULL),
(233, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:37:02', NULL, '2023-09-03 14:37:02', '2023-09-03 14:37:02', 1, NULL, 'update', 1, NULL),
(234, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:37:38', NULL, '2023-09-03 14:37:38', '2023-09-03 14:37:38', 1, NULL, 'update', 1, NULL),
(235, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:44:31', NULL, '2023-09-03 14:44:31', '2023-09-03 14:44:31', 1, NULL, 'update', 1, NULL),
(236, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:50:10', NULL, '2023-09-03 14:50:10', '2023-09-03 14:50:10', 1, NULL, 'update', 1, NULL),
(237, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 14:53:33', NULL, '2023-09-03 14:53:33', '2023-09-03 14:53:33', 1, NULL, 'update', 1, NULL),
(238, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:01:12', NULL, '2023-09-03 15:01:12', '2023-09-03 15:01:12', 1, NULL, 'update', 1, NULL),
(239, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:16:31', NULL, '2023-09-03 15:16:31', '2023-09-03 15:16:31', 1, NULL, 'update', 1, NULL),
(240, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:18:29', NULL, '2023-09-03 15:18:29', '2023-09-03 15:18:29', 1, NULL, 'update', 1, NULL),
(241, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:29:00', NULL, '2023-09-03 15:29:00', '2023-09-03 15:29:00', 1, NULL, 'update', 1, NULL),
(242, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:30:06', NULL, '2023-09-03 15:30:06', '2023-09-03 15:30:06', 1, NULL, 'update', 1, NULL),
(243, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:47:54', NULL, '2023-09-03 15:47:54', '2023-09-03 15:47:54', 1, NULL, 'update', 1, NULL),
(244, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 15:54:00', NULL, '2023-09-03 15:54:00', '2023-09-03 15:54:00', 1, NULL, 'update', 1, NULL),
(245, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-03 15:54:36', NULL, '2023-09-03 15:54:36', '2023-09-03 15:54:36', 1, NULL, 'update', 1, NULL),
(246, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:01:08', NULL, '2023-09-03 16:01:08', '2023-09-03 16:01:08', 1, NULL, 'update', 1, NULL),
(247, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:02:47', NULL, '2023-09-03 16:02:47', '2023-09-03 16:02:47', 1, NULL, 'update', 1, NULL),
(248, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:03:46', NULL, '2023-09-03 16:03:46', '2023-09-03 16:03:46', 1, NULL, 'update', 1, NULL),
(249, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:04:21', NULL, '2023-09-03 16:04:21', '2023-09-03 16:04:21', 1, NULL, 'update', 1, NULL),
(250, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:11:21', NULL, '2023-09-03 16:11:21', '2023-09-03 16:11:21', 1, NULL, 'update', 1, NULL),
(251, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 16:23:31', NULL, '2023-09-03 16:23:32', '2023-09-03 16:23:32', 1, NULL, 'update', 1, NULL),
(252, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"reference, description\" by user: Admin Makemoney at: 2023-09-03 16:23:43', NULL, '2023-09-03 16:23:43', '2023-09-03 16:23:43', 1, NULL, 'update', 1, NULL),
(253, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-09-03 16:25:28', NULL, '2023-09-03 16:25:28', '2023-09-03 16:25:28', 1, NULL, 'update', 1, NULL),
(254, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 17:49:44', NULL, '2023-09-03 17:49:44', '2023-09-03 17:49:44', 1, NULL, 'update', 1, NULL),
(255, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 17:51:48', NULL, '2023-09-03 17:51:48', '2023-09-03 17:51:48', 1, NULL, 'update', 1, NULL),
(256, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-09-03 18:05:24', NULL, '2023-09-03 18:05:24', '2023-09-03 18:05:24', 1, NULL, 'update', 1, NULL),
(257, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:08:39', NULL, '2023-09-03 18:08:39', '2023-09-03 18:08:39', 1, NULL, 'update', 1, NULL),
(258, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:30:31', NULL, '2023-09-03 18:30:31', '2023-09-03 18:30:31', 1, NULL, 'update', 1, NULL),
(259, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:32:41', NULL, '2023-09-03 18:32:41', '2023-09-03 18:32:41', 1, NULL, 'update', 1, NULL),
(260, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:33:45', NULL, '2023-09-03 18:33:45', '2023-09-03 18:33:45', 1, NULL, 'update', 1, NULL),
(261, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:36:25', NULL, '2023-09-03 18:36:25', '2023-09-03 18:36:25', 1, NULL, 'update', 1, NULL),
(262, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:38:42', NULL, '2023-09-03 18:38:42', '2023-09-03 18:38:42', 1, NULL, 'update', 1, NULL),
(263, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:40:35', NULL, '2023-09-03 18:40:35', '2023-09-03 18:40:35', 1, NULL, 'update', 1, NULL),
(264, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:41:36', NULL, '2023-09-03 18:41:36', '2023-09-03 18:41:36', 1, NULL, 'update', 1, NULL),
(265, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:43:26', NULL, '2023-09-03 18:43:26', '2023-09-03 18:43:26', 1, NULL, 'update', 1, NULL),
(266, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:46:45', NULL, '2023-09-03 18:46:45', '2023-09-03 18:46:45', 1, NULL, 'update', 1, NULL),
(267, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:48:23', NULL, '2023-09-03 18:48:23', '2023-09-03 18:48:23', 1, NULL, 'update', 1, NULL),
(268, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:52:29', NULL, '2023-09-03 18:52:29', '2023-09-03 18:52:29', 1, NULL, 'update', 1, NULL),
(269, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:54:17', NULL, '2023-09-03 18:54:17', '2023-09-03 18:54:17', 1, NULL, 'update', 1, NULL),
(270, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:55:55', NULL, '2023-09-03 18:55:55', '2023-09-03 18:55:55', 1, NULL, 'update', 1, NULL),
(271, 'Course  \"CHINÊS INTERMÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:57:05', NULL, '2023-09-03 18:57:05', '2023-09-03 18:57:05', 1, NULL, 'update', 1, NULL),
(272, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 18:59:40', NULL, '2023-09-03 18:59:40', '2023-09-03 18:59:40', 1, NULL, 'update', 1, NULL),
(273, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 19:01:57', NULL, '2023-09-03 19:01:57', '2023-09-03 19:01:57', 1, NULL, 'update', 1, NULL),
(274, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 19:03:58', NULL, '2023-09-03 19:03:58', '2023-09-03 19:03:58', 1, NULL, 'update', 1, NULL),
(275, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-03 19:04:16', NULL, '2023-09-03 19:04:16', '2023-09-03 19:04:16', 1, NULL, 'update', 1, NULL),
(276, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-04 22:33:21', NULL, '2023-09-04 22:33:21', '2023-09-04 22:33:21', 1, NULL, 'update', 1, NULL),
(277, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-06 14:50:01', NULL, '2023-09-06 14:50:01', '2023-09-06 14:50:01', 1, NULL, 'update', 1, NULL),
(278, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-09-07 17:14:30', NULL, '2023-09-07 17:14:30', '2023-09-07 17:14:30', 1, NULL, 'update', 1, NULL),
(279, 'You have a new order: EGTPM2023', 'Order', 'New Order for \"CLASSE ALTA\" from \"Aylton Muianga\" was received at 2023-09-07 17:22:24', NULL, '2023-09-07 17:22:24', '2023-09-07 17:22:24', 1, NULL, 'create', 11, NULL),
(280, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"EGTPM2023\" at 2023-09-07 17:22:57', NULL, '2023-09-07 17:22:57', '2023-09-07 17:22:57', 1, NULL, 'create', 11, NULL),
(281, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-09-07 17:29:57', NULL, '2023-09-07 17:29:57', '2023-09-07 17:29:57', 1, NULL, 'update', 1, NULL),
(282, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-09-09 22:21:14', NULL, '2023-09-09 22:21:14', '2023-09-09 22:21:14', 1, NULL, 'update', 1, NULL),
(283, 'You have a new order: ZLCTK2023', 'Order', 'New Order for \"CLASSE ALTA\" from \"Antonia Vembane\" was received at 2023-09-09 22:24:07', NULL, '2023-09-09 22:24:07', '2023-09-09 22:24:07', 1, NULL, 'create', 13, NULL),
(284, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"ZLCTK2023\" at 2023-09-09 22:24:42', NULL, '2023-09-09 22:24:42', '2023-09-09 22:24:42', 1, NULL, 'create', 13, NULL),
(285, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-09-09 22:24:58', NULL, '2023-09-09 22:24:58', '2023-09-09 22:24:58', 1, NULL, 'update', 1, NULL),
(286, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-09-11 12:16:05', NULL, '2023-09-11 12:16:05', '2023-09-11 12:16:05', 1, NULL, 'update', 1, NULL),
(287, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-09-11 12:18:36', NULL, '2023-09-11 12:18:36', '2023-09-11 12:18:36', 1, NULL, 'update', 1, NULL),
(288, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-09-11 12:37:58', NULL, '2023-09-11 12:37:58', '2023-09-11 12:37:58', 1, NULL, 'update', 1, NULL),
(289, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-09-11 12:40:28', NULL, '2023-09-11 12:40:28', '2023-09-11 12:40:28', 1, NULL, 'update', 1, NULL),
(290, 'Course  \"CHINÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-09-11 12:45:57', NULL, '2023-09-11 12:45:57', '2023-09-11 12:45:57', 1, NULL, 'update', 1, NULL),
(291, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-09-11 12:54:50', NULL, '2023-09-11 12:54:50', '2023-09-11 12:54:50', 1, NULL, 'update', 1, NULL),
(292, 'Course  \"XADREZ\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-15 16:43:17', NULL, '2023-09-15 16:43:17', '2023-09-15 16:43:17', 1, NULL, 'create', 1, NULL),
(293, 'Course  \"XADREZ\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-09-17 15:30:53', NULL, '2023-09-17 15:30:54', '2023-09-17 15:30:54', 1, NULL, 'update', 1, NULL),
(294, 'Course  \"XADREZ\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-17 15:37:58', NULL, '2023-09-17 15:37:58', '2023-09-17 15:37:58', 1, NULL, 'update', 1, NULL),
(295, 'Course  \"CUBO MÁGICO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-09-22 11:35:37', NULL, '2023-09-22 11:35:37', '2023-09-22 11:35:37', 1, NULL, 'create', 1, NULL),
(296, 'Course  \"CUBO MÁGICO\" was changed', 'Course', 'Changes were made in \"name, price\" by user: Admin Makemoney at: 2023-09-22 11:56:05', NULL, '2023-09-22 11:56:05', '2023-09-22 11:56:05', 1, NULL, 'update', 1, NULL),
(297, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-22 14:19:14', NULL, '2023-09-22 14:19:14', '2023-09-22 14:19:14', 1, NULL, 'update', 1, NULL),
(298, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"image, description, price\" by user: Admin Makemoney at: 2023-09-22 15:28:47', NULL, '2023-09-22 15:28:47', '2023-09-22 15:28:47', 1, NULL, 'update', 1, NULL),
(299, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-09-22 15:42:36', NULL, '2023-09-22 15:42:36', '2023-09-22 15:42:36', 1, NULL, 'update', 1, NULL),
(300, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-24 17:53:14', NULL, '2023-09-24 17:53:14', '2023-09-24 17:53:14', 1, NULL, 'update', 1, NULL),
(301, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-09-25 07:02:50', NULL, '2023-09-25 07:02:50', '2023-09-25 07:02:50', 1, NULL, 'update', 1, NULL),
(302, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description, use order\" by user: Admin Makemoney at: 2023-10-26 19:35:31', NULL, '2023-10-26 19:35:31', '2023-10-26 19:35:31', 1, NULL, 'update', 1, NULL),
(303, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, status, price, discounted price\" by user: Admin Makemoney at: 2023-11-01 21:52:39', NULL, '2023-11-01 21:52:39', '2023-11-01 21:52:39', 1, NULL, 'update', 1, NULL),
(304, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"status, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-11-01 22:00:45', NULL, '2023-11-01 22:00:45', '2023-11-01 22:00:45', 1, NULL, 'update', 1, NULL),
(305, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-11-01 22:02:21', NULL, '2023-11-01 22:02:21', '2023-11-01 22:02:21', 1, NULL, 'update', 1, NULL),
(306, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2023-11-01 22:03:25', NULL, '2023-11-01 22:03:25', '2023-11-01 22:03:25', 1, NULL, 'update', 1, NULL),
(307, 'Course  \"Plano De Negócio\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-11-02 22:49:29', NULL, '2023-11-02 22:49:29', '2023-11-02 22:49:29', 1, NULL, 'create', 1, NULL),
(308, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"price, use order\" by user: Admin Makemoney at: 2023-11-02 22:53:20', NULL, '2023-11-02 22:53:20', '2023-11-02 22:53:20', 1, NULL, 'update', 1, NULL),
(309, 'Course  \"Educação Financeira\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-11-02 23:09:44', NULL, '2023-11-02 23:09:44', '2023-11-02 23:09:44', 1, NULL, 'create', 1, NULL),
(310, 'Course  \"Oratória\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-11-02 23:25:31', NULL, '2023-11-02 23:25:31', '2023-11-02 23:25:31', 1, NULL, 'create', 1, NULL),
(311, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"image, price\" by user: Admin Makemoney at: 2023-11-03 09:36:58', NULL, '2023-11-03 09:36:58', '2023-11-03 09:36:58', 1, NULL, 'update', 1, NULL),
(312, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-11-03 09:40:09', NULL, '2023-11-03 09:40:09', '2023-11-03 09:40:09', 1, NULL, 'update', 1, NULL),
(313, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-11-03 09:40:49', NULL, '2023-11-03 09:40:49', '2023-11-03 09:40:49', 1, NULL, 'update', 1, NULL),
(314, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-11-03 09:41:19', NULL, '2023-11-03 09:41:19', '2023-11-03 09:41:19', 1, NULL, 'update', 1, NULL),
(315, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"image, price\" by user: Admin Makemoney at: 2023-11-03 09:43:04', NULL, '2023-11-03 09:43:04', '2023-11-03 09:43:04', 1, NULL, 'update', 1, NULL),
(316, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-11-03 10:05:33', NULL, '2023-11-03 10:05:33', '2023-11-03 10:05:33', 1, NULL, 'update', 1, NULL),
(317, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-11-03 10:40:26', NULL, '2023-11-03 10:40:27', '2023-11-03 10:40:27', 1, NULL, 'update', 1, NULL),
(318, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-11-03 10:42:47', NULL, '2023-11-03 10:42:47', '2023-11-03 10:42:47', 1, NULL, 'update', 1, NULL),
(319, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-11-05 16:36:16', NULL, '2023-11-05 16:36:16', '2023-11-05 16:36:16', 1, NULL, 'update', 1, NULL),
(320, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-11-05 16:38:19', NULL, '2023-11-05 16:38:19', '2023-11-05 16:38:19', 1, NULL, 'update', 1, NULL),
(321, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2023-11-05 16:38:59', NULL, '2023-11-05 16:38:59', '2023-11-05 16:38:59', 1, NULL, 'update', 1, NULL),
(322, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-11-05 16:40:26', NULL, '2023-11-05 16:40:26', '2023-11-05 16:40:26', 1, NULL, 'update', 1, NULL),
(323, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 16:54:13', NULL, '2023-11-05 16:54:13', '2023-11-05 16:54:13', 1, NULL, 'update', 1, NULL),
(324, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 16:57:27', NULL, '2023-11-05 16:57:27', '2023-11-05 16:57:27', 1, NULL, 'update', 1, NULL),
(325, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:03:27', NULL, '2023-11-05 17:03:27', '2023-11-05 17:03:27', 1, NULL, 'update', 1, NULL),
(326, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:07:15', NULL, '2023-11-05 17:07:15', '2023-11-05 17:07:15', 1, NULL, 'update', 1, NULL),
(327, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:10:14', NULL, '2023-11-05 17:10:15', '2023-11-05 17:10:15', 1, NULL, 'update', 1, NULL),
(328, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:15:34', NULL, '2023-11-05 17:15:34', '2023-11-05 17:15:34', 1, NULL, 'update', 1, NULL),
(329, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:16:31', NULL, '2023-11-05 17:16:31', '2023-11-05 17:16:31', 1, NULL, 'update', 1, NULL),
(330, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:18:41', NULL, '2023-11-05 17:18:41', '2023-11-05 17:18:41', 1, NULL, 'update', 1, NULL),
(331, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:21:13', NULL, '2023-11-05 17:21:13', '2023-11-05 17:21:13', 1, NULL, 'update', 1, NULL),
(332, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:26:10', NULL, '2023-11-05 17:26:10', '2023-11-05 17:26:10', 1, NULL, 'update', 1, NULL),
(333, 'Course  \"XADREZ\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 17:31:04', NULL, '2023-11-05 17:31:04', '2023-11-05 17:31:04', 1, NULL, 'update', 1, NULL),
(334, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 17:46:08', NULL, '2023-11-05 17:46:08', '2023-11-05 17:46:08', 1, NULL, 'update', 1, NULL),
(335, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:47:02', NULL, '2023-11-05 17:47:02', '2023-11-05 17:47:02', 1, NULL, 'update', 1, NULL),
(336, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:50:22', NULL, '2023-11-05 17:50:22', '2023-11-05 17:50:22', 1, NULL, 'update', 1, NULL),
(337, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-11-05 17:53:14', NULL, '2023-11-05 17:53:14', '2023-11-05 17:53:14', 1, NULL, 'update', 1, NULL),
(338, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 17:54:09', NULL, '2023-11-05 17:54:09', '2023-11-05 17:54:09', 1, NULL, 'update', 1, NULL),
(339, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:02:29', NULL, '2023-11-05 18:02:29', '2023-11-05 18:02:29', 1, NULL, 'update', 1, NULL),
(340, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:02:54', NULL, '2023-11-05 18:02:54', '2023-11-05 18:02:54', 1, NULL, 'update', 1, NULL),
(341, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:04:05', NULL, '2023-11-05 18:04:05', '2023-11-05 18:04:05', 1, NULL, 'update', 1, NULL),
(342, 'Course  \"XADREZ\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:04:37', NULL, '2023-11-05 18:04:37', '2023-11-05 18:04:37', 1, NULL, 'update', 1, NULL),
(343, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:05:34', NULL, '2023-11-05 18:05:34', '2023-11-05 18:05:34', 1, NULL, 'update', 1, NULL),
(344, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:06:13', NULL, '2023-11-05 18:06:13', '2023-11-05 18:06:13', 1, NULL, 'update', 1, NULL),
(345, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:07:23', NULL, '2023-11-05 18:07:23', '2023-11-05 18:07:23', 1, NULL, 'update', 1, NULL),
(346, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:08:59', NULL, '2023-11-05 18:08:59', '2023-11-05 18:08:59', 1, NULL, 'update', 1, NULL),
(347, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 18:12:20', NULL, '2023-11-05 18:12:20', '2023-11-05 18:12:20', 1, NULL, 'update', 1, NULL),
(348, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:18:01', NULL, '2023-11-05 18:18:01', '2023-11-05 18:18:01', 1, NULL, 'update', 1, NULL),
(349, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 18:18:34', NULL, '2023-11-05 18:18:34', '2023-11-05 18:18:34', 1, NULL, 'update', 1, NULL),
(350, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:19:07', NULL, '2023-11-05 18:19:07', '2023-11-05 18:19:07', 1, NULL, 'update', 1, NULL),
(351, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:22:00', NULL, '2023-11-05 18:22:00', '2023-11-05 18:22:00', 1, NULL, 'update', 1, NULL),
(352, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 18:25:25', NULL, '2023-11-05 18:25:25', '2023-11-05 18:25:25', 1, NULL, 'update', 1, NULL),
(353, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-05 18:27:55', NULL, '2023-11-05 18:27:55', '2023-11-05 18:27:55', 1, NULL, 'update', 1, NULL),
(354, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-05 18:31:54', NULL, '2023-11-05 18:31:54', '2023-11-05 18:31:54', 1, NULL, 'update', 1, NULL),
(355, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-05 18:32:35', NULL, '2023-11-05 18:32:35', '2023-11-05 18:32:35', 1, NULL, 'update', 1, NULL),
(356, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-05 18:33:15', NULL, '2023-11-05 18:33:15', '2023-11-05 18:33:15', 1, NULL, 'update', 1, NULL),
(357, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-11-05 18:33:47', NULL, '2023-11-05 18:33:47', '2023-11-05 18:33:47', 1, NULL, 'update', 1, NULL),
(358, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:35:05', NULL, '2023-11-05 18:35:05', '2023-11-05 18:35:05', 1, NULL, 'update', 1, NULL),
(359, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:35:10', NULL, '2023-11-05 18:35:10', '2023-11-05 18:35:10', 1, NULL, 'update', 1, NULL),
(360, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:38:15', NULL, '2023-11-05 18:38:15', '2023-11-05 18:38:15', 1, NULL, 'update', 1, NULL),
(361, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-05 18:38:24', NULL, '2023-11-05 18:38:24', '2023-11-05 18:38:24', 1, NULL, 'update', 1, NULL),
(362, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-07 00:19:49', NULL, '2023-11-07 00:19:49', '2023-11-07 00:19:49', 1, NULL, 'update', 1, NULL),
(363, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-10 14:48:51', NULL, '2023-11-10 14:48:51', '2023-11-10 14:48:51', 1, NULL, 'update', 1, NULL),
(364, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-15 23:24:32', NULL, '2023-11-15 23:24:32', '2023-11-15 23:24:32', 1, NULL, 'update', 1, NULL),
(365, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-15 23:25:23', NULL, '2023-11-15 23:25:23', '2023-11-15 23:25:23', 1, NULL, 'update', 1, NULL),
(366, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-11-18 14:32:33', NULL, '2023-11-18 14:32:33', '2023-11-18 14:32:33', 1, NULL, 'update', 1, NULL),
(367, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"description, use order\" by user: Admin Makemoney at: 2023-11-18 15:48:46', NULL, '2023-11-18 15:48:46', '2023-11-18 15:48:46', 1, NULL, 'update', 1, NULL),
(368, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description, use order\" by user: Admin Makemoney at: 2023-11-18 16:07:06', NULL, '2023-11-18 16:07:06', '2023-11-18 16:07:06', 1, NULL, 'update', 1, NULL),
(369, 'Course  \"CUBO MÁGICO (RUBIK)\" was changed', 'Course', 'Changes were made in \"description, status, price\" by user: Admin Makemoney at: 2023-11-18 16:18:04', NULL, '2023-11-18 16:18:04', '2023-11-18 16:18:04', 1, NULL, 'update', 1, NULL),
(370, 'Course  \"XADREZ\" was changed', 'Course', 'Changes were made in \"description, status\" by user: Admin Makemoney at: 2023-11-18 16:18:42', NULL, '2023-11-18 16:18:42', '2023-11-18 16:18:42', 1, NULL, 'update', 1, NULL),
(371, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-18 20:50:55', NULL, '2023-11-18 20:50:55', '2023-11-18 20:50:55', 1, NULL, 'update', 1, NULL),
(372, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"use order\" by user: Admin Makemoney at: 2023-11-18 20:52:29', NULL, '2023-11-18 20:52:29', '2023-11-18 20:52:29', 1, NULL, 'update', 1, NULL),
(373, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-18 20:54:21', NULL, '2023-11-18 20:54:21', '2023-11-18 20:54:21', 1, NULL, 'update', 1, NULL),
(374, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description, use order\" by user: Admin Makemoney at: 2023-11-18 20:55:09', NULL, '2023-11-18 20:55:09', '2023-11-18 20:55:09', 1, NULL, 'update', 1, NULL),
(375, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"use order\" by user: Admin Makemoney at: 2023-11-18 20:58:29', NULL, '2023-11-18 20:58:29', '2023-11-18 20:58:29', 1, NULL, 'update', 1, NULL),
(376, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"description, price, use order\" by user: Admin Makemoney at: 2023-11-18 20:59:42', NULL, '2023-11-18 20:59:42', '2023-11-18 20:59:42', 1, NULL, 'update', 1, NULL),
(377, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"description, use order\" by user: Admin Makemoney at: 2023-11-18 21:01:16', NULL, '2023-11-18 21:01:16', '2023-11-18 21:01:16', 1, NULL, 'update', 1, NULL),
(378, 'Course  \"INGLÊS MÉDIO\" was changed', 'Course', 'Changes were made in \"status, use order\" by user: Admin Makemoney at: 2023-11-18 21:03:57', NULL, '2023-11-18 21:03:57', '2023-11-18 21:03:57', 1, NULL, 'update', 1, NULL),
(379, 'Course  \"HTML e CSS para Iniciantes\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-11-18 21:08:12', NULL, '2023-11-18 21:08:12', '2023-11-18 21:08:12', 1, NULL, 'create', 1, NULL),
(380, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"use order\" by user: Admin Makemoney at: 2023-11-18 21:12:32', NULL, '2023-11-18 21:12:32', '2023-11-18 21:12:32', 1, NULL, 'update', 1, NULL),
(381, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-18 21:18:28', NULL, '2023-11-18 21:18:28', '2023-11-18 21:18:28', 1, NULL, 'update', 1, NULL),
(382, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-18 21:55:38', NULL, '2023-11-18 21:55:38', '2023-11-18 21:55:38', 1, NULL, 'update', 1, NULL),
(383, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-18 21:58:40', NULL, '2023-11-18 21:58:40', '2023-11-18 21:58:40', 1, NULL, 'update', 1, NULL),
(384, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-18 22:27:30', NULL, '2023-11-18 22:27:30', '2023-11-18 22:27:30', 1, NULL, 'update', 1, NULL),
(385, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"use order\" by user: Admin Makemoney at: 2023-11-18 22:35:18', NULL, '2023-11-18 22:35:18', '2023-11-18 22:35:18', 1, NULL, 'update', 1, NULL),
(386, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-19 13:30:20', NULL, '2023-11-19 13:30:20', '2023-11-19 13:30:20', 1, NULL, 'update', 1, NULL),
(387, 'Course  \"HTML e CSS para Iniciantes\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2023-11-19 14:47:52', NULL, '2023-11-19 14:47:52', '2023-11-19 14:47:52', 1, NULL, 'update', 1, NULL),
(388, 'Course  \"HTML e CSS para Iniciantes\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-20 17:17:24', NULL, '2023-11-20 17:17:24', '2023-11-20 17:17:24', 1, NULL, 'update', 1, NULL),
(389, 'Course  \"Oratória\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-20 17:18:56', NULL, '2023-11-20 17:18:56', '2023-11-20 17:18:56', 1, NULL, 'update', 1, NULL),
(390, 'Course  \"Educação Financeira\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-20 17:23:18', NULL, '2023-11-20 17:23:18', '2023-11-20 17:23:18', 1, NULL, 'update', 1, NULL),
(391, 'Course  \"HTML e CSS para Iniciantes\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2023-11-22 03:32:29', NULL, '2023-11-22 03:32:29', '2023-11-22 03:32:29', 1, NULL, 'update', 1, NULL),
(392, 'Course  \"HTML e CSS para Iniciantes\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-11-22 03:41:24', NULL, '2023-11-22 03:41:24', '2023-11-22 03:41:24', 1, NULL, 'update', 1, NULL),
(393, 'Course  \"Informática Básica e Intermédia\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-22 17:04:13', NULL, '2023-11-22 17:04:13', '2023-11-22 17:04:13', 1, NULL, 'update', 1, NULL),
(394, 'Course  \"EMPREENDEDORISMO\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-22 17:06:10', NULL, '2023-11-22 17:06:10', '2023-11-22 17:06:10', 1, NULL, 'update', 1, NULL),
(395, 'Course  \"EXCEL\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-11-22 17:06:36', NULL, '2023-11-22 17:06:36', '2023-11-22 17:06:36', 1, NULL, 'update', 1, NULL),
(396, 'Course  \"Plano De Negócio\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-22 17:13:40', NULL, '2023-11-22 17:13:40', '2023-11-22 17:13:40', 1, NULL, 'update', 1, NULL),
(397, 'Course  \"ESPANHOL\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-22 17:19:47', NULL, '2023-11-22 17:19:47', '2023-11-22 17:19:47', 1, NULL, 'update', 1, NULL),
(398, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-11-22 17:21:52', NULL, '2023-11-22 17:21:52', '2023-11-22 17:21:52', 1, NULL, 'update', 1, NULL),
(399, 'You have a new order: GSHJD2023', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Edinel Mulhanga\" was received at 2023-11-29 10:29:00', NULL, '2023-11-29 10:29:00', '2023-11-29 10:29:00', 1, NULL, 'create', 29, NULL),
(400, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"GSHJD2023\" at 2023-11-29 10:37:28', NULL, '2023-11-29 10:37:28', '2023-11-29 10:37:28', 1, NULL, 'create', 29, NULL),
(401, 'Course  \"Tecnicas de Vendas\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-12-04 11:42:01', NULL, '2023-12-04 11:42:01', '2023-12-04 11:42:01', 1, NULL, 'create', 1, NULL),
(402, 'Course  \"Tecnicas de Vendas\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-12-04 11:44:40', NULL, '2023-12-04 11:44:41', '2023-12-04 11:44:41', 1, NULL, 'update', 1, NULL),
(403, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-12-04 11:45:41', NULL, '2023-12-04 11:45:41', '2023-12-04 11:45:41', 1, NULL, 'update', 1, NULL),
(404, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2023-12-04 11:46:03', NULL, '2023-12-04 11:46:03', '2023-12-04 11:46:03', 1, NULL, 'update', 1, NULL),
(405, 'Course  \"Tecnicas de Vendas\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-12-04 15:33:31', NULL, '2023-12-04 15:33:31', '2023-12-04 15:33:31', 1, NULL, 'update', 1, NULL),
(406, 'Course  \"Técnicas de Vendas\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-04 15:48:58', NULL, '2023-12-04 15:48:58', '2023-12-04 15:48:58', 1, NULL, 'update', 1, NULL),
(407, 'Course  \"Técnicas de Vendas\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-04 15:48:58', NULL, '2023-12-04 15:48:58', '2023-12-04 15:48:58', 1, NULL, 'update', 1, NULL),
(408, 'Course  \"Técnicas de Vendas\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-04 16:28:28', NULL, '2023-12-04 16:28:29', '2023-12-04 16:28:29', 1, NULL, 'update', 1, NULL),
(409, 'Course  \"Técnicas de Vendas\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-04 16:28:28', NULL, '2023-12-04 16:28:29', '2023-12-04 16:28:29', 1, NULL, 'update', 1, NULL),
(410, 'Course  \"Técnicas de Vendas\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2023-12-04 16:46:49', NULL, '2023-12-04 16:46:49', '2023-12-04 16:46:49', 1, NULL, 'update', 1, NULL),
(411, 'Course  \"FRANCÊS\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-12-25 20:47:25', NULL, '2023-12-25 20:47:25', '2023-12-25 20:47:25', 1, NULL, 'update', 1, NULL),
(412, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-12-25 20:48:49', NULL, '2023-12-25 20:48:49', '2023-12-25 20:48:49', 1, NULL, 'update', 1, NULL),
(413, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-12-25 20:49:12', NULL, '2023-12-25 20:49:12', '2023-12-25 20:49:12', 1, NULL, 'update', 1, NULL),
(414, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"discounted price\" by user: Admin Makemoney at: 2023-12-25 20:50:36', NULL, '2023-12-25 20:50:36', '2023-12-25 20:50:36', 1, NULL, 'update', 1, NULL),
(415, 'Course  \"Contabilidade Geral Básica\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-12-25 21:10:57', NULL, '2023-12-25 21:10:57', '2023-12-25 21:10:57', 1, NULL, 'create', 1, NULL),
(416, 'Course  \"Contabilidade Geral Básica\" was changed', 'Course', 'Changes were made in \"image, price\" by user: Admin Makemoney at: 2023-12-26 20:02:31', NULL, '2023-12-26 20:02:32', '2023-12-26 20:02:32', 1, NULL, 'update', 1, NULL),
(417, 'Course  \"Gestão de Conteúdos Digitais\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-12-26 23:22:34', NULL, '2023-12-26 23:22:34', '2023-12-26 23:22:34', 1, NULL, 'create', 1, NULL),
(418, 'Course  \"Gestão de Conteúdos Digitais\" was changed', 'Course', 'Changes were made in \"name, price\" by user: Admin Makemoney at: 2023-12-26 23:52:30', NULL, '2023-12-26 23:52:31', '2023-12-26 23:52:31', 1, NULL, 'update', 1, NULL),
(419, 'Course  \"Marketing Digital\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-27 14:31:41', NULL, '2023-12-27 14:31:42', '2023-12-27 14:31:42', 1, NULL, 'update', 1, NULL),
(420, 'Course  \"Marketing Digital\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-27 14:32:52', NULL, '2023-12-27 14:32:52', '2023-12-27 14:32:52', 1, NULL, 'update', 1, NULL),
(421, 'Course  \"Marketing Digital\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2023-12-27 14:33:26', NULL, '2023-12-27 14:33:26', '2023-12-27 14:33:26', 1, NULL, 'update', 1, NULL),
(422, 'Course  \"INGLÊS BÁSICO\" was changed', 'Course', 'Changes were made in \"name, description\" by user: Admin Makemoney at: 2023-12-27 23:10:25', NULL, '2023-12-27 23:10:25', '2023-12-27 23:10:25', 1, NULL, 'update', 1, NULL),
(423, 'Course  \"MANDARIM BÁSICO\" was changed', 'Course', 'Changes were made in \"name\" by user: Admin Makemoney at: 2023-12-27 23:10:58', NULL, '2023-12-27 23:10:58', '2023-12-27 23:10:58', 1, NULL, 'update', 1, NULL),
(424, 'Course  \"Fotografia\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2023-12-27 23:34:41', NULL, '2023-12-27 23:34:41', '2023-12-27 23:34:41', 1, NULL, 'create', 1, NULL),
(425, 'Course  \"Fotografia\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2023-12-27 23:45:44', NULL, '2023-12-27 23:45:44', '2023-12-27 23:45:44', 1, NULL, 'update', 1, NULL),
(426, 'Course  \"Fotografia\" was changed', 'Course', 'Changes were made in \"status\" by user: Admin Makemoney at: 2023-12-27 23:58:15', NULL, '2023-12-27 23:58:15', '2023-12-27 23:58:15', 1, NULL, 'update', 1, NULL),
(427, 'Course  \"HST\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2024-01-07 18:14:04', NULL, '2024-01-07 18:14:04', '2024-01-07 18:14:04', 1, NULL, 'create', 1, NULL),
(428, 'Course  \"ATENDIMENTO AO PÚBLICO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2024-01-13 14:58:06', NULL, '2024-01-13 14:58:06', '2024-01-13 14:58:06', 1, NULL, 'create', 1, NULL),
(429, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"description, price\" by user: Admin Makemoney at: 2024-01-13 15:09:26', NULL, '2024-01-13 15:09:27', '2024-01-13 15:09:27', 1, NULL, 'update', 1, NULL),
(430, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 15:22:24', NULL, '2024-01-13 15:22:24', '2024-01-13 15:22:24', 1, NULL, 'update', 1, NULL),
(431, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 16:31:31', NULL, '2024-01-13 16:31:31', '2024-01-13 16:31:31', 1, NULL, 'update', 1, NULL),
(432, 'Course  \"AUXILIAR ADMINISTRATIVO\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2024-01-13 16:42:13', NULL, '2024-01-13 16:42:13', '2024-01-13 16:42:13', 1, NULL, 'create', 1, NULL),
(433, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2024-01-13 16:43:34', NULL, '2024-01-13 16:43:34', '2024-01-13 16:43:34', 1, NULL, 'update', 1, NULL),
(434, 'Course  \"HST\" was changed', 'Course', 'Changes were made in \"image, price\" by user: Admin Makemoney at: 2024-01-13 17:01:31', NULL, '2024-01-13 17:01:31', '2024-01-13 17:01:31', 1, NULL, 'update', 1, NULL),
(435, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:27:40', NULL, '2024-01-13 17:27:40', '2024-01-13 17:27:40', 1, NULL, 'update', 1, NULL),
(436, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"image\" by user: Admin Makemoney at: 2024-01-13 17:33:09', NULL, '2024-01-13 17:33:09', '2024-01-13 17:33:09', 1, NULL, 'update', 1, NULL),
(437, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:40:34', NULL, '2024-01-13 17:40:34', '2024-01-13 17:40:34', 1, NULL, 'update', 1, NULL),
(438, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:41:17', NULL, '2024-01-13 17:41:17', '2024-01-13 17:41:17', 1, NULL, 'update', 1, NULL);
INSERT INTO `log` (`id`, `title`, `entity`, `description`, `obs`, `created_at`, `updated_at`, `active`, `notify_role`, `action`, `action_from_user_id`, `action_to_user_id`) VALUES
(439, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:42:02', NULL, '2024-01-13 17:42:02', '2024-01-13 17:42:02', 1, NULL, 'update', 1, NULL),
(440, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"image, description\" by user: Admin Makemoney at: 2024-01-13 17:44:28', NULL, '2024-01-13 17:44:28', '2024-01-13 17:44:28', 1, NULL, 'update', 1, NULL),
(441, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:50:53', NULL, '2024-01-13 17:50:53', '2024-01-13 17:50:53', 1, NULL, 'update', 1, NULL),
(442, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:52:08', NULL, '2024-01-13 17:52:08', '2024-01-13 17:52:08', 1, NULL, 'update', 1, NULL),
(443, 'Course  \"AUXILIAR ADMINISTRATIVO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 17:53:12', NULL, '2024-01-13 17:53:12', '2024-01-13 17:53:12', 1, NULL, 'update', 1, NULL),
(444, 'Course  \"HST\" was changed', 'Course', 'Changes were made in \"image, price\" by user: Admin Makemoney at: 2024-01-13 17:59:19', NULL, '2024-01-13 17:59:19', '2024-01-13 17:59:19', 1, NULL, 'update', 1, NULL),
(445, 'Course  \"HST\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 18:00:30', NULL, '2024-01-13 18:00:30', '2024-01-13 18:00:30', 1, NULL, 'update', 1, NULL),
(446, 'Course  \"HST\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 18:01:19', NULL, '2024-01-13 18:01:19', '2024-01-13 18:01:19', 1, NULL, 'update', 1, NULL),
(447, 'Course  \"Marketing Digital\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 18:05:03', NULL, '2024-01-13 18:05:03', '2024-01-13 18:05:03', 1, NULL, 'update', 1, NULL),
(448, 'Course  \"Contabilidade Geral Básica\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 18:06:50', NULL, '2024-01-13 18:06:50', '2024-01-13 18:06:50', 1, NULL, 'update', 1, NULL),
(449, 'Course  \"Contabilidade Geral Básica\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-13 18:07:33', NULL, '2024-01-13 18:07:33', '2024-01-13 18:07:33', 1, NULL, 'update', 1, NULL),
(450, 'Course  \"ATENDIMENTO AO PÚBLICO\" was changed', 'Course', 'Changes were made in \"description\" by user: Admin Makemoney at: 2024-01-17 18:41:00', NULL, '2024-01-17 18:41:01', '2024-01-17 18:41:01', 1, NULL, 'update', 1, NULL),
(451, 'You have a new order: DFPUZ2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Jessica Mandlate\" was received at 2024-05-15 11:02:34', NULL, '2024-05-15 11:02:34', '2024-05-15 11:02:34', 1, NULL, 'create', 42, NULL),
(452, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2024-05-15 16:44:46', NULL, '2024-05-15 16:44:46', '2024-05-15 16:44:46', 1, NULL, 'update', 1, NULL),
(453, 'You have a new order: YKYLQ2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Miranda Salvador Massango\" was received at 2024-05-15 16:58:01', NULL, '2024-05-15 16:58:02', '2024-05-15 16:58:02', 1, NULL, 'create', 34, NULL),
(454, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"YKYLQ2024\" at 2024-05-15 16:58:36', NULL, '2024-05-15 16:58:36', '2024-05-15 16:58:36', 1, NULL, 'create', 34, NULL),
(455, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"price, discounted price\" by user: Admin Makemoney at: 2024-05-18 16:32:30', NULL, '2024-05-18 16:32:30', '2024-05-18 16:32:30', 1, NULL, 'update', 1, NULL),
(456, 'You have a new order: RNZDI2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Eminercia Mazuze\" was received at 2024-05-29 12:21:41', NULL, '2024-05-29 12:21:41', '2024-05-29 12:21:41', 1, NULL, 'create', 45, NULL),
(457, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"RNZDI2024\" at 2024-05-29 12:22:23', NULL, '2024-05-29 12:22:23', '2024-05-29 12:22:23', 1, NULL, 'create', 45, NULL),
(458, 'You have a new order: KUKVW2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Jessica Mandlate\" was received at 2024-06-05 11:56:19', NULL, '2024-06-05 11:56:19', '2024-06-05 11:56:19', 1, NULL, 'create', 42, NULL),
(459, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"KUKVW2024\" at 2024-06-05 12:00:59', NULL, '2024-06-05 12:00:59', '2024-06-05 12:00:59', 1, NULL, 'create', 42, NULL),
(460, 'You have a new order: ZIOFR2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Mércia Gabriel Francisco\" was received at 2024-06-06 11:32:19', NULL, '2024-06-06 11:32:19', '2024-06-06 11:32:19', 1, NULL, 'create', 46, NULL),
(461, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 15:13:33', NULL, '2024-06-06 15:13:33', '2024-06-06 15:13:33', 1, NULL, 'update', 1, NULL),
(462, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 15:15:48', NULL, '2024-06-06 15:15:48', '2024-06-06 15:15:48', 1, NULL, 'update', 1, NULL),
(463, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 15:17:28', NULL, '2024-06-06 15:17:28', '2024-06-06 15:17:28', 1, NULL, 'update', 1, NULL),
(464, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 15:21:40', NULL, '2024-06-06 15:21:40', '2024-06-06 15:21:40', 1, NULL, 'update', 1, NULL),
(465, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 16:07:47', NULL, '2024-06-06 16:07:47', '2024-06-06 16:07:47', 1, NULL, 'update', 1, NULL),
(466, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 16:08:16', NULL, '2024-06-06 16:08:16', '2024-06-06 16:08:16', 1, NULL, 'update', 1, NULL),
(467, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-06-06 16:08:39', NULL, '2024-06-06 16:08:39', '2024-06-06 16:08:39', 1, NULL, 'update', 1, NULL),
(468, 'You have a new order: BFRNP2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"fernando mussuei\" was received at 2024-06-07 11:49:14', NULL, '2024-06-07 11:49:14', '2024-06-07 11:49:14', 1, NULL, 'create', 49, NULL),
(469, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"BFRNP2024\" at 2024-06-07 11:49:36', NULL, '2024-06-07 11:49:36', '2024-06-07 11:49:36', 1, NULL, 'create', 49, NULL),
(470, 'You have a new order: LAEDG2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Mércia Gabriel Francisco\" was received at 2024-06-11 10:23:00', NULL, '2024-06-11 10:23:00', '2024-06-11 10:23:00', 1, NULL, 'create', 46, NULL),
(471, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"LAEDG2024\" at 2024-06-11 10:23:38', NULL, '2024-06-11 10:23:38', '2024-06-11 10:23:38', 1, NULL, 'create', 46, NULL),
(472, 'You have a new order: BHNUV2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"Reginaldo Nhone\" was received at 2024-06-11 17:24:49', NULL, '2024-06-11 17:24:49', '2024-06-11 17:24:49', 1, NULL, 'create', 57, NULL),
(473, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"BHNUV2024\" at 2024-06-11 17:25:13', NULL, '2024-06-11 17:25:13', '2024-06-11 17:25:13', 1, NULL, 'create', 57, NULL),
(474, 'You have a new order: FONFI2024', 'Order', 'New Order for \"CLASSE MÉDIA\" from \"Calado Chicumule\" was received at 2024-06-20 06:34:35', NULL, '2024-06-20 06:34:35', '2024-06-20 06:34:35', 1, NULL, 'create', 61, NULL),
(475, 'New Payment Confirmation', 'Payment', 'You received a payment confirmation for order:  \"FONFI2024\" at 2024-06-20 10:44:23', NULL, '2024-06-20 10:44:23', '2024-06-20 10:44:23', 1, NULL, 'create', 61, NULL),
(476, 'You have a new order: KGYXP2024', 'Order', 'New Order for \"CLASSE  BÁSICA\" from \"ilidio Zucula\" was received at 2024-06-20 12:51:04', NULL, '2024-06-20 12:51:05', '2024-06-20 12:51:05', 1, NULL, 'create', 63, NULL),
(477, 'Course  \"Ingles Intermedio\" created', 'Course', 'A new course was created by: Admin Makemoney at: 2024-07-09 12:31:49', NULL, '2024-07-09 12:31:49', '2024-07-09 12:31:49', 1, NULL, 'create', 1, NULL),
(478, 'Course  \"Ingles Intermedio\" was changed', 'Course', 'Changes were made in \"price\" by user: Admin Makemoney at: 2024-07-13 13:40:21', NULL, '2024-07-13 13:40:22', '2024-07-13 13:40:22', 1, NULL, 'update', 1, NULL),
(479, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-07-17 11:04:45', NULL, '2024-07-17 11:04:45', '2024-07-17 11:04:45', 1, NULL, 'update', 1, NULL),
(480, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"description, discounted price\" by user: Admin Makemoney at: 2024-07-22 11:13:52', NULL, '2024-07-22 11:13:52', '2024-07-22 11:13:52', 1, NULL, 'update', 1, NULL),
(481, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-07-25 06:22:32', NULL, '2024-07-25 06:22:32', '2024-07-25 06:22:32', 1, NULL, 'update', 1, NULL),
(482, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-07-25 06:24:18', NULL, '2024-07-25 06:24:18', '2024-07-25 06:24:18', 1, NULL, 'update', 1, NULL),
(483, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-07-25 06:24:55', NULL, '2024-07-25 06:24:55', '2024-07-25 06:24:55', 1, NULL, 'update', 1, NULL),
(484, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"discount percentage, discounted price\" by user: Admin Makemoney at: 2024-07-25 06:26:50', NULL, '2024-07-25 06:26:50', '2024-07-25 06:26:50', 1, NULL, 'update', 1, NULL),
(485, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"discount percentage, discounted price\" by user: Admin Makemoney at: 2024-07-25 06:29:17', NULL, '2024-07-25 06:29:17', '2024-07-25 06:29:17', 1, NULL, 'update', 1, NULL),
(486, 'Treasure  \"CLASSE  BÁSICA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-08-06 15:57:01', NULL, '2024-08-06 15:57:01', '2024-08-06 15:57:01', 1, NULL, 'update', 1, NULL),
(487, 'Treasure  \"CLASSE MÉDIA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-08-06 15:57:50', NULL, '2024-08-06 15:57:50', '2024-08-06 15:57:50', 1, NULL, 'update', 1, NULL),
(488, 'Treasure  \"CLASSE ALTA\" was changed', 'Treasure', 'Changes were made in \"price, discount, discount percentage, discounted price\" by user: Admin Makemoney at: 2024-08-06 15:59:04', NULL, '2024-08-06 15:59:04', '2024-08-06 15:59:04', 1, NULL, 'update', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_10_125341_add_fields_to_payment', 1),
(3, '2023_03_10_205832_order_content', 2),
(6, '2023_03_10_234115_users_verification', 3),
(7, '2023_03_12_075701_add_fields_to_order', 4),
(9, '2023_04_01_190558_create_company_info', 5),
(10, '2023_04_01_234124_add_columns_to_company_infoe', 6),
(11, '2023_04_02_002911_add_columns_to_settings', 7),
(12, '2023_08_12_061012_add_fields_to_cert_request', 8),
(13, '2023_08_12_061012_add_fields_to_course', 8),
(14, '2023_10_24_104923_content_migration', 9),
(15, '2023_10_24_110213_course_migration', 9),
(16, '2023_10_26_144002_course_content_by_type', 9),
(17, '0001_01_01_000000_create_users_table', 10),
(18, '0001_01_01_000001_create_cache_table', 10),
(19, '0001_01_01_000002_create_jobs_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `treasure_id` int(11) DEFAULT NULL,
  `dateorder` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total` double(9,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `subtotal` float NOT NULL DEFAULT 0,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ResellerID` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `reference`, `customer_id`, `treasure_id`, `dateorder`, `status`, `total`, `discount`, `subtotal`, `comments`, `created_at`, `updated_at`, `ResellerID`, `name`) VALUES
(62, 'WJMXD2023', 38, 1, NULL, 'Pago', 0.15, 1.85, 0.15, '', '2023-08-06 03:03:50', '2023-08-06 03:08:44', 'MAKEMONEY', 'Hilario Hugo'),
(63, 'CTNKR2023', 39, 23, NULL, 'Pago', 0.40, 0.1, 0.4, '', '2023-08-06 17:11:26', '2023-08-06 17:11:52', 'VP-10034', 'Silvano Sitoe'),
(64, 'VPNEZ2023', 40, 1, NULL, 'Pago', 0.15, 1.85, 0.15, '', '2023-08-06 20:11:33', '2023-08-06 20:14:31', 'VD-10039', 'Gerson Munguambe'),
(65, 'EGTPM2023', 42, 23, NULL, 'Pago', 1.00, 1, 1, '', '2023-09-07 15:22:24', '2023-09-07 15:22:57', 'VD-10039', 'Aylton Muianga'),
(66, 'ZLCTK2023', 44, 23, NULL, 'Pago', 1.00, 1, 1, '', '2023-09-09 20:24:07', '2023-09-09 20:24:42', 'VD-10039', 'Antonia Vembane'),
(67, 'GSHJD2023', 60, 1, NULL, 'Pago', 500.00, 0, 500, '', '2023-11-29 08:29:00', '2023-11-29 08:37:28', 'VG-10040', 'Edinel Mulhanga'),
(69, 'YKYLQ2024', 65, 1, NULL, 'Pago', 1.00, 0, 1, '', '2024-05-15 14:58:01', '2024-05-15 14:58:36', 'VD-10039', 'Miranda Salvador Massango'),
(70, 'RNZDI2024', 76, 1, NULL, 'Pago', 500.00, 0, 500, '', '2024-05-29 10:21:41', '2024-05-29 10:22:23', 'VG-10040', 'Eminercia Mazuze'),
(71, 'KUKVW2024', 73, 1, NULL, 'Pago', 500.00, 0, 500, '', '2024-06-05 09:56:19', '2024-06-05 10:00:59', 'VG-10065', 'Jessica Mandlate'),
(73, 'BFRNP2024', 80, 1, NULL, 'Pago', 500.00, 0, 500, '', '2024-06-07 09:49:14', '2024-06-07 09:49:36', 'VG-10040', 'fernando mussuei'),
(74, 'LAEDG2024', 77, 1, NULL, 'Pago', 500.00, 0, 500, '', '2024-06-11 08:23:00', '2024-06-11 08:23:38', 'VG-10040', 'Mércia Gabriel Francisco'),
(75, 'BHNUV2024', 88, 1, NULL, 'Pago', 500.00, 0, 500, '', '2024-06-11 15:24:49', '2024-06-11 15:25:13', 'VG-10065', 'Reginaldo Nhone'),
(76, 'FONFI2024', 92, 22, NULL, 'Pago', 1000.00, 0, 1000, '', '2024-06-20 04:34:35', '2024-06-20 08:44:23', 'VG-10065', 'Calado Chicumule');

-- --------------------------------------------------------

--
-- Table structure for table `order_content`
--

CREATE TABLE `order_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_content`
--

INSERT INTO `order_content` (`id`, `order_id`, `course_id`, `content_id`, `created_at`, `updated_at`) VALUES
(55, 63, 67, 44, '2023-08-06 17:11:26', NULL),
(56, 63, 67, 45, '2023-08-06 17:11:26', NULL),
(57, 63, 72, 50, '2023-08-06 17:11:26', NULL),
(58, 63, 72, 51, '2023-08-06 17:11:26', NULL),
(59, 65, 74, 56, '2023-09-07 15:22:24', NULL),
(60, 65, 79, 55, '2023-09-07 15:22:24', NULL),
(61, 65, 80, 57, '2023-09-07 15:22:24', NULL),
(62, 65, 80, 64, '2023-09-07 15:22:24', NULL),
(63, 65, 81, 60, '2023-09-07 15:22:24', NULL),
(64, 65, 81, 61, '2023-09-07 15:22:24', NULL),
(65, 65, 81, 62, '2023-09-07 15:22:24', NULL),
(66, 65, 81, 63, '2023-09-07 15:22:24', NULL),
(67, 65, 82, 65, '2023-09-07 15:22:24', NULL),
(68, 65, 83, 66, '2023-09-07 15:22:24', NULL),
(69, 65, 83, 67, '2023-09-07 15:22:24', NULL),
(70, 65, 84, 68, '2023-09-07 15:22:24', NULL),
(71, 65, 84, 69, '2023-09-07 15:22:24', NULL),
(72, 65, 84, 70, '2023-09-07 15:22:24', NULL),
(73, 65, 84, 71, '2023-09-07 15:22:24', NULL),
(74, 65, 85, 72, '2023-09-07 15:22:24', NULL),
(75, 65, 85, 73, '2023-09-07 15:22:24', NULL),
(76, 65, 85, 74, '2023-09-07 15:22:24', NULL),
(77, 66, 74, 56, '2023-09-09 20:24:07', NULL),
(78, 66, 79, 55, '2023-09-09 20:24:07', NULL),
(79, 66, 80, 57, '2023-09-09 20:24:07', NULL),
(80, 66, 80, 64, '2023-09-09 20:24:07', NULL),
(81, 66, 81, 60, '2023-09-09 20:24:07', NULL),
(82, 66, 81, 61, '2023-09-09 20:24:07', NULL),
(83, 66, 81, 62, '2023-09-09 20:24:07', NULL),
(84, 66, 81, 63, '2023-09-09 20:24:07', NULL),
(85, 66, 82, 65, '2023-09-09 20:24:07', NULL),
(86, 66, 83, 66, '2023-09-09 20:24:07', NULL),
(87, 66, 83, 67, '2023-09-09 20:24:07', NULL),
(88, 66, 84, 68, '2023-09-09 20:24:07', NULL),
(89, 66, 84, 69, '2023-09-09 20:24:07', NULL),
(90, 66, 84, 70, '2023-09-09 20:24:07', NULL),
(91, 66, 84, 71, '2023-09-09 20:24:07', NULL),
(92, 66, 85, 72, '2023-09-09 20:24:07', NULL),
(93, 66, 85, 73, '2023-09-09 20:24:07', NULL),
(94, 66, 85, 74, '2023-09-09 20:24:07', NULL),
(95, 67, 81, 60, '2023-11-29 08:29:00', NULL),
(96, 67, 81, 61, '2023-11-29 08:29:00', NULL),
(97, 67, 81, 62, '2023-11-29 08:29:00', NULL),
(98, 67, 81, 63, '2023-11-29 08:29:00', NULL),
(99, 67, 81, 147, '2023-11-29 08:29:00', NULL),
(100, 67, 81, 148, '2023-11-29 08:29:00', NULL),
(101, 67, 81, 149, '2023-11-29 08:29:00', NULL),
(102, 67, 81, 150, '2023-11-29 08:29:00', NULL),
(103, 67, 81, 151, '2023-11-29 08:29:00', NULL),
(104, 67, 81, 152, '2023-11-29 08:29:00', NULL),
(105, 67, 82, 65, '2023-11-29 08:29:00', NULL),
(106, 67, 82, 140, '2023-11-29 08:29:00', NULL),
(107, 67, 82, 141, '2023-11-29 08:29:00', NULL),
(108, 67, 82, 142, '2023-11-29 08:29:00', NULL),
(109, 67, 82, 143, '2023-11-29 08:29:00', NULL),
(110, 67, 82, 144, '2023-11-29 08:29:00', NULL),
(111, 67, 82, 145, '2023-11-29 08:29:00', NULL),
(112, 67, 82, 146, '2023-11-29 08:29:00', NULL),
(113, 67, 85, 72, '2023-11-29 08:29:00', NULL),
(114, 67, 85, 73, '2023-11-29 08:29:00', NULL),
(115, 67, 85, 74, '2023-11-29 08:29:00', NULL),
(116, 67, 85, 153, '2023-11-29 08:29:00', NULL),
(117, 67, 85, 154, '2023-11-29 08:29:00', NULL),
(118, 67, 85, 155, '2023-11-29 08:29:00', NULL),
(119, 67, 85, 156, '2023-11-29 08:29:00', NULL),
(120, 67, 85, 157, '2023-11-29 08:29:00', NULL),
(121, 67, 85, 158, '2023-11-29 08:29:00', NULL),
(122, 67, 88, 105, '2023-11-29 08:29:00', NULL),
(123, 67, 88, 116, '2023-11-29 08:29:00', NULL),
(124, 67, 88, 118, '2023-11-29 08:29:00', NULL),
(125, 67, 88, 119, '2023-11-29 08:29:00', NULL),
(126, 67, 88, 120, '2023-11-29 08:29:00', NULL),
(127, 67, 88, 124, '2023-11-29 08:29:00', NULL),
(128, 67, 88, 125, '2023-11-29 08:29:00', NULL),
(129, 67, 88, 126, '2023-11-29 08:29:00', NULL),
(130, 67, 88, 127, '2023-11-29 08:29:00', NULL),
(131, 67, 88, 128, '2023-11-29 08:29:00', NULL),
(132, 67, 88, 129, '2023-11-29 08:29:00', NULL),
(133, 67, 89, 106, '2023-11-29 08:29:00', NULL),
(134, 67, 89, 131, '2023-11-29 08:29:00', NULL),
(135, 67, 89, 132, '2023-11-29 08:29:00', NULL),
(136, 67, 89, 133, '2023-11-29 08:29:00', NULL),
(137, 67, 89, 134, '2023-11-29 08:29:00', NULL),
(138, 67, 89, 135, '2023-11-29 08:29:00', NULL),
(139, 67, 90, 136, '2023-11-29 08:29:00', NULL),
(140, 67, 90, 137, '2023-11-29 08:29:00', NULL),
(141, 67, 90, 138, '2023-11-29 08:29:00', NULL),
(142, 67, 90, 139, '2023-11-29 08:29:00', NULL),
(143, 67, 91, 159, '2023-11-29 08:29:00', NULL),
(144, 67, 91, 160, '2023-11-29 08:29:00', NULL),
(145, 67, 91, 161, '2023-11-29 08:29:00', NULL),
(146, 67, 91, 162, '2023-11-29 08:29:00', NULL),
(147, 67, 91, 163, '2023-11-29 08:29:00', NULL),
(148, 67, 91, 164, '2023-11-29 08:29:00', NULL),
(149, 67, 91, 165, '2023-11-29 08:29:00', NULL),
(150, 67, 91, 166, '2023-11-29 08:29:00', NULL),
(151, 67, 91, 167, '2023-11-29 08:29:00', NULL),
(152, 67, 91, 168, '2023-11-29 08:29:00', NULL),
(153, 67, 91, 169, '2023-11-29 08:29:00', NULL),
(154, 67, 91, 170, '2023-11-29 08:29:00', NULL),
(155, 67, 91, 171, '2023-11-29 08:29:00', NULL),
(156, 67, 91, 172, '2023-11-29 08:29:00', NULL),
(157, 67, 91, 173, '2023-11-29 08:29:00', NULL),
(273, 69, 81, 60, '2024-05-15 14:58:02', NULL),
(274, 69, 81, 61, '2024-05-15 14:58:02', NULL),
(275, 69, 81, 62, '2024-05-15 14:58:02', NULL),
(276, 69, 81, 63, '2024-05-15 14:58:02', NULL),
(277, 69, 81, 147, '2024-05-15 14:58:02', NULL),
(278, 69, 81, 148, '2024-05-15 14:58:02', NULL),
(279, 69, 81, 149, '2024-05-15 14:58:02', NULL),
(280, 69, 81, 150, '2024-05-15 14:58:02', NULL),
(281, 69, 81, 151, '2024-05-15 14:58:02', NULL),
(282, 69, 81, 152, '2024-05-15 14:58:02', NULL),
(283, 69, 82, 65, '2024-05-15 14:58:02', NULL),
(284, 69, 82, 140, '2024-05-15 14:58:02', NULL),
(285, 69, 82, 141, '2024-05-15 14:58:02', NULL),
(286, 69, 82, 142, '2024-05-15 14:58:02', NULL),
(287, 69, 82, 143, '2024-05-15 14:58:02', NULL),
(288, 69, 82, 144, '2024-05-15 14:58:02', NULL),
(289, 69, 82, 145, '2024-05-15 14:58:02', NULL),
(290, 69, 82, 146, '2024-05-15 14:58:02', NULL),
(291, 69, 84, 68, '2024-05-15 14:58:02', NULL),
(292, 69, 84, 69, '2024-05-15 14:58:02', NULL),
(293, 69, 84, 70, '2024-05-15 14:58:02', NULL),
(294, 69, 84, 71, '2024-05-15 14:58:02', NULL),
(295, 69, 84, 185, '2024-05-15 14:58:02', NULL),
(296, 69, 84, 186, '2024-05-15 14:58:02', NULL),
(297, 69, 84, 187, '2024-05-15 14:58:02', NULL),
(298, 69, 84, 188, '2024-05-15 14:58:02', NULL),
(299, 69, 84, 189, '2024-05-15 14:58:02', NULL),
(300, 69, 84, 190, '2024-05-15 14:58:02', NULL),
(301, 69, 84, 191, '2024-05-15 14:58:02', NULL),
(302, 69, 85, 72, '2024-05-15 14:58:02', NULL),
(303, 69, 85, 73, '2024-05-15 14:58:02', NULL),
(304, 69, 85, 74, '2024-05-15 14:58:02', NULL),
(305, 69, 85, 153, '2024-05-15 14:58:02', NULL),
(306, 69, 85, 154, '2024-05-15 14:58:02', NULL),
(307, 69, 85, 155, '2024-05-15 14:58:02', NULL),
(308, 69, 85, 156, '2024-05-15 14:58:02', NULL),
(309, 69, 85, 157, '2024-05-15 14:58:02', NULL),
(310, 69, 85, 158, '2024-05-15 14:58:02', NULL),
(311, 69, 88, 105, '2024-05-15 14:58:02', NULL),
(312, 69, 88, 116, '2024-05-15 14:58:02', NULL),
(313, 69, 88, 118, '2024-05-15 14:58:02', NULL),
(314, 69, 88, 119, '2024-05-15 14:58:02', NULL),
(315, 69, 88, 120, '2024-05-15 14:58:02', NULL),
(316, 69, 88, 124, '2024-05-15 14:58:02', NULL),
(317, 69, 88, 125, '2024-05-15 14:58:02', NULL),
(318, 69, 88, 126, '2024-05-15 14:58:02', NULL),
(319, 69, 88, 127, '2024-05-15 14:58:02', NULL),
(320, 69, 88, 128, '2024-05-15 14:58:02', NULL),
(321, 69, 88, 129, '2024-05-15 14:58:02', NULL),
(322, 69, 89, 106, '2024-05-15 14:58:02', NULL),
(323, 69, 89, 131, '2024-05-15 14:58:02', NULL),
(324, 69, 89, 132, '2024-05-15 14:58:02', NULL),
(325, 69, 89, 133, '2024-05-15 14:58:02', NULL),
(326, 69, 89, 134, '2024-05-15 14:58:02', NULL),
(327, 69, 89, 135, '2024-05-15 14:58:02', NULL),
(328, 69, 90, 136, '2024-05-15 14:58:02', NULL),
(329, 69, 90, 137, '2024-05-15 14:58:02', NULL),
(330, 69, 90, 138, '2024-05-15 14:58:02', NULL),
(331, 69, 90, 139, '2024-05-15 14:58:02', NULL),
(332, 69, 91, 159, '2024-05-15 14:58:02', NULL),
(333, 69, 91, 160, '2024-05-15 14:58:02', NULL),
(334, 69, 91, 161, '2024-05-15 14:58:02', NULL),
(335, 69, 91, 162, '2024-05-15 14:58:02', NULL),
(336, 69, 91, 163, '2024-05-15 14:58:02', NULL),
(337, 69, 91, 164, '2024-05-15 14:58:02', NULL),
(338, 69, 91, 165, '2024-05-15 14:58:02', NULL),
(339, 69, 91, 166, '2024-05-15 14:58:02', NULL),
(340, 69, 91, 167, '2024-05-15 14:58:02', NULL),
(341, 69, 91, 168, '2024-05-15 14:58:02', NULL),
(342, 69, 91, 169, '2024-05-15 14:58:02', NULL),
(343, 69, 91, 170, '2024-05-15 14:58:02', NULL),
(344, 69, 91, 171, '2024-05-15 14:58:02', NULL),
(345, 69, 91, 172, '2024-05-15 14:58:02', NULL),
(346, 69, 91, 173, '2024-05-15 14:58:02', NULL),
(347, 69, 92, 184, '2024-05-15 14:58:02', NULL),
(348, 69, 93, 192, '2024-05-15 14:58:02', NULL),
(349, 69, 93, 193, '2024-05-15 14:58:02', NULL),
(350, 69, 93, 194, '2024-05-15 14:58:02', NULL),
(351, 69, 93, 195, '2024-05-15 14:58:02', NULL),
(352, 69, 93, 196, '2024-05-15 14:58:02', NULL),
(353, 69, 93, 197, '2024-05-15 14:58:02', NULL),
(354, 69, 93, 198, '2024-05-15 14:58:02', NULL),
(355, 69, 93, 199, '2024-05-15 14:58:02', NULL),
(356, 69, 93, 206, '2024-05-15 14:58:02', NULL),
(357, 69, 93, 207, '2024-05-15 14:58:02', NULL),
(358, 69, 93, 208, '2024-05-15 14:58:02', NULL),
(359, 69, 93, 209, '2024-05-15 14:58:02', NULL),
(360, 69, 94, 200, '2024-05-15 14:58:02', NULL),
(361, 69, 94, 201, '2024-05-15 14:58:02', NULL),
(362, 69, 94, 202, '2024-05-15 14:58:02', NULL),
(363, 69, 94, 203, '2024-05-15 14:58:02', NULL),
(364, 69, 94, 204, '2024-05-15 14:58:02', NULL),
(365, 69, 94, 205, '2024-05-15 14:58:02', NULL),
(366, 69, 96, 218, '2024-05-15 14:58:02', NULL),
(367, 69, 96, 219, '2024-05-15 14:58:02', NULL),
(368, 69, 96, 220, '2024-05-15 14:58:02', NULL),
(369, 69, 96, 221, '2024-05-15 14:58:02', NULL),
(370, 69, 96, 222, '2024-05-15 14:58:02', NULL),
(371, 69, 96, 223, '2024-05-15 14:58:02', NULL),
(372, 69, 97, 224, '2024-05-15 14:58:02', NULL),
(373, 69, 97, 225, '2024-05-15 14:58:02', NULL),
(374, 69, 97, 226, '2024-05-15 14:58:02', NULL),
(375, 69, 97, 227, '2024-05-15 14:58:02', NULL),
(376, 69, 97, 228, '2024-05-15 14:58:02', NULL),
(377, 69, 97, 229, '2024-05-15 14:58:02', NULL),
(378, 69, 97, 230, '2024-05-15 14:58:02', NULL),
(379, 69, 97, 231, '2024-05-15 14:58:02', NULL),
(380, 69, 97, 232, '2024-05-15 14:58:02', NULL),
(381, 69, 98, 233, '2024-05-15 14:58:02', NULL),
(382, 69, 98, 234, '2024-05-15 14:58:02', NULL),
(383, 69, 98, 235, '2024-05-15 14:58:02', NULL),
(384, 69, 98, 236, '2024-05-15 14:58:02', NULL),
(385, 69, 98, 237, '2024-05-15 14:58:02', NULL),
(386, 69, 98, 238, '2024-05-15 14:58:02', NULL),
(387, 69, 98, 239, '2024-05-15 14:58:02', NULL),
(388, 70, 81, 60, '2024-05-29 10:21:41', NULL),
(389, 70, 81, 61, '2024-05-29 10:21:41', NULL),
(390, 70, 81, 62, '2024-05-29 10:21:41', NULL),
(391, 70, 81, 63, '2024-05-29 10:21:41', NULL),
(392, 70, 81, 147, '2024-05-29 10:21:41', NULL),
(393, 70, 81, 148, '2024-05-29 10:21:41', NULL),
(394, 70, 81, 149, '2024-05-29 10:21:41', NULL),
(395, 70, 81, 150, '2024-05-29 10:21:41', NULL),
(396, 70, 81, 151, '2024-05-29 10:21:41', NULL),
(397, 70, 81, 152, '2024-05-29 10:21:41', NULL),
(398, 70, 82, 65, '2024-05-29 10:21:41', NULL),
(399, 70, 82, 140, '2024-05-29 10:21:41', NULL),
(400, 70, 82, 141, '2024-05-29 10:21:41', NULL),
(401, 70, 82, 142, '2024-05-29 10:21:41', NULL),
(402, 70, 82, 143, '2024-05-29 10:21:41', NULL),
(403, 70, 82, 144, '2024-05-29 10:21:41', NULL),
(404, 70, 82, 145, '2024-05-29 10:21:41', NULL),
(405, 70, 82, 146, '2024-05-29 10:21:41', NULL),
(406, 70, 84, 68, '2024-05-29 10:21:41', NULL),
(407, 70, 84, 69, '2024-05-29 10:21:41', NULL),
(408, 70, 84, 70, '2024-05-29 10:21:41', NULL),
(409, 70, 84, 71, '2024-05-29 10:21:41', NULL),
(410, 70, 84, 185, '2024-05-29 10:21:41', NULL),
(411, 70, 84, 186, '2024-05-29 10:21:41', NULL),
(412, 70, 84, 187, '2024-05-29 10:21:41', NULL),
(413, 70, 84, 188, '2024-05-29 10:21:41', NULL),
(414, 70, 84, 189, '2024-05-29 10:21:41', NULL),
(415, 70, 84, 190, '2024-05-29 10:21:41', NULL),
(416, 70, 84, 191, '2024-05-29 10:21:41', NULL),
(417, 70, 85, 72, '2024-05-29 10:21:41', NULL),
(418, 70, 85, 73, '2024-05-29 10:21:41', NULL),
(419, 70, 85, 74, '2024-05-29 10:21:41', NULL),
(420, 70, 85, 153, '2024-05-29 10:21:41', NULL),
(421, 70, 85, 154, '2024-05-29 10:21:41', NULL),
(422, 70, 85, 155, '2024-05-29 10:21:41', NULL),
(423, 70, 85, 156, '2024-05-29 10:21:41', NULL),
(424, 70, 85, 157, '2024-05-29 10:21:41', NULL),
(425, 70, 85, 158, '2024-05-29 10:21:41', NULL),
(426, 70, 88, 105, '2024-05-29 10:21:41', NULL),
(427, 70, 88, 116, '2024-05-29 10:21:41', NULL),
(428, 70, 88, 118, '2024-05-29 10:21:41', NULL),
(429, 70, 88, 119, '2024-05-29 10:21:41', NULL),
(430, 70, 88, 120, '2024-05-29 10:21:41', NULL),
(431, 70, 88, 124, '2024-05-29 10:21:41', NULL),
(432, 70, 88, 125, '2024-05-29 10:21:41', NULL),
(433, 70, 88, 126, '2024-05-29 10:21:41', NULL),
(434, 70, 88, 127, '2024-05-29 10:21:41', NULL),
(435, 70, 88, 128, '2024-05-29 10:21:41', NULL),
(436, 70, 88, 129, '2024-05-29 10:21:41', NULL),
(437, 70, 89, 106, '2024-05-29 10:21:41', NULL),
(438, 70, 89, 131, '2024-05-29 10:21:41', NULL),
(439, 70, 89, 132, '2024-05-29 10:21:41', NULL),
(440, 70, 89, 133, '2024-05-29 10:21:41', NULL),
(441, 70, 89, 134, '2024-05-29 10:21:41', NULL),
(442, 70, 89, 135, '2024-05-29 10:21:41', NULL),
(443, 70, 90, 136, '2024-05-29 10:21:41', NULL),
(444, 70, 90, 137, '2024-05-29 10:21:41', NULL),
(445, 70, 90, 138, '2024-05-29 10:21:41', NULL),
(446, 70, 90, 139, '2024-05-29 10:21:41', NULL),
(447, 70, 91, 159, '2024-05-29 10:21:41', NULL),
(448, 70, 91, 160, '2024-05-29 10:21:41', NULL),
(449, 70, 91, 161, '2024-05-29 10:21:41', NULL),
(450, 70, 91, 162, '2024-05-29 10:21:41', NULL),
(451, 70, 91, 163, '2024-05-29 10:21:41', NULL),
(452, 70, 91, 164, '2024-05-29 10:21:41', NULL),
(453, 70, 91, 165, '2024-05-29 10:21:41', NULL),
(454, 70, 91, 166, '2024-05-29 10:21:41', NULL),
(455, 70, 91, 167, '2024-05-29 10:21:41', NULL),
(456, 70, 91, 168, '2024-05-29 10:21:41', NULL),
(457, 70, 91, 169, '2024-05-29 10:21:41', NULL),
(458, 70, 91, 170, '2024-05-29 10:21:41', NULL),
(459, 70, 91, 171, '2024-05-29 10:21:41', NULL),
(460, 70, 91, 172, '2024-05-29 10:21:41', NULL),
(461, 70, 91, 173, '2024-05-29 10:21:41', NULL),
(462, 70, 92, 184, '2024-05-29 10:21:41', NULL),
(463, 70, 93, 192, '2024-05-29 10:21:41', NULL),
(464, 70, 93, 193, '2024-05-29 10:21:41', NULL),
(465, 70, 93, 194, '2024-05-29 10:21:41', NULL),
(466, 70, 93, 195, '2024-05-29 10:21:41', NULL),
(467, 70, 93, 196, '2024-05-29 10:21:41', NULL),
(468, 70, 93, 197, '2024-05-29 10:21:41', NULL),
(469, 70, 93, 198, '2024-05-29 10:21:41', NULL),
(470, 70, 93, 199, '2024-05-29 10:21:41', NULL),
(471, 70, 93, 206, '2024-05-29 10:21:41', NULL),
(472, 70, 93, 207, '2024-05-29 10:21:41', NULL),
(473, 70, 93, 208, '2024-05-29 10:21:41', NULL),
(474, 70, 93, 209, '2024-05-29 10:21:41', NULL),
(475, 70, 94, 200, '2024-05-29 10:21:41', NULL),
(476, 70, 94, 201, '2024-05-29 10:21:41', NULL),
(477, 70, 94, 202, '2024-05-29 10:21:41', NULL),
(478, 70, 94, 203, '2024-05-29 10:21:41', NULL),
(479, 70, 94, 204, '2024-05-29 10:21:41', NULL),
(480, 70, 94, 205, '2024-05-29 10:21:41', NULL),
(481, 70, 96, 218, '2024-05-29 10:21:41', NULL),
(482, 70, 96, 219, '2024-05-29 10:21:41', NULL),
(483, 70, 96, 220, '2024-05-29 10:21:41', NULL),
(484, 70, 96, 221, '2024-05-29 10:21:41', NULL),
(485, 70, 96, 222, '2024-05-29 10:21:41', NULL),
(486, 70, 96, 223, '2024-05-29 10:21:41', NULL),
(487, 70, 97, 224, '2024-05-29 10:21:41', NULL),
(488, 70, 97, 225, '2024-05-29 10:21:41', NULL),
(489, 70, 97, 226, '2024-05-29 10:21:41', NULL),
(490, 70, 97, 227, '2024-05-29 10:21:41', NULL),
(491, 70, 97, 228, '2024-05-29 10:21:41', NULL),
(492, 70, 97, 229, '2024-05-29 10:21:41', NULL),
(493, 70, 97, 230, '2024-05-29 10:21:41', NULL),
(494, 70, 97, 231, '2024-05-29 10:21:41', NULL),
(495, 70, 97, 232, '2024-05-29 10:21:41', NULL),
(496, 70, 98, 233, '2024-05-29 10:21:41', NULL),
(497, 70, 98, 234, '2024-05-29 10:21:41', NULL),
(498, 70, 98, 235, '2024-05-29 10:21:41', NULL),
(499, 70, 98, 236, '2024-05-29 10:21:41', NULL),
(500, 70, 98, 237, '2024-05-29 10:21:41', NULL),
(501, 70, 98, 238, '2024-05-29 10:21:41', NULL),
(502, 70, 98, 239, '2024-05-29 10:21:41', NULL),
(503, 71, 81, 60, '2024-06-05 09:56:19', NULL),
(504, 71, 81, 61, '2024-06-05 09:56:19', NULL),
(505, 71, 81, 62, '2024-06-05 09:56:19', NULL),
(506, 71, 81, 63, '2024-06-05 09:56:19', NULL),
(507, 71, 81, 147, '2024-06-05 09:56:19', NULL),
(508, 71, 81, 148, '2024-06-05 09:56:19', NULL),
(509, 71, 81, 149, '2024-06-05 09:56:19', NULL),
(510, 71, 81, 150, '2024-06-05 09:56:19', NULL),
(511, 71, 81, 151, '2024-06-05 09:56:19', NULL),
(512, 71, 81, 152, '2024-06-05 09:56:19', NULL),
(513, 71, 82, 65, '2024-06-05 09:56:19', NULL),
(514, 71, 82, 140, '2024-06-05 09:56:19', NULL),
(515, 71, 82, 141, '2024-06-05 09:56:19', NULL),
(516, 71, 82, 142, '2024-06-05 09:56:19', NULL),
(517, 71, 82, 143, '2024-06-05 09:56:19', NULL),
(518, 71, 82, 144, '2024-06-05 09:56:19', NULL),
(519, 71, 82, 145, '2024-06-05 09:56:19', NULL),
(520, 71, 82, 146, '2024-06-05 09:56:19', NULL),
(521, 71, 84, 68, '2024-06-05 09:56:19', NULL),
(522, 71, 84, 69, '2024-06-05 09:56:19', NULL),
(523, 71, 84, 70, '2024-06-05 09:56:19', NULL),
(524, 71, 84, 71, '2024-06-05 09:56:19', NULL),
(525, 71, 84, 185, '2024-06-05 09:56:19', NULL),
(526, 71, 84, 186, '2024-06-05 09:56:19', NULL),
(527, 71, 84, 187, '2024-06-05 09:56:19', NULL),
(528, 71, 84, 188, '2024-06-05 09:56:19', NULL),
(529, 71, 84, 189, '2024-06-05 09:56:19', NULL),
(530, 71, 84, 190, '2024-06-05 09:56:19', NULL),
(531, 71, 84, 191, '2024-06-05 09:56:19', NULL),
(532, 71, 85, 72, '2024-06-05 09:56:19', NULL),
(533, 71, 85, 73, '2024-06-05 09:56:19', NULL),
(534, 71, 85, 74, '2024-06-05 09:56:19', NULL),
(535, 71, 85, 153, '2024-06-05 09:56:19', NULL),
(536, 71, 85, 154, '2024-06-05 09:56:19', NULL),
(537, 71, 85, 155, '2024-06-05 09:56:19', NULL),
(538, 71, 85, 156, '2024-06-05 09:56:19', NULL),
(539, 71, 85, 157, '2024-06-05 09:56:19', NULL),
(540, 71, 85, 158, '2024-06-05 09:56:19', NULL),
(541, 71, 88, 105, '2024-06-05 09:56:19', NULL),
(542, 71, 88, 116, '2024-06-05 09:56:19', NULL),
(543, 71, 88, 118, '2024-06-05 09:56:19', NULL),
(544, 71, 88, 119, '2024-06-05 09:56:19', NULL),
(545, 71, 88, 120, '2024-06-05 09:56:19', NULL),
(546, 71, 88, 124, '2024-06-05 09:56:19', NULL),
(547, 71, 88, 125, '2024-06-05 09:56:19', NULL),
(548, 71, 88, 126, '2024-06-05 09:56:19', NULL),
(549, 71, 88, 127, '2024-06-05 09:56:19', NULL),
(550, 71, 88, 128, '2024-06-05 09:56:19', NULL),
(551, 71, 88, 129, '2024-06-05 09:56:19', NULL),
(552, 71, 89, 106, '2024-06-05 09:56:19', NULL),
(553, 71, 89, 131, '2024-06-05 09:56:19', NULL),
(554, 71, 89, 132, '2024-06-05 09:56:19', NULL),
(555, 71, 89, 133, '2024-06-05 09:56:19', NULL),
(556, 71, 89, 134, '2024-06-05 09:56:19', NULL),
(557, 71, 89, 135, '2024-06-05 09:56:19', NULL),
(558, 71, 90, 136, '2024-06-05 09:56:19', NULL),
(559, 71, 90, 137, '2024-06-05 09:56:19', NULL),
(560, 71, 90, 138, '2024-06-05 09:56:19', NULL),
(561, 71, 90, 139, '2024-06-05 09:56:19', NULL),
(562, 71, 91, 159, '2024-06-05 09:56:19', NULL),
(563, 71, 91, 160, '2024-06-05 09:56:19', NULL),
(564, 71, 91, 161, '2024-06-05 09:56:19', NULL),
(565, 71, 91, 162, '2024-06-05 09:56:19', NULL),
(566, 71, 91, 163, '2024-06-05 09:56:19', NULL),
(567, 71, 91, 164, '2024-06-05 09:56:19', NULL),
(568, 71, 91, 165, '2024-06-05 09:56:19', NULL),
(569, 71, 91, 166, '2024-06-05 09:56:19', NULL),
(570, 71, 91, 167, '2024-06-05 09:56:19', NULL),
(571, 71, 91, 168, '2024-06-05 09:56:19', NULL),
(572, 71, 91, 169, '2024-06-05 09:56:19', NULL),
(573, 71, 91, 170, '2024-06-05 09:56:19', NULL),
(574, 71, 91, 171, '2024-06-05 09:56:19', NULL),
(575, 71, 91, 172, '2024-06-05 09:56:19', NULL),
(576, 71, 91, 173, '2024-06-05 09:56:19', NULL),
(577, 71, 92, 184, '2024-06-05 09:56:19', NULL),
(578, 71, 93, 192, '2024-06-05 09:56:19', NULL),
(579, 71, 93, 193, '2024-06-05 09:56:19', NULL),
(580, 71, 93, 194, '2024-06-05 09:56:19', NULL),
(581, 71, 93, 195, '2024-06-05 09:56:19', NULL),
(582, 71, 93, 196, '2024-06-05 09:56:19', NULL),
(583, 71, 93, 197, '2024-06-05 09:56:19', NULL),
(584, 71, 93, 198, '2024-06-05 09:56:19', NULL),
(585, 71, 93, 199, '2024-06-05 09:56:19', NULL),
(586, 71, 93, 206, '2024-06-05 09:56:19', NULL),
(587, 71, 93, 207, '2024-06-05 09:56:19', NULL),
(588, 71, 93, 208, '2024-06-05 09:56:19', NULL),
(589, 71, 93, 209, '2024-06-05 09:56:19', NULL),
(590, 71, 94, 200, '2024-06-05 09:56:19', NULL),
(591, 71, 94, 201, '2024-06-05 09:56:19', NULL),
(592, 71, 94, 202, '2024-06-05 09:56:19', NULL),
(593, 71, 94, 203, '2024-06-05 09:56:19', NULL),
(594, 71, 94, 204, '2024-06-05 09:56:19', NULL),
(595, 71, 94, 205, '2024-06-05 09:56:19', NULL),
(596, 71, 96, 218, '2024-06-05 09:56:19', NULL),
(597, 71, 96, 219, '2024-06-05 09:56:19', NULL),
(598, 71, 96, 220, '2024-06-05 09:56:19', NULL),
(599, 71, 96, 221, '2024-06-05 09:56:19', NULL),
(600, 71, 96, 222, '2024-06-05 09:56:19', NULL),
(601, 71, 96, 223, '2024-06-05 09:56:19', NULL),
(602, 71, 97, 224, '2024-06-05 09:56:19', NULL),
(603, 71, 97, 225, '2024-06-05 09:56:19', NULL),
(604, 71, 97, 226, '2024-06-05 09:56:19', NULL),
(605, 71, 97, 227, '2024-06-05 09:56:19', NULL),
(606, 71, 97, 228, '2024-06-05 09:56:19', NULL),
(607, 71, 97, 229, '2024-06-05 09:56:19', NULL),
(608, 71, 97, 230, '2024-06-05 09:56:19', NULL),
(609, 71, 97, 231, '2024-06-05 09:56:19', NULL),
(610, 71, 97, 232, '2024-06-05 09:56:19', NULL),
(611, 71, 98, 233, '2024-06-05 09:56:19', NULL),
(612, 71, 98, 234, '2024-06-05 09:56:19', NULL),
(613, 71, 98, 235, '2024-06-05 09:56:19', NULL),
(614, 71, 98, 236, '2024-06-05 09:56:19', NULL),
(615, 71, 98, 237, '2024-06-05 09:56:19', NULL),
(616, 71, 98, 238, '2024-06-05 09:56:19', NULL),
(617, 71, 98, 239, '2024-06-05 09:56:19', NULL),
(733, 73, 81, 60, '2024-06-07 09:49:14', NULL),
(734, 73, 81, 61, '2024-06-07 09:49:14', NULL),
(735, 73, 81, 62, '2024-06-07 09:49:14', NULL),
(736, 73, 81, 63, '2024-06-07 09:49:14', NULL),
(737, 73, 81, 147, '2024-06-07 09:49:14', NULL),
(738, 73, 81, 148, '2024-06-07 09:49:14', NULL),
(739, 73, 81, 149, '2024-06-07 09:49:14', NULL),
(740, 73, 81, 150, '2024-06-07 09:49:14', NULL),
(741, 73, 81, 151, '2024-06-07 09:49:14', NULL),
(742, 73, 81, 152, '2024-06-07 09:49:14', NULL),
(743, 73, 82, 65, '2024-06-07 09:49:14', NULL),
(744, 73, 82, 140, '2024-06-07 09:49:14', NULL),
(745, 73, 82, 141, '2024-06-07 09:49:14', NULL),
(746, 73, 82, 142, '2024-06-07 09:49:14', NULL),
(747, 73, 82, 143, '2024-06-07 09:49:14', NULL),
(748, 73, 82, 144, '2024-06-07 09:49:14', NULL),
(749, 73, 82, 145, '2024-06-07 09:49:14', NULL),
(750, 73, 82, 146, '2024-06-07 09:49:14', NULL),
(751, 73, 84, 68, '2024-06-07 09:49:14', NULL),
(752, 73, 84, 69, '2024-06-07 09:49:14', NULL),
(753, 73, 84, 70, '2024-06-07 09:49:14', NULL),
(754, 73, 84, 71, '2024-06-07 09:49:14', NULL),
(755, 73, 84, 185, '2024-06-07 09:49:14', NULL),
(756, 73, 84, 186, '2024-06-07 09:49:14', NULL),
(757, 73, 84, 187, '2024-06-07 09:49:14', NULL),
(758, 73, 84, 188, '2024-06-07 09:49:14', NULL),
(759, 73, 84, 189, '2024-06-07 09:49:14', NULL),
(760, 73, 84, 190, '2024-06-07 09:49:14', NULL),
(761, 73, 84, 191, '2024-06-07 09:49:14', NULL),
(762, 73, 85, 72, '2024-06-07 09:49:14', NULL),
(763, 73, 85, 73, '2024-06-07 09:49:14', NULL),
(764, 73, 85, 74, '2024-06-07 09:49:14', NULL),
(765, 73, 85, 153, '2024-06-07 09:49:14', NULL),
(766, 73, 85, 154, '2024-06-07 09:49:14', NULL),
(767, 73, 85, 155, '2024-06-07 09:49:14', NULL),
(768, 73, 85, 156, '2024-06-07 09:49:14', NULL),
(769, 73, 85, 157, '2024-06-07 09:49:14', NULL),
(770, 73, 85, 158, '2024-06-07 09:49:14', NULL),
(771, 73, 88, 105, '2024-06-07 09:49:14', NULL),
(772, 73, 88, 116, '2024-06-07 09:49:14', NULL),
(773, 73, 88, 118, '2024-06-07 09:49:14', NULL),
(774, 73, 88, 119, '2024-06-07 09:49:14', NULL),
(775, 73, 88, 120, '2024-06-07 09:49:14', NULL),
(776, 73, 88, 124, '2024-06-07 09:49:14', NULL),
(777, 73, 88, 125, '2024-06-07 09:49:14', NULL),
(778, 73, 88, 126, '2024-06-07 09:49:14', NULL),
(779, 73, 88, 127, '2024-06-07 09:49:14', NULL),
(780, 73, 88, 128, '2024-06-07 09:49:14', NULL),
(781, 73, 88, 129, '2024-06-07 09:49:14', NULL),
(782, 73, 89, 106, '2024-06-07 09:49:14', NULL),
(783, 73, 89, 131, '2024-06-07 09:49:14', NULL),
(784, 73, 89, 132, '2024-06-07 09:49:14', NULL),
(785, 73, 89, 133, '2024-06-07 09:49:14', NULL),
(786, 73, 89, 134, '2024-06-07 09:49:14', NULL),
(787, 73, 89, 135, '2024-06-07 09:49:14', NULL),
(788, 73, 90, 136, '2024-06-07 09:49:14', NULL),
(789, 73, 90, 137, '2024-06-07 09:49:14', NULL),
(790, 73, 90, 138, '2024-06-07 09:49:14', NULL),
(791, 73, 90, 139, '2024-06-07 09:49:14', NULL),
(792, 73, 91, 159, '2024-06-07 09:49:14', NULL),
(793, 73, 91, 160, '2024-06-07 09:49:14', NULL),
(794, 73, 91, 161, '2024-06-07 09:49:14', NULL),
(795, 73, 91, 162, '2024-06-07 09:49:14', NULL),
(796, 73, 91, 163, '2024-06-07 09:49:14', NULL),
(797, 73, 91, 164, '2024-06-07 09:49:14', NULL),
(798, 73, 91, 165, '2024-06-07 09:49:14', NULL),
(799, 73, 91, 166, '2024-06-07 09:49:14', NULL),
(800, 73, 91, 167, '2024-06-07 09:49:14', NULL),
(801, 73, 91, 168, '2024-06-07 09:49:14', NULL),
(802, 73, 91, 169, '2024-06-07 09:49:14', NULL),
(803, 73, 91, 170, '2024-06-07 09:49:14', NULL),
(804, 73, 91, 171, '2024-06-07 09:49:14', NULL),
(805, 73, 91, 172, '2024-06-07 09:49:14', NULL),
(806, 73, 91, 173, '2024-06-07 09:49:14', NULL),
(807, 73, 92, 184, '2024-06-07 09:49:14', NULL),
(808, 73, 93, 192, '2024-06-07 09:49:14', NULL),
(809, 73, 93, 193, '2024-06-07 09:49:14', NULL),
(810, 73, 93, 194, '2024-06-07 09:49:14', NULL),
(811, 73, 93, 195, '2024-06-07 09:49:14', NULL),
(812, 73, 93, 196, '2024-06-07 09:49:14', NULL),
(813, 73, 93, 197, '2024-06-07 09:49:14', NULL),
(814, 73, 93, 198, '2024-06-07 09:49:14', NULL),
(815, 73, 93, 199, '2024-06-07 09:49:14', NULL),
(816, 73, 93, 206, '2024-06-07 09:49:14', NULL),
(817, 73, 93, 207, '2024-06-07 09:49:14', NULL),
(818, 73, 93, 208, '2024-06-07 09:49:14', NULL),
(819, 73, 93, 209, '2024-06-07 09:49:14', NULL),
(820, 73, 94, 200, '2024-06-07 09:49:14', NULL),
(821, 73, 94, 201, '2024-06-07 09:49:14', NULL),
(822, 73, 94, 202, '2024-06-07 09:49:14', NULL),
(823, 73, 94, 203, '2024-06-07 09:49:14', NULL),
(824, 73, 94, 204, '2024-06-07 09:49:14', NULL),
(825, 73, 94, 205, '2024-06-07 09:49:14', NULL),
(826, 73, 96, 218, '2024-06-07 09:49:14', NULL),
(827, 73, 96, 219, '2024-06-07 09:49:14', NULL),
(828, 73, 96, 220, '2024-06-07 09:49:14', NULL),
(829, 73, 96, 221, '2024-06-07 09:49:14', NULL),
(830, 73, 96, 222, '2024-06-07 09:49:14', NULL),
(831, 73, 96, 223, '2024-06-07 09:49:14', NULL),
(832, 73, 97, 224, '2024-06-07 09:49:14', NULL),
(833, 73, 97, 225, '2024-06-07 09:49:14', NULL),
(834, 73, 97, 226, '2024-06-07 09:49:14', NULL),
(835, 73, 97, 227, '2024-06-07 09:49:14', NULL),
(836, 73, 97, 228, '2024-06-07 09:49:14', NULL),
(837, 73, 97, 229, '2024-06-07 09:49:14', NULL),
(838, 73, 97, 230, '2024-06-07 09:49:14', NULL),
(839, 73, 97, 231, '2024-06-07 09:49:14', NULL),
(840, 73, 97, 232, '2024-06-07 09:49:14', NULL),
(841, 73, 98, 233, '2024-06-07 09:49:14', NULL),
(842, 73, 98, 234, '2024-06-07 09:49:14', NULL),
(843, 73, 98, 235, '2024-06-07 09:49:14', NULL),
(844, 73, 98, 236, '2024-06-07 09:49:14', NULL),
(845, 73, 98, 237, '2024-06-07 09:49:14', NULL),
(846, 73, 98, 238, '2024-06-07 09:49:14', NULL),
(847, 73, 98, 239, '2024-06-07 09:49:14', NULL),
(848, 74, 81, 60, '2024-06-11 08:23:00', NULL),
(849, 74, 81, 61, '2024-06-11 08:23:00', NULL),
(850, 74, 81, 62, '2024-06-11 08:23:00', NULL),
(851, 74, 81, 63, '2024-06-11 08:23:00', NULL),
(852, 74, 81, 147, '2024-06-11 08:23:00', NULL),
(853, 74, 81, 148, '2024-06-11 08:23:00', NULL),
(854, 74, 81, 149, '2024-06-11 08:23:00', NULL),
(855, 74, 81, 150, '2024-06-11 08:23:00', NULL),
(856, 74, 81, 151, '2024-06-11 08:23:00', NULL),
(857, 74, 81, 152, '2024-06-11 08:23:00', NULL),
(858, 74, 82, 65, '2024-06-11 08:23:00', NULL),
(859, 74, 82, 140, '2024-06-11 08:23:00', NULL),
(860, 74, 82, 141, '2024-06-11 08:23:00', NULL),
(861, 74, 82, 142, '2024-06-11 08:23:00', NULL),
(862, 74, 82, 143, '2024-06-11 08:23:00', NULL),
(863, 74, 82, 144, '2024-06-11 08:23:00', NULL),
(864, 74, 82, 145, '2024-06-11 08:23:00', NULL),
(865, 74, 82, 146, '2024-06-11 08:23:00', NULL),
(866, 74, 84, 68, '2024-06-11 08:23:00', NULL),
(867, 74, 84, 69, '2024-06-11 08:23:00', NULL),
(868, 74, 84, 70, '2024-06-11 08:23:00', NULL),
(869, 74, 84, 71, '2024-06-11 08:23:00', NULL),
(870, 74, 84, 185, '2024-06-11 08:23:00', NULL),
(871, 74, 84, 186, '2024-06-11 08:23:00', NULL),
(872, 74, 84, 187, '2024-06-11 08:23:00', NULL),
(873, 74, 84, 188, '2024-06-11 08:23:00', NULL),
(874, 74, 84, 189, '2024-06-11 08:23:00', NULL),
(875, 74, 84, 190, '2024-06-11 08:23:00', NULL),
(876, 74, 84, 191, '2024-06-11 08:23:00', NULL),
(877, 74, 85, 72, '2024-06-11 08:23:00', NULL),
(878, 74, 85, 73, '2024-06-11 08:23:00', NULL),
(879, 74, 85, 74, '2024-06-11 08:23:00', NULL),
(880, 74, 85, 153, '2024-06-11 08:23:00', NULL),
(881, 74, 85, 154, '2024-06-11 08:23:00', NULL),
(882, 74, 85, 155, '2024-06-11 08:23:00', NULL),
(883, 74, 85, 156, '2024-06-11 08:23:00', NULL),
(884, 74, 85, 157, '2024-06-11 08:23:00', NULL),
(885, 74, 85, 158, '2024-06-11 08:23:00', NULL),
(886, 74, 88, 105, '2024-06-11 08:23:00', NULL),
(887, 74, 88, 116, '2024-06-11 08:23:00', NULL),
(888, 74, 88, 118, '2024-06-11 08:23:00', NULL),
(889, 74, 88, 119, '2024-06-11 08:23:00', NULL),
(890, 74, 88, 120, '2024-06-11 08:23:00', NULL),
(891, 74, 88, 124, '2024-06-11 08:23:00', NULL),
(892, 74, 88, 125, '2024-06-11 08:23:00', NULL),
(893, 74, 88, 126, '2024-06-11 08:23:00', NULL),
(894, 74, 88, 127, '2024-06-11 08:23:00', NULL),
(895, 74, 88, 128, '2024-06-11 08:23:00', NULL),
(896, 74, 88, 129, '2024-06-11 08:23:00', NULL),
(897, 74, 89, 106, '2024-06-11 08:23:00', NULL),
(898, 74, 89, 131, '2024-06-11 08:23:00', NULL),
(899, 74, 89, 132, '2024-06-11 08:23:00', NULL),
(900, 74, 89, 133, '2024-06-11 08:23:00', NULL),
(901, 74, 89, 134, '2024-06-11 08:23:00', NULL),
(902, 74, 89, 135, '2024-06-11 08:23:00', NULL),
(903, 74, 90, 136, '2024-06-11 08:23:00', NULL),
(904, 74, 90, 137, '2024-06-11 08:23:00', NULL),
(905, 74, 90, 138, '2024-06-11 08:23:00', NULL),
(906, 74, 90, 139, '2024-06-11 08:23:00', NULL),
(907, 74, 91, 159, '2024-06-11 08:23:00', NULL),
(908, 74, 91, 160, '2024-06-11 08:23:00', NULL),
(909, 74, 91, 161, '2024-06-11 08:23:00', NULL),
(910, 74, 91, 162, '2024-06-11 08:23:00', NULL),
(911, 74, 91, 163, '2024-06-11 08:23:00', NULL),
(912, 74, 91, 164, '2024-06-11 08:23:00', NULL),
(913, 74, 91, 165, '2024-06-11 08:23:00', NULL),
(914, 74, 91, 166, '2024-06-11 08:23:00', NULL),
(915, 74, 91, 167, '2024-06-11 08:23:00', NULL),
(916, 74, 91, 168, '2024-06-11 08:23:00', NULL),
(917, 74, 91, 169, '2024-06-11 08:23:00', NULL),
(918, 74, 91, 170, '2024-06-11 08:23:00', NULL),
(919, 74, 91, 171, '2024-06-11 08:23:00', NULL),
(920, 74, 91, 172, '2024-06-11 08:23:00', NULL),
(921, 74, 91, 173, '2024-06-11 08:23:00', NULL),
(922, 74, 92, 184, '2024-06-11 08:23:00', NULL),
(923, 74, 93, 192, '2024-06-11 08:23:00', NULL),
(924, 74, 93, 193, '2024-06-11 08:23:00', NULL),
(925, 74, 93, 194, '2024-06-11 08:23:00', NULL),
(926, 74, 93, 195, '2024-06-11 08:23:00', NULL),
(927, 74, 93, 196, '2024-06-11 08:23:00', NULL),
(928, 74, 93, 197, '2024-06-11 08:23:00', NULL),
(929, 74, 93, 198, '2024-06-11 08:23:00', NULL),
(930, 74, 93, 199, '2024-06-11 08:23:00', NULL),
(931, 74, 93, 206, '2024-06-11 08:23:00', NULL),
(932, 74, 93, 207, '2024-06-11 08:23:00', NULL),
(933, 74, 93, 208, '2024-06-11 08:23:00', NULL),
(934, 74, 93, 209, '2024-06-11 08:23:00', NULL),
(935, 74, 94, 200, '2024-06-11 08:23:00', NULL),
(936, 74, 94, 201, '2024-06-11 08:23:00', NULL),
(937, 74, 94, 202, '2024-06-11 08:23:00', NULL),
(938, 74, 94, 203, '2024-06-11 08:23:00', NULL),
(939, 74, 94, 204, '2024-06-11 08:23:00', NULL),
(940, 74, 94, 205, '2024-06-11 08:23:00', NULL),
(941, 74, 96, 218, '2024-06-11 08:23:00', NULL),
(942, 74, 96, 219, '2024-06-11 08:23:00', NULL),
(943, 74, 96, 220, '2024-06-11 08:23:00', NULL),
(944, 74, 96, 221, '2024-06-11 08:23:00', NULL),
(945, 74, 96, 222, '2024-06-11 08:23:00', NULL),
(946, 74, 96, 223, '2024-06-11 08:23:00', NULL),
(947, 74, 97, 224, '2024-06-11 08:23:00', NULL),
(948, 74, 97, 225, '2024-06-11 08:23:00', NULL),
(949, 74, 97, 226, '2024-06-11 08:23:00', NULL),
(950, 74, 97, 227, '2024-06-11 08:23:00', NULL),
(951, 74, 97, 228, '2024-06-11 08:23:00', NULL),
(952, 74, 97, 229, '2024-06-11 08:23:00', NULL),
(953, 74, 97, 230, '2024-06-11 08:23:00', NULL),
(954, 74, 97, 231, '2024-06-11 08:23:00', NULL),
(955, 74, 97, 232, '2024-06-11 08:23:00', NULL),
(956, 74, 98, 233, '2024-06-11 08:23:00', NULL),
(957, 74, 98, 234, '2024-06-11 08:23:00', NULL),
(958, 74, 98, 235, '2024-06-11 08:23:00', NULL),
(959, 74, 98, 236, '2024-06-11 08:23:00', NULL),
(960, 74, 98, 237, '2024-06-11 08:23:00', NULL),
(961, 74, 98, 238, '2024-06-11 08:23:00', NULL),
(962, 74, 98, 239, '2024-06-11 08:23:00', NULL),
(963, 75, 81, 60, '2024-06-11 15:24:49', NULL),
(964, 75, 81, 61, '2024-06-11 15:24:49', NULL),
(965, 75, 81, 62, '2024-06-11 15:24:49', NULL),
(966, 75, 81, 63, '2024-06-11 15:24:49', NULL),
(967, 75, 81, 147, '2024-06-11 15:24:49', NULL),
(968, 75, 81, 148, '2024-06-11 15:24:49', NULL),
(969, 75, 81, 149, '2024-06-11 15:24:49', NULL),
(970, 75, 81, 150, '2024-06-11 15:24:49', NULL),
(971, 75, 81, 151, '2024-06-11 15:24:49', NULL),
(972, 75, 81, 152, '2024-06-11 15:24:49', NULL),
(973, 75, 82, 65, '2024-06-11 15:24:49', NULL),
(974, 75, 82, 140, '2024-06-11 15:24:49', NULL),
(975, 75, 82, 141, '2024-06-11 15:24:49', NULL),
(976, 75, 82, 142, '2024-06-11 15:24:49', NULL),
(977, 75, 82, 143, '2024-06-11 15:24:49', NULL),
(978, 75, 82, 144, '2024-06-11 15:24:49', NULL),
(979, 75, 82, 145, '2024-06-11 15:24:49', NULL),
(980, 75, 82, 146, '2024-06-11 15:24:49', NULL),
(981, 75, 84, 68, '2024-06-11 15:24:49', NULL),
(982, 75, 84, 69, '2024-06-11 15:24:49', NULL),
(983, 75, 84, 70, '2024-06-11 15:24:49', NULL),
(984, 75, 84, 71, '2024-06-11 15:24:49', NULL),
(985, 75, 84, 185, '2024-06-11 15:24:49', NULL),
(986, 75, 84, 186, '2024-06-11 15:24:49', NULL),
(987, 75, 84, 187, '2024-06-11 15:24:49', NULL),
(988, 75, 84, 188, '2024-06-11 15:24:49', NULL),
(989, 75, 84, 189, '2024-06-11 15:24:49', NULL),
(990, 75, 84, 190, '2024-06-11 15:24:49', NULL),
(991, 75, 84, 191, '2024-06-11 15:24:49', NULL),
(992, 75, 85, 72, '2024-06-11 15:24:49', NULL),
(993, 75, 85, 73, '2024-06-11 15:24:49', NULL),
(994, 75, 85, 74, '2024-06-11 15:24:49', NULL),
(995, 75, 85, 153, '2024-06-11 15:24:49', NULL),
(996, 75, 85, 154, '2024-06-11 15:24:49', NULL),
(997, 75, 85, 155, '2024-06-11 15:24:49', NULL),
(998, 75, 85, 156, '2024-06-11 15:24:49', NULL),
(999, 75, 85, 157, '2024-06-11 15:24:49', NULL),
(1000, 75, 85, 158, '2024-06-11 15:24:49', NULL),
(1001, 75, 88, 105, '2024-06-11 15:24:49', NULL),
(1002, 75, 88, 116, '2024-06-11 15:24:49', NULL),
(1003, 75, 88, 118, '2024-06-11 15:24:49', NULL),
(1004, 75, 88, 119, '2024-06-11 15:24:49', NULL),
(1005, 75, 88, 120, '2024-06-11 15:24:49', NULL),
(1006, 75, 88, 124, '2024-06-11 15:24:49', NULL),
(1007, 75, 88, 125, '2024-06-11 15:24:49', NULL),
(1008, 75, 88, 126, '2024-06-11 15:24:49', NULL),
(1009, 75, 88, 127, '2024-06-11 15:24:49', NULL),
(1010, 75, 88, 128, '2024-06-11 15:24:49', NULL),
(1011, 75, 88, 129, '2024-06-11 15:24:49', NULL),
(1012, 75, 89, 106, '2024-06-11 15:24:49', NULL),
(1013, 75, 89, 131, '2024-06-11 15:24:49', NULL),
(1014, 75, 89, 132, '2024-06-11 15:24:49', NULL),
(1015, 75, 89, 133, '2024-06-11 15:24:49', NULL),
(1016, 75, 89, 134, '2024-06-11 15:24:49', NULL),
(1017, 75, 89, 135, '2024-06-11 15:24:49', NULL),
(1018, 75, 90, 136, '2024-06-11 15:24:49', NULL),
(1019, 75, 90, 137, '2024-06-11 15:24:49', NULL),
(1020, 75, 90, 138, '2024-06-11 15:24:49', NULL),
(1021, 75, 90, 139, '2024-06-11 15:24:49', NULL),
(1022, 75, 91, 159, '2024-06-11 15:24:49', NULL),
(1023, 75, 91, 160, '2024-06-11 15:24:49', NULL),
(1024, 75, 91, 161, '2024-06-11 15:24:49', NULL),
(1025, 75, 91, 162, '2024-06-11 15:24:49', NULL),
(1026, 75, 91, 163, '2024-06-11 15:24:49', NULL),
(1027, 75, 91, 164, '2024-06-11 15:24:49', NULL),
(1028, 75, 91, 165, '2024-06-11 15:24:49', NULL),
(1029, 75, 91, 166, '2024-06-11 15:24:49', NULL),
(1030, 75, 91, 167, '2024-06-11 15:24:49', NULL),
(1031, 75, 91, 168, '2024-06-11 15:24:49', NULL),
(1032, 75, 91, 169, '2024-06-11 15:24:49', NULL),
(1033, 75, 91, 170, '2024-06-11 15:24:49', NULL),
(1034, 75, 91, 171, '2024-06-11 15:24:49', NULL),
(1035, 75, 91, 172, '2024-06-11 15:24:49', NULL),
(1036, 75, 91, 173, '2024-06-11 15:24:49', NULL),
(1037, 75, 92, 184, '2024-06-11 15:24:49', NULL),
(1038, 75, 93, 192, '2024-06-11 15:24:49', NULL),
(1039, 75, 93, 193, '2024-06-11 15:24:49', NULL),
(1040, 75, 93, 194, '2024-06-11 15:24:49', NULL),
(1041, 75, 93, 195, '2024-06-11 15:24:49', NULL),
(1042, 75, 93, 196, '2024-06-11 15:24:49', NULL),
(1043, 75, 93, 197, '2024-06-11 15:24:49', NULL),
(1044, 75, 93, 198, '2024-06-11 15:24:49', NULL),
(1045, 75, 93, 199, '2024-06-11 15:24:49', NULL),
(1046, 75, 93, 206, '2024-06-11 15:24:49', NULL),
(1047, 75, 93, 207, '2024-06-11 15:24:49', NULL),
(1048, 75, 93, 208, '2024-06-11 15:24:49', NULL),
(1049, 75, 93, 209, '2024-06-11 15:24:49', NULL),
(1050, 75, 94, 200, '2024-06-11 15:24:49', NULL),
(1051, 75, 94, 201, '2024-06-11 15:24:49', NULL),
(1052, 75, 94, 202, '2024-06-11 15:24:49', NULL),
(1053, 75, 94, 203, '2024-06-11 15:24:49', NULL),
(1054, 75, 94, 204, '2024-06-11 15:24:49', NULL),
(1055, 75, 94, 205, '2024-06-11 15:24:49', NULL),
(1056, 75, 96, 218, '2024-06-11 15:24:49', NULL),
(1057, 75, 96, 219, '2024-06-11 15:24:49', NULL),
(1058, 75, 96, 220, '2024-06-11 15:24:49', NULL),
(1059, 75, 96, 221, '2024-06-11 15:24:49', NULL),
(1060, 75, 96, 222, '2024-06-11 15:24:49', NULL),
(1061, 75, 96, 223, '2024-06-11 15:24:49', NULL),
(1062, 75, 97, 224, '2024-06-11 15:24:49', NULL),
(1063, 75, 97, 225, '2024-06-11 15:24:49', NULL),
(1064, 75, 97, 226, '2024-06-11 15:24:49', NULL),
(1065, 75, 97, 227, '2024-06-11 15:24:49', NULL),
(1066, 75, 97, 228, '2024-06-11 15:24:49', NULL),
(1067, 75, 97, 229, '2024-06-11 15:24:49', NULL),
(1068, 75, 97, 230, '2024-06-11 15:24:49', NULL),
(1069, 75, 97, 231, '2024-06-11 15:24:49', NULL),
(1070, 75, 97, 232, '2024-06-11 15:24:49', NULL),
(1071, 75, 98, 233, '2024-06-11 15:24:49', NULL),
(1072, 75, 98, 234, '2024-06-11 15:24:49', NULL),
(1073, 75, 98, 235, '2024-06-11 15:24:49', NULL),
(1074, 75, 98, 236, '2024-06-11 15:24:49', NULL),
(1075, 75, 98, 237, '2024-06-11 15:24:49', NULL),
(1076, 75, 98, 238, '2024-06-11 15:24:49', NULL),
(1077, 75, 98, 239, '2024-06-11 15:24:49', NULL),
(1078, 76, 81, 60, '2024-06-20 04:34:35', NULL),
(1079, 76, 81, 61, '2024-06-20 04:34:35', NULL),
(1080, 76, 81, 62, '2024-06-20 04:34:35', NULL),
(1081, 76, 81, 63, '2024-06-20 04:34:35', NULL),
(1082, 76, 81, 147, '2024-06-20 04:34:35', NULL),
(1083, 76, 81, 148, '2024-06-20 04:34:35', NULL),
(1084, 76, 81, 149, '2024-06-20 04:34:35', NULL),
(1085, 76, 81, 150, '2024-06-20 04:34:35', NULL),
(1086, 76, 81, 151, '2024-06-20 04:34:35', NULL),
(1087, 76, 81, 152, '2024-06-20 04:34:35', NULL),
(1088, 76, 82, 65, '2024-06-20 04:34:35', NULL),
(1089, 76, 82, 140, '2024-06-20 04:34:35', NULL),
(1090, 76, 82, 141, '2024-06-20 04:34:35', NULL),
(1091, 76, 82, 142, '2024-06-20 04:34:35', NULL),
(1092, 76, 82, 143, '2024-06-20 04:34:35', NULL),
(1093, 76, 82, 144, '2024-06-20 04:34:35', NULL),
(1094, 76, 82, 145, '2024-06-20 04:34:35', NULL),
(1095, 76, 82, 146, '2024-06-20 04:34:35', NULL),
(1096, 76, 84, 68, '2024-06-20 04:34:35', NULL),
(1097, 76, 84, 69, '2024-06-20 04:34:35', NULL),
(1098, 76, 84, 70, '2024-06-20 04:34:35', NULL),
(1099, 76, 84, 71, '2024-06-20 04:34:35', NULL),
(1100, 76, 84, 185, '2024-06-20 04:34:35', NULL),
(1101, 76, 84, 186, '2024-06-20 04:34:35', NULL),
(1102, 76, 84, 187, '2024-06-20 04:34:35', NULL),
(1103, 76, 84, 188, '2024-06-20 04:34:35', NULL),
(1104, 76, 84, 189, '2024-06-20 04:34:35', NULL),
(1105, 76, 84, 190, '2024-06-20 04:34:35', NULL),
(1106, 76, 84, 191, '2024-06-20 04:34:35', NULL),
(1107, 76, 85, 72, '2024-06-20 04:34:35', NULL),
(1108, 76, 85, 73, '2024-06-20 04:34:35', NULL),
(1109, 76, 85, 74, '2024-06-20 04:34:35', NULL),
(1110, 76, 85, 153, '2024-06-20 04:34:35', NULL),
(1111, 76, 85, 154, '2024-06-20 04:34:35', NULL),
(1112, 76, 85, 155, '2024-06-20 04:34:35', NULL),
(1113, 76, 85, 156, '2024-06-20 04:34:35', NULL),
(1114, 76, 85, 157, '2024-06-20 04:34:35', NULL),
(1115, 76, 85, 158, '2024-06-20 04:34:35', NULL),
(1116, 76, 88, 105, '2024-06-20 04:34:35', NULL),
(1117, 76, 88, 116, '2024-06-20 04:34:35', NULL),
(1118, 76, 88, 118, '2024-06-20 04:34:35', NULL),
(1119, 76, 88, 119, '2024-06-20 04:34:35', NULL),
(1120, 76, 88, 120, '2024-06-20 04:34:35', NULL),
(1121, 76, 88, 124, '2024-06-20 04:34:35', NULL),
(1122, 76, 88, 125, '2024-06-20 04:34:35', NULL),
(1123, 76, 88, 126, '2024-06-20 04:34:35', NULL),
(1124, 76, 88, 127, '2024-06-20 04:34:35', NULL),
(1125, 76, 88, 128, '2024-06-20 04:34:35', NULL),
(1126, 76, 88, 129, '2024-06-20 04:34:35', NULL),
(1127, 76, 89, 106, '2024-06-20 04:34:35', NULL),
(1128, 76, 89, 131, '2024-06-20 04:34:35', NULL),
(1129, 76, 89, 132, '2024-06-20 04:34:35', NULL),
(1130, 76, 89, 133, '2024-06-20 04:34:35', NULL),
(1131, 76, 89, 134, '2024-06-20 04:34:35', NULL),
(1132, 76, 89, 135, '2024-06-20 04:34:35', NULL),
(1133, 76, 90, 136, '2024-06-20 04:34:35', NULL),
(1134, 76, 90, 137, '2024-06-20 04:34:35', NULL),
(1135, 76, 90, 138, '2024-06-20 04:34:35', NULL),
(1136, 76, 90, 139, '2024-06-20 04:34:35', NULL),
(1137, 76, 91, 159, '2024-06-20 04:34:35', NULL),
(1138, 76, 91, 160, '2024-06-20 04:34:35', NULL),
(1139, 76, 91, 161, '2024-06-20 04:34:35', NULL),
(1140, 76, 91, 162, '2024-06-20 04:34:35', NULL),
(1141, 76, 91, 163, '2024-06-20 04:34:35', NULL),
(1142, 76, 91, 164, '2024-06-20 04:34:35', NULL),
(1143, 76, 91, 165, '2024-06-20 04:34:35', NULL),
(1144, 76, 91, 166, '2024-06-20 04:34:35', NULL),
(1145, 76, 91, 167, '2024-06-20 04:34:35', NULL),
(1146, 76, 91, 168, '2024-06-20 04:34:35', NULL),
(1147, 76, 91, 169, '2024-06-20 04:34:35', NULL),
(1148, 76, 91, 170, '2024-06-20 04:34:35', NULL),
(1149, 76, 91, 171, '2024-06-20 04:34:35', NULL),
(1150, 76, 91, 172, '2024-06-20 04:34:35', NULL),
(1151, 76, 91, 173, '2024-06-20 04:34:35', NULL),
(1152, 76, 92, 184, '2024-06-20 04:34:35', NULL),
(1153, 76, 93, 192, '2024-06-20 04:34:35', NULL),
(1154, 76, 93, 193, '2024-06-20 04:34:35', NULL),
(1155, 76, 93, 194, '2024-06-20 04:34:35', NULL),
(1156, 76, 93, 195, '2024-06-20 04:34:35', NULL),
(1157, 76, 93, 196, '2024-06-20 04:34:35', NULL),
(1158, 76, 93, 197, '2024-06-20 04:34:35', NULL),
(1159, 76, 93, 198, '2024-06-20 04:34:35', NULL),
(1160, 76, 93, 199, '2024-06-20 04:34:35', NULL),
(1161, 76, 93, 206, '2024-06-20 04:34:35', NULL),
(1162, 76, 93, 207, '2024-06-20 04:34:35', NULL),
(1163, 76, 93, 208, '2024-06-20 04:34:35', NULL),
(1164, 76, 93, 209, '2024-06-20 04:34:35', NULL),
(1165, 76, 94, 200, '2024-06-20 04:34:35', NULL),
(1166, 76, 94, 201, '2024-06-20 04:34:35', NULL),
(1167, 76, 94, 202, '2024-06-20 04:34:35', NULL),
(1168, 76, 94, 203, '2024-06-20 04:34:35', NULL),
(1169, 76, 94, 204, '2024-06-20 04:34:35', NULL),
(1170, 76, 94, 205, '2024-06-20 04:34:35', NULL),
(1171, 76, 96, 218, '2024-06-20 04:34:35', NULL),
(1172, 76, 96, 219, '2024-06-20 04:34:35', NULL),
(1173, 76, 96, 220, '2024-06-20 04:34:35', NULL),
(1174, 76, 96, 221, '2024-06-20 04:34:35', NULL),
(1175, 76, 96, 222, '2024-06-20 04:34:35', NULL),
(1176, 76, 96, 223, '2024-06-20 04:34:35', NULL),
(1177, 76, 97, 224, '2024-06-20 04:34:35', NULL),
(1178, 76, 97, 225, '2024-06-20 04:34:35', NULL),
(1179, 76, 97, 226, '2024-06-20 04:34:35', NULL),
(1180, 76, 97, 227, '2024-06-20 04:34:35', NULL),
(1181, 76, 97, 228, '2024-06-20 04:34:35', NULL),
(1182, 76, 97, 229, '2024-06-20 04:34:35', NULL),
(1183, 76, 97, 230, '2024-06-20 04:34:35', NULL),
(1184, 76, 97, 231, '2024-06-20 04:34:35', NULL),
(1185, 76, 97, 232, '2024-06-20 04:34:35', NULL),
(1186, 76, 98, 233, '2024-06-20 04:34:35', NULL),
(1187, 76, 98, 234, '2024-06-20 04:34:35', NULL),
(1188, 76, 98, 235, '2024-06-20 04:34:35', NULL),
(1189, 76, 98, 236, '2024-06-20 04:34:35', NULL),
(1190, 76, 98, 237, '2024-06-20 04:34:35', NULL),
(1191, 76, 98, 238, '2024-06-20 04:34:35', NULL),
(1192, 76, 98, 239, '2024-06-20 04:34:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `responseCode` varchar(10) DEFAULT NULL,
  `responseDesc` varchar(100) DEFAULT NULL,
  `transactionID` varchar(50) DEFAULT NULL,
  `conversationID` varchar(100) DEFAULT NULL,
  `thirdPartyReference` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `responseCode`, `responseDesc`, `transactionID`, `conversationID`, `thirdPartyReference`, `created_at`, `updated_at`, `number`, `type`, `provider`, `status`) VALUES
(45, 62, 'INS-0', 'Request processed successfully', 'AH60AWPYESM', 'df6b966cd5ae445182c9e02af138ca5a', 'GWPYYTLQ', '2023-08-06 03:08:44', '2023-08-06 03:08:44', '847001734', 'Mpesa', 'mpesa-rest-api', 1),
(46, 63, 'INS-0', 'Request processed successfully', 'AH67AWXAAEN', 'b1f37156292445a39704ed911e756ae1', 'JTLSPYDE', '2023-08-06 17:11:52', '2023-08-06 17:11:52', '849138315', 'Mpesa', 'mpesa-rest-api', 1),
(47, 64, 'INS-0', 'Request processed successfully', 'AH68AWYK3PY', '9cb3b4341959481b964bf0bfa6890ed0', 'YJAKPEBW', '2023-08-06 20:14:31', '2023-08-06 20:14:31', '847718628', 'Mpesa', 'mpesa-rest-api', 1),
(48, 65, 'INS-0', 'Request processed successfully', 'AI75B6IVIXX', '9f4e3e7f76804400ba3c5a69fd685d62', 'XFSLKFNX', '2023-09-07 15:22:57', '2023-09-07 15:22:57', '848088209', 'Mpesa', 'mpesa-rest-api', 1),
(49, 66, 'INS-0', 'Request processed successfully', 'AI90B771O3W', '763985ae038942429023cca56cdc8d3b', 'ELUJGGKG', '2023-09-09 20:24:42', '2023-09-09 20:24:42', '848906924', 'Mpesa', 'mpesa-rest-api', 1),
(50, 67, 'INS-0', 'Request processed successfully', 'AKT1BT3JUO5', 'fd51ed38de0e43da980b0db29d3e9500', 'UVUFTXGO', '2023-11-29 08:37:28', '2023-11-29 08:37:28', '846700204', 'Mpesa', 'mpesa-rest-api', 1),
(51, 69, 'INS-0', 'Request processed successfully', 'BEF7CYQ6EL9', '936d9e3a6411410dbae1518cf59629f7', 'MQCHKQDO', '2024-05-15 14:58:36', '2024-05-15 14:58:36', '849138315', 'Mpesa', 'mpesa-rest-api', 1),
(52, 70, 'INS-0', 'Request processed successfully', 'BET3D24SDZD', 'd139ea9033ae45c9a7d12e45d4ef51b9', 'OSKDQBPH', '2024-05-29 10:22:23', '2024-05-29 10:22:23', '845315196', 'Mpesa', 'mpesa-rest-api', 1),
(53, 71, 'INS-0', 'Request processed successfully', 'BF51D40FEKZ', 'fd945deb9c974fb389790efb7243e127', 'QNGWMQBP', '2024-06-05 10:00:59', '2024-06-05 10:00:59', '845315196', 'Mpesa', 'mpesa-rest-api', 1),
(54, 73, 'INS-0', 'Request processed successfully', 'BF78D4JJRCE', '147092d6d4d946658c9cc93cb4cc68d8', 'PQRDXIZU', '2024-06-07 09:49:36', '2024-06-07 09:49:36', '846347501', 'Mpesa', 'mpesa-rest-api', 1),
(55, 74, 'INS-0', 'Request processed successfully', 'BFB8D5IAP2U', '3d826dc9a1524d95afde2f18888afe34', 'WPGBMVCU', '2024-06-11 08:23:38', '2024-06-11 08:23:38', '856664427', 'Mpesa', 'mpesa-rest-api', 1),
(56, 75, 'INS-0', 'Request processed successfully', 'BFB7D5MCXA7', '2e574d85d7004fd1ad388a99f3ee9edc', 'DRMAURJD', '2024-06-11 15:25:13', '2024-06-11 15:25:13', '845315196', 'Mpesa', 'mpesa-rest-api', 1),
(57, 76, 'INS-0', 'Request processed successfully', 'BFK9D7PY29T', 'acf54cdfa2214893b1b646a746febe11', 'JQNSNAOR', '2024-06-20 08:44:23', '2024-06-20 08:44:23', '845315196', 'Mpesa', 'mpesa-rest-api', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `permissions` text DEFAULT NULL,
  `date_joined` datetime NOT NULL DEFAULT current_timestamp(),
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `code`, `name`, `description`, `active`, `permissions`, `date_joined`, `last_updated`) VALUES
(1, 'admin', 'Admin', 'Admin Role', 1, '[\"admin\"]', '2023-01-15 03:58:18', NULL),
(2, 'customer', 'Customer', 'Customer Role', 1, '[\"customer\"]', '2023-01-15 03:58:18', NULL),
(3, 'resseler', 'Resseler', 'Resseler Role', 1, '[\"resseler\"]', '2023-01-15 03:58:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Sc541TT7SQGQ7ijJV5VE6XElnx4V3uSjtMCGacyu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1BEN2VWZjBES2xJbFVRbFFrOGpYbm12Y1NrNFhsSE5aZVI0emd6NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723883312);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(70) NOT NULL,
  `app_author` varchar(50) DEFAULT NULL,
  `app_company_name` varchar(100) DEFAULT NULL,
  `app_company_address` text DEFAULT NULL,
  `app_description` text DEFAULT NULL,
  `customer_care` varchar(30) DEFAULT NULL,
  `customer_service_email` varchar(200) DEFAULT NULL,
  `brymond_website` text DEFAULT NULL,
  `brymond_id` varchar(256) DEFAULT NULL,
  `brymond_template_id` varchar(256) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `app_author`, `app_company_name`, `app_company_address`, `app_description`, `customer_care`, `customer_service_email`, `brymond_website`, `brymond_id`, `brymond_template_id`, `year`, `facebook`, `instagram`, `twitter`, `youtube`, `linkedin`) VALUES
(1, 'Makemoney', 'Makemoney', 'Makemoney Lda.', 'Rua de Bagamoyo, n° 42/44, Baixa da Cidade, Maputo Cidade', 'Comece Agora', '876901333', 'info@makemoney.co.mz', 'https://brymond.com', '0000012023', 'bivo_shop', 2024, 'https://web.facebook.com/makemoney.co.mz', 'https://www.instagram.com/makemoney.co.mz/', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `name` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `active`, `created_at`, `name`, `updated_at`) VALUES
(1, 'helton@gmail.com', 1, '2023-02-22 10:03:00', NULL, '2023-02-22 11:36:11'),
(2, 'mario.chauque@gmail.com', 1, '2023-02-22 10:03:12', NULL, '2023-02-22 11:36:11'),
(3, 'manuela.faquir@hotmail.com', 1, '2023-02-22 10:03:12', NULL, '2023-02-22 11:36:11'),
(4, 'sdfdf@sd', 1, '2023-03-08 09:03:55', NULL, NULL),
(5, 'teste@gmail.com', 1, '2023-03-08 09:05:33', NULL, NULL),
(6, 'hilario.c.c.hugo@gmail.com', 1, '2023-03-08 09:07:32', NULL, NULL),
(7, 'jswedish200@gmail.com', 1, '2023-03-08 09:09:07', NULL, NULL),
(8, 'gerson.baltazar@makemoney.co.mz', 1, '2023-04-01 21:46:16', NULL, NULL),
(9, 'hilario.c.c.hugo@gmail.coma', 1, '2023-07-30 00:19:35', NULL, NULL),
(10, 'eusebiopaivajuniorr@gmail.com', 1, '2023-09-12 19:28:11', NULL, NULL),
(11, 'franciscomausse934@gmail.com', 1, '2023-09-13 12:44:38', NULL, NULL),
(12, 'olimpiapondja537@gmail.com', 1, '2023-09-27 23:07:20', NULL, NULL),
(13, 'ayltonmuaianga@gmail.com', 1, '2023-11-25 20:50:58', NULL, NULL),
(14, 'edinelmulhanga@gmail.com', 1, '2023-11-28 12:56:30', NULL, NULL),
(15, 'beatrizmacaringue20@gmail.com', 1, '2024-01-04 11:04:30', NULL, NULL),
(16, 'dilmagimo986@gmail.com', 1, '2024-01-04 19:38:00', NULL, NULL),
(17, 'jcarlostivane@yahoo.com', 1, '2024-01-05 15:42:08', NULL, NULL),
(18, 'judisney2000@gmail.com', 1, '2024-01-11 08:07:47', NULL, NULL),
(19, 'elisalucasbenhane1@gmail.com', 1, '2024-06-17 18:05:18', NULL, NULL),
(20, 'caladojchi87@gmail.com', 1, '2024-06-20 06:08:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treasure`
--

CREATE TABLE `treasure` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` tinyint(1) DEFAULT NULL,
  `discount_percentage` int(3) DEFAULT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `sku_number` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treasure`
--

INSERT INTO `treasure` (`id`, `name`, `image`, `description`, `status`, `price`, `discount`, `discount_percentage`, `discounted_price`, `sku_number`, `created_at`, `updated_at`) VALUES
(1, 'CLASSE  BÁSICA', '[{\"type\":\"Image\",\"id\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI\",\"name\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\",\"url\":\"\\/uploads\\/treasures\\/EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\",\"sizes\":{\"min\":{\"id\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI\",\"name\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/min\\/EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\"},\"med\":{\"id\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI\",\"name\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/med\\/EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\"},\"max\":{\"id\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI\",\"name\":\"EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/max\\/EJISPRBIIFJPHQIKKBZYHAYXFYDNENRAJFEGNNHTCARWXTZTDEAMLTSBTOOQSLGPWDNNCSGHBHDBWLHVCLZQLZZHBWEZMFATJYPI.png\"}}},{\"id\":\"W4OfEfJkC4V8y9BFNPxrpbOguU6ApGcM5h9wxYjjvBbnF6VA4j\",\"name\":\"baoba-embondeiro1.webp\",\"url\":\"\\/uploads\\/treasures\\/package\\/baoba-embondeiro1.webp\",\"type\":\"file\",\"featured\":null}]', '<div><b><br></b></div><ul><li><b>Torna-se Candidato a diversas Vagas de Emprego e Estágio Profissional;</b></li><li><b>Acesso a vários Cursos de Capacitação; </b></li><li><b>\r\nAcesso ao Código de Afiliado; </b></li><li><b>\r\nMonetização de 30 % Sobre Venda Directa;</b></li><li><b>Monetização de 5 % Sobre Venda Indirecta;</b></li><li><b><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">Bónus de 5% sobre Certificado.</span></span><br></b><br></li></ul>', '1', 500.00, 0, 0, 0.00, 'VG', '2023-02-18 15:01:07', '2024-08-06 13:57:01'),
(22, 'CLASSE MÉDIA', '[{\"type\":\"Image\",\"id\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV\",\"name\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\",\"url\":\"\\/uploads\\/treasures\\/hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\",\"sizes\":{\"min\":{\"id\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV\",\"name\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/min\\/hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\"},\"med\":{\"id\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV\",\"name\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/med\\/hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\"},\"max\":{\"id\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV\",\"name\":\"hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/max\\/hG6M6kUhkQ3EnIeeX2gVpRvDCcvuNMaaxEMhCUMxPnyF5QKxdglk4H5QHwPjyjz3fO7fcmUhz8WBPIUDJK5tMJeYcemSwH0lkPTV.png\"}},\"featured\":true}]', '<div><div><b><br></b></div><ul><li><span style=\"font-weight: bolder;\">Torna-se Candidato a diversas Vagas de Emprego e Estágio Profissional;</span></li><li><span style=\"font-weight: bolder;\">Acesso a vários Cursos de Capacitação.</span></li><li><span style=\"font-weight: bolder;\">Acesso</span><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"> ao Código de Afiliado;</b></li><li><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Monetização de</b><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"> 40% Sobre Venda Directa;</b></li><li><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\">Monetização de</b><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"> 7% Sobre Venda Indirecta;</b></li><li><span style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><b>Bónus</b></span><b style=\"background-color: var(--mdb-card-bg); color: var(--mdb-card-color) ; font-family: var(--mdb-body-font-family); font-size: var(--mdb-body-font-size); text-align: var(--mdb-body-text-align);\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\"> de 10% sobre Certificado.</span></span></b></li></ul></div>', '1', 1000.00, 0, 0, 0.00, 'VP', '2023-02-22 07:36:28', '2024-08-06 13:57:50'),
(23, 'CLASSE ALTA', '[{\"type\":\"Image\",\"id\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4\",\"name\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\",\"url\":\"\\/uploads\\/treasures\\/usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\",\"sizes\":{\"min\":{\"id\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4\",\"name\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/min\\/usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\"},\"med\":{\"id\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4\",\"name\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/med\\/usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\"},\"max\":{\"id\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4\",\"name\":\"usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\",\"url\":\"\\/uploads\\/thumbnails\\/treasures\\/max\\/usA7qALy9C5ZXxl7XjgZwBBBU1Qg9EiEhxT8g6NimnmaxpM85sdU8S8KPKO5e2LQCoHceSBZPSKNdSGlngoF2m2ELRfanp9tGHW4.png\"}}}]', '<div><b><br></b></div><ul><li><b>Torna-se Candidato a diversas Vagas de Emprego e Estágio Profissional;</b></li><li><span style=\"font-weight: bolder;\">Acesso a vários Cursos de Capacitação;</span></li><li><b>Acesso ao Código de Afiliado;</b></li><li><b>Monetização de 50% Sobre Venda Directa;</b></li><li><b>Monetização de 10% Sobre Venda Indirecta;</b></li><li><b><span style=\"font-weight: bolder;\">Bónus de 15% sobre Certificado.</span></b></li></ul>', '1', 1500.00, 0, 0, 0.00, 'VD', '2023-02-22 07:37:53', '2024-08-06 13:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `treasure_has_course`
--

CREATE TABLE `treasure_has_course` (
  `id` int(11) NOT NULL,
  `treasure_id` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `date_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `treasure_has_course`
--

INSERT INTO `treasure_has_course` (`id`, `treasure_id`, `course_id`, `date_joined`) VALUES
(664, 1, 81, '2024-07-17 11:04:41'),
(665, 1, 82, '2024-07-17 11:04:41'),
(666, 1, 84, '2024-07-17 11:04:41'),
(667, 1, 85, '2024-07-17 11:04:41'),
(668, 1, 88, '2024-07-17 11:04:41'),
(669, 1, 89, '2024-07-17 11:04:41'),
(670, 1, 90, '2024-07-17 11:04:41'),
(671, 1, 91, '2024-07-17 11:04:41'),
(672, 1, 92, '2024-07-17 11:04:41'),
(673, 1, 93, '2024-07-17 11:04:41'),
(674, 1, 94, '2024-07-17 11:04:41'),
(675, 1, 96, '2024-07-17 11:04:41'),
(676, 1, 97, '2024-07-17 11:04:41'),
(677, 1, 98, '2024-07-17 11:04:41'),
(678, 1, 99, '2024-07-17 11:04:41'),
(679, 23, 81, '2024-07-21 09:59:34'),
(680, 23, 82, '2024-07-21 09:59:34'),
(681, 23, 84, '2024-07-21 09:59:34'),
(682, 23, 85, '2024-07-21 09:59:34'),
(683, 23, 88, '2024-07-21 09:59:34'),
(684, 23, 89, '2024-07-21 09:59:34'),
(685, 23, 90, '2024-07-21 09:59:34'),
(686, 23, 91, '2024-07-21 09:59:34'),
(687, 23, 92, '2024-07-21 09:59:34'),
(688, 23, 93, '2024-07-21 09:59:34'),
(689, 23, 94, '2024-07-21 09:59:34'),
(690, 23, 96, '2024-07-21 09:59:34'),
(691, 23, 97, '2024-07-21 09:59:34'),
(692, 23, 98, '2024-07-21 09:59:34'),
(693, 23, 99, '2024-07-21 09:59:34'),
(694, 22, 99, '2024-07-22 11:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `uid` varchar(256) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `emailConfirmed` int(11) NOT NULL DEFAULT 0,
  `emailConfirmedAt` datetime DEFAULT NULL,
  `twoFactorEnabled` int(11) NOT NULL DEFAULT 0,
  `lockoutEnabled` int(11) NOT NULL DEFAULT 0,
  `lockoutEndDateUtc` datetime DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `securityStamp` varchar(128) DEFAULT NULL,
  `accessFailedCount` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL,
  `remember_token` varchar(256) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `date_joined` datetime DEFAULT current_timestamp(),
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `uid`, `fname`, `lname`, `birthdate`, `emailConfirmed`, `emailConfirmedAt`, `twoFactorEnabled`, `lockoutEnabled`, `lockoutEndDateUtc`, `password`, `securityStamp`, `accessFailedCount`, `address`, `postalCode`, `image`, `token`, `remember_token`, `active`, `date_joined`, `last_updated`) VALUES
(1, 'admin@makemoney.co.mz', 'BrymoTech3171', 'dptg9-zbmkz-4sks8-ogoog-kssoo-gkog8-k', 'Admin', 'Makemoney', NULL, 1, '2023-04-02 17:57:28', 0, 0, NULL, '$2y$10$2VhB5rhdmAW2s559C4l3MuiFBxEuETRMzTg388k5G/GC8LKszpm62', '$2y$10$GEFyEYCaBVHjsAxrhyrFHuGMZHCqQxcZ80o5sc9zcA2s3zNvQcq1.', NULL, NULL, NULL, '[]', NULL, 'B8J802KeS1r7WhdeC1h75dV0hpaUY1YxBAg0geFhL7OzQOb4lV2QVgKf063F', 1, '2023-01-15 03:58:18', NULL),
(3, 'jswedish200@gmail.com', 'JusmeSwedi1864', 'r9f8i-qcs0i-88g00-ckosg-ss00g-4w4gk-g', 'Jusmen', 'Swedish', NULL, 1, '2023-04-12 03:23:22', 0, 0, NULL, '$2y$10$pm60S/q/Putfdc7BiKIBNObPBX0waeerYg9gItR/mjTXtpWf/VI8.', '$2y$10$wBfDRUMiKGNraaaF5Rv85OJvKQKznWb0t9QGMAs7/yxMjj/uMAPe.', NULL, NULL, NULL, NULL, NULL, 'mjlQUDxwTIlOJGNVb4SA2NBX0X8JnoR7TpMaMzXfQqHLjH3WtI7XvQPvCSlq', 1, '2023-04-12 03:22:50', '2023-12-27 14:54:53'),
(5, 'makemoney@makemoney.com', 'MakemResel4199', 'd76u1-3rmn0-o4cw4-g0g8o-cksw4-os400-8', 'Makemoney', 'Reseller', NULL, 0, NULL, 0, 0, NULL, '$2y$10$Za/dD4rc/.RW5GHwOK0iwuWfS.I6Gz5tMcVI53DwTg9fNbA3g9kzu', '$2y$10$x/VBBiMWxALc9KFdYVCr0OmLp1Ih9UFkNBteohtoSQ55eyCubJHsy', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-13 14:30:06', '2023-04-13 14:30:06'),
(7, 'hilario.c.c.hugo@gmail.com', 'HilarHugo1865', 'j6qwv-2nxt9-ck4sg-ggcwo-8w0ks-g4wow-s', 'Hilario', 'Hugo', NULL, 1, '2023-08-06 04:41:49', 0, 0, NULL, '$2y$10$WFKMxAD2pbXBqGSher80uubJJkI7CilCVdMxmGoPtuLbwiN/dHu5S', '$2y$10$9HkaVELk507l2vtQ4tZ2jucFAUmDpZQNkR4xtOmg/4fAj466U/xPK', NULL, NULL, NULL, NULL, NULL, 'oCu3QlX2WuHS63hW7pwaPxuk19yqm5uhPjFOZh8abl99UV0aGFnOraPiJtLs', 1, '2023-08-06 04:41:21', '2023-08-06 04:41:49'),
(8, 'silvanositoe97@gmail.com', 'SilvaSitoe1577', 'ckmj6-bl4hq-80g0g-ko0w0-wgsss-o4k4g-8', 'Silvano', 'Sitoe', NULL, 1, '2023-08-06 19:02:52', 0, 0, NULL, '$2y$10$UYhdGnc8tY9Ow4HRQF/qVu.E6tJsjBkELyWvuZpyKgw2kpfX7emaC', '$2y$10$2324jNz1UjGXqPPXmRz8CezaVV3nPOKDCtWPbq6RhI7n6BGdZpLQG', NULL, NULL, NULL, NULL, NULL, 'ssKzCC1xAsSDPyFrYi15VcX4AtxSHibhuTSD41fS8mFLpAX6Cwh4XYQ9otMt', 1, '2023-08-06 19:02:08', '2023-08-06 19:02:52'),
(9, 'gersondasilvamunguambe@gmail.com', 'GersoMungu4266', 'ji80l-88ktp-4cgc4-40s0w-sgosg-c0k0o-4', 'Gerson', 'Munguambe', NULL, 1, '2023-08-06 22:08:28', 0, 0, NULL, '$2y$10$ctvM.tOv7p8N7ghRznMJ7etkf48JRzcgqepGQGg8Lmk6iDVSMu..u', '$2y$10$sfOEFKx3qzEvtKukn8s09.tnW3pxkoBVb5q76DR.fB/b2/x.kBtXm', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-06 22:02:56', '2024-06-07 10:38:07'),
(10, 'gersonbaltazar22@gmail.com', 'GersoMungu2866', 'hj8si-65hvd-w0gcc-so04c-kck4o-40g8k-k', 'Gerson', 'Munguambe', NULL, 1, '2023-08-14 12:14:20', 0, 0, NULL, '$2y$10$vIZVY4Iho/sriAAwET3/M.K16SYrPW0lrhlBj5TBUOYkK3EGDOVBC', '$2y$10$V4c6BlwL0CGAZ5eT0GamNe3OcFeEgW2WDyF3Pmo2wXQ3pHWduF3f2', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-14 12:13:03', '2023-08-14 12:14:20'),
(11, 'ayltonmuaianga@gmail.com', 'AyltoMuian4361', 'm1xul-hftal-sscws-sow44-s0ss0-4k4kc-4', 'Aylton', 'Muianga', NULL, 1, '2023-09-07 17:19:58', 0, 0, NULL, '$2y$10$3d38Djzb/EXuqSRSRGRz1OcmiAlNMwd.49v1Khwa/1azPApr4vqY.', '$2y$10$Q1K/UD1iPs6K/HoqGw9Qm.SvGTTK3b.TKlQIK0Ppy8OESNewnrKhi', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-07 17:19:30', '2023-09-07 17:19:58'),
(12, 'merciagabrielf@gmail.com', 'MerciFranc2106', '6v95i-9itr9-k44os-goc8w-4488s-wcwwk-s', 'Mércia', 'Francisco', NULL, 1, '2023-09-08 00:54:37', 0, 0, NULL, '$2y$10$H7AQeR73SfMAMxHWL5tffufWWhTaDFNBGJon7hnMryoMH4MglKaQC', '$2y$10$cZikxuHDp5rR5TZ765DI7exdZtHmBE5JnwZrGzThw5ZZTbTDHswPS', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-08 00:52:41', '2023-09-08 00:54:37'),
(13, 'fachitavembane@gmail.com', 'AntonVemba2141', '2fvfv-47nff-0gogk-8kgsg-0sws8-g0wok-k', 'Antonia', 'Vembane', NULL, 1, '2023-09-09 15:20:31', 0, 0, NULL, '$2y$10$qpUKoG26Q.aEK91HRp2qJumUvvjNxfszyqqRaPEKCgIRV9l9dNyCy', '$2y$10$t3lI9dFC2UX.D8dOuG3lOOimlbh0eEPbT75ro3i6a4leXy/KEKCkS', NULL, NULL, NULL, NULL, NULL, 'Et4bjYmppuJ7VuYDdk8SBEyitjba4rn6IwJoVWE1RAzHgBBT1xJWiLYy9QM0', 1, '2023-09-09 15:18:41', '2023-09-09 15:20:31'),
(14, 'gelsoncarlos19@gmail.com', 'GelsoAnton1595', '7k2cw-agqxj-goog8-w0so0-8wo4o-og088-w', 'Gelson', 'António', NULL, 1, '2023-09-10 22:53:15', 0, 0, NULL, '$2y$10$UQwGbS67H9CRDkss5aTDvuyx.FiaROnNNwrEkZTFXMpDO2N2nOA3m', '$2y$10$WkM122.VpCG6WI8M/Ams7eL4a9AObzuamgbzLuW7Ht/vJUdQBEvTy', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-10 22:52:38', '2023-09-10 22:53:15'),
(15, 'eliasamericomatola421@gmail.com', 'EliasMatol1465', '115ks-lxs6c-fks0w-o0o4k-wows8-skcok-0', 'Elias', 'Matola', NULL, 1, '2023-09-11 12:08:22', 0, 0, NULL, '$2y$10$F4mTHznjGEHSxVPCXGhdqeYWAygG2vB6VhSeywKH3wkoSMoZunGUu', '$2y$10$rkntldOMbzKYwFZSlkj7aevu5lrUHKKqIzsKjRiDE.9A6zQEYmL22', NULL, NULL, NULL, NULL, NULL, 'Ax5EAcGKomg2ri33vHfK9ZsWj5TQNryUPoRdyH427Eo2R8sN2Sk6zDep51GE', 1, '2023-09-11 12:06:53', '2023-09-11 12:08:22'),
(16, 'Zeliosimango1@gmail.com', 'ZelioSiman561', '25120-v3chr-34cc8-84ogs-040so-8wc8o-s', 'Zélio Júlio', 'Simango', NULL, 1, '2023-09-11 19:42:50', 0, 0, NULL, '$2y$10$bIQmFCDMVD1GLp43k9WvAOuo7B1NcLegj40lqxEx0MXotHYY6G/hG', '$2y$10$igPuoLuwqeo4jm6vaXU2Xe7jRz/2/o9wg/yjMlJcatPKPzhQKgqaq', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-11 19:41:37', '2023-09-11 19:42:50'),
(17, 'yurenchilaule@gmail.com', 'YurinChila2331', 'hzzx0-d805t-cs8o0-kcoko-wccw8-swog4-4', 'Yurin', 'Chilaule', NULL, 1, '2023-09-11 23:07:45', 0, 0, NULL, '$2y$10$Gh8D0YJFqLKR7DbifHmM4ug4BpBsSPutnViZc55W22LZzFjLg.rkS', '$2y$10$CJY6F/pjswHG/MolsX0FweUG84QpZJ1YPjvkxu6nFJnk99nelrYQW', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-11 23:03:12', '2023-09-11 23:07:45'),
(18, 'noname@gmail.com', 'NoNamNoNam4582', '24xp9-hizwr-7oogg-0oosk-wo880-s484g', 'NoName', 'NoName', NULL, 0, NULL, 0, 0, NULL, '$2y$10$dFYOCN2DN1Nw2XvBkLDG/ewXp/VHSNsTvkx4rsPKvcrbTKKL2BOnK', '$2y$10$2ucz9jP/BosaVCbXGuZRSeoZT12kQ9tn7g.CW.J5qWOAesGDs.qPO', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-14 12:56:07', '2023-09-14 12:56:07'),
(19, 'Brunonhamazana@gmail.com', 'BrunoNhama976', 'nuuyg-fa76x-ccw4k-g0w4c-0ck8g-w080c-0', 'Bruno', 'Nhamazana', NULL, 1, '2023-09-14 13:44:57', 0, 0, NULL, '$2y$10$PkQqizXTA2SHkNo6.hqfcOFeC0wqDfGwa9MdqDnsHJcF4qpcDkDnK', '$2y$10$tATAsysMXAyQTe7GD7U5k.QvwmGyuTisupUhlmx7opDwE5cn.xPSe', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-14 13:43:04', '2023-09-14 13:44:57'),
(20, 'emilianoarrasta@gmail.com', 'EugenEmili606', '6zife-lao72-ck8co-go88g-ckkk4-gw40w-8', 'Eugénio', 'Emiliano', NULL, 0, NULL, 0, 0, NULL, '$2y$10$i8gXvtIDgAbLWpE02WHrgekH1JFVG06.TAeT1U7oiOHye/JDSk24K', '$2y$10$ebDrAui69vZhP1E8uqacS.3JRP7Bvcd2Tk12DrHHdiA.3mdKfH4OC', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-18 20:08:40', '2023-09-18 20:08:40'),
(21, 'silvanositoe@gmail.com', 'SilVano3644', 'aqg9r-6eemp-4ogso-o0ss0-csoww-0k0os-o', 'Sil', 'Vano', NULL, 0, NULL, 0, 0, NULL, '$2y$10$KcSs6xS5.4ngVemUolYqd.pz/91k7MsiEqOcZii1UeKft4qKBpUgm', '$2y$10$u7XNGr6HoVW60TxfU/xVheTC5pfnGIDtMlxkPz5/63Zxw9nF3BD1O', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-20 19:28:15', '2023-09-20 19:28:15'),
(22, 'paulojorgewaite@gmail.com', 'paulowaite1311', 'e1axi-a9h61-kc4go-wo4sc-g0w4o-s4coc-o', 'paulo jorge', 'waite', NULL, 1, '2023-09-22 09:45:22', 0, 0, NULL, '$2y$10$BKyt3VktR3VCt10iPKLPleFdL8BZlfo0ZEDnWbHmMyDlTqbDcS1zS', '$2y$10$RWFzBtXQfnNpT8/0.i/bw.Gvie1ezIFn7XxO/oWKtynhAbt18TSFW', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-22 09:44:16', '2023-09-22 09:45:22'),
(23, 'hortenciapedromutambisse@gmail.com', 'HorteMutam3204', '91nhv-oyhaf-c4cko-cwc4w-kws44-8g40s-8', 'Hortência', 'Mutambisse', NULL, 1, '2023-09-25 20:53:44', 0, 0, NULL, '$2y$10$uhx0oG7UyMs1IWslz9.QkeA75DFxa8I1KgBji0Qdmrq6BWm3wq9Lq', '$2y$10$HbprAvexwPL1eaTBQ69gA.hnEBW40HjX3CGkKN0ZCmmPO2pEy4q3.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-25 20:51:31', '2023-09-25 20:53:44'),
(24, 'olimpiapondja537@gmail.com', 'OlimpPondj3498', 'd40nm-o3uqh-kcckc-okkgk-0o0cs-wkwg0-8', 'Olimpía', 'Pondja', NULL, 0, NULL, 0, 0, NULL, '$2y$10$LaiLK874SrfZD9szlQ8TrengeHf9p4tO0Hrr0NxEIbqTFK8xj4s/2', '$2y$10$OcixmcVaDcdfCPExrBJwtecCvkg3wEtrpWzrAVm4mhWHgkJqEY5yq', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-27 23:10:54', '2023-09-27 23:10:54'),
(25, 'Cjfhjfdd@fhjj.cjhg', 'JhfDhkkf3138', '1fcgq-m4jc7-ogk4g-w0c8w-kwwsw-skssc-w', 'Jhf', 'Dhkkff', NULL, 0, NULL, 0, 0, NULL, '$2y$10$4EGtXPyuRmp3WSeQMD5hiu/D1.Zs/tPB.BXuVb/MArPHIxZBJu/1y', '$2y$10$5041B1QuS06PYI8KY2y2UuCmDLfG1UNYP8jSen7hS4qNbXgx6SVqS', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-10-04 06:54:33', '2023-10-04 06:54:33'),
(26, 'ivodengo0@gmail.com', 'IvoDengo4438', 'phqb7-qdsvm-s00cw-g8kck-w804g-w8kg4-0', 'Ivo', 'Dengo', NULL, 1, '2023-10-12 21:39:26', 0, 0, NULL, '$2y$10$R7.EtwR5PN7uCaA99dpaQOVYdGBljcDfcd3mvdCcvyjBpqlBL.tYa', '$2y$10$etRTmuf3U0lOElXVkX77suOcVGjtGvXhT/B13hU3RKe9SgbX9Bame', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-10-12 21:37:51', '2023-10-12 21:39:26'),
(27, 'vasconhandaguambe@gmail.com', 'VascoNhand737', 'tsxir-xykvm-88w4g-cc4cs-0s8cc-wkgwo-0', 'Vasco Nhanda', 'Nhanda', NULL, 0, NULL, 0, 0, NULL, '$2y$10$iOjrVEyc.F8VlsZBx.DITeQOP3cOrlrAeXwrkiLqf9Qdi16.Frj7u', '$2y$10$rE5DCgF27m.8TAfoFVho5On3J3bEmOMGJThsoC6ATWjPrIyYV8H2C', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-10-13 09:25:05', '2023-10-13 09:25:05'),
(28, 'malceu2@gmail.com', 'AlceuManja4674', '9ozwf-qjan3-swkkg-w8g8k-04w4g-wg4gc-s', 'Alceu', 'Manjate', NULL, 1, '2023-10-14 16:13:29', 0, 0, NULL, '$2y$10$K1zTAHkbIS.M.D5dwqSUx.CcuHVp//cCt4PPDyhtJxOm9dSfrBgKG', '$2y$10$GVHhLPugmybKAXwjwT0nS.e4OTHVL6xKdk8/dYjpfjXfN2UxrMjRy', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-10-14 16:10:59', '2023-10-14 16:13:29'),
(29, 'edinelmulhanga@gmail.com', 'EdineMulha4965', 't7mrj-gkwll-wwsgg-csccc-o4o40-w0coc-o', 'Edinel', 'Mulhanga', NULL, 1, '2023-11-28 21:13:58', 0, 0, NULL, '$2y$10$uW0eFR5xy9p1iQ0j1LqWLux5NRVxnQLdmtaB0NPOy200EOFAUervm', '$2y$10$Ju0EEb/E4UtAnBLNGlN93.HO11JtLv5jATaNgAJSDRhnal2iAnpJW', NULL, NULL, NULL, NULL, NULL, 'hCJ6wfNgVZEwv7CO5Ewzh5J6YcZg6uwOnHvNMjYkcHwXGRdiunFZbfy4Mc7d', 1, '2023-11-28 13:02:02', '2023-12-27 18:08:37'),
(30, 'ultronhilas@gmail.com', 'UltroSwedi3730', 'harpt-91c6j-kkkgc-4gw0s-okgko-scwwk-4', 'Ultron', 'Swedish', NULL, 1, '2023-12-09 07:21:30', 0, 0, NULL, '$2y$10$JvnP5Y5VQB8EeBnR6iX9wOZvCiGmBTOxUd3jgBBPcAGqFRzBX/IoG', '$2y$10$wXUPgoQWArAngQ.ZDflieezpLfJpHxDK/hKyixEmfeOUuwDwsuBTK', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-09 06:52:27', '2023-12-09 07:21:30'),
(31, 'silvanoteste@gmail.com', 'TesteTeste2907', 'spnyj-kbrxz-4wcws-g44g0-w8kkk-gkwwo-k', 'Teste', 'Teste', NULL, 0, NULL, 0, 0, NULL, '$2y$10$aKa3Rh6WspL1Dik33Qt2qe6xM8LPyHkefAWDX.TdHdmv9Akq1NyEe', '$2y$10$uua8fwsHuFJuV2ID5aqL6.mqyKN3EIlD43f.hUOOx7eO0JVOEPz0q', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-09 12:29:49', '2023-12-09 12:29:49'),
(32, 'framatavel@gmail.com', 'FrancMatav1916', 'd0ge7-qiq4p-kcs08-css84-g8440-k0wg0-w', 'Francisco', 'Matavel Júnior', NULL, 1, '2023-12-27 14:34:14', 0, 0, NULL, '$2y$10$hfqpR567mfBnx0eJnTRsj.i8HPeh9sN1NBcJ2vKHDcsI36lZwiQwu', '$2y$10$QK5ObwRF00/adzsLXiTHyuahs5f/YB8aG6OvUU6xK5dHIGfYdVjWC', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-27 14:33:09', '2023-12-27 14:34:14'),
(33, 'cleytonadelinocumbane@gmail.com', 'CleytCumba2545', 'b604y-j60su-800k0-004ws-wgc84-o4gc0-k', 'Cleyton Adelino', 'Cumbane', NULL, 1, '2024-03-17 13:10:41', 0, 0, NULL, '$2y$10$2TZY7TH64U9tykhrEmlsHuIxfpgRDnsnku7MC/DIWFK.PNlBCwcE2', '$2y$10$RvpSRl5v6zsgzBUJZlzUEecwP4QC0ZR2DzNOxL70bbBpOF0p7wQam', NULL, NULL, NULL, NULL, NULL, '4pIRZYX2CQMGrOTCJx9BinIhLyjdC2qWbboLCPjPmJQSLQt32f5J2lbXL5xJ', 1, '2024-03-17 13:09:06', '2024-03-17 13:10:41'),
(34, 'Myraymassango@icloud.com', 'MiranMassa3010', 'i5jo6-s7bn9-c0cwk-oksk8-kk8wc-oo4g4-k', 'Miranda Salvador', 'Massango', NULL, 1, '2024-05-15 11:12:58', 0, 0, NULL, '$2y$10$iizccaDWbSHH86K0wEG8nO0OrcXvUdDjBHhK6HG7.PBAZx3Cpan3S', '$2y$10$GkTugoBumgPFI93grj./z.p0P5UF188CJr4.38q2G7tHo3ctKUiYu', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-15 10:13:46', '2024-05-15 11:12:58'),
(35, 'Myraymassango@icloud.com', 'MiranMassa3944', '95lz0-g5k4p-ogo80-404go-s8so0-cocgg-k', 'Miranda Salvador', 'Massango', NULL, 0, NULL, 0, 0, NULL, '$2y$10$KoCaGeobgIs8h3q.t2UYDOqE52LOpxu8dAU0iCVwchMx8nHkhFQdO', '$2y$10$gpfDioVi2NmhZheATRUPUOjfJ53OSTGxBt4nU4DPi8N9qB8edb0me', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-15 10:13:47', '2024-05-15 10:13:47'),
(36, 'Myraymassango@icloud.com', 'MiranMassa2683', '95cyo-u9l1b-gokk8-g0w84-8wo4g-w4cow-g', 'Miranda Salvador', 'Massango', NULL, 1, '2024-05-23 10:42:26', 0, 0, NULL, '$2y$10$8noADQzZr8g6rFV9PlN8Z.zVgy4n5Mp9mVd0jEEpOZ.DsU/8kufcC', '$2y$10$HcbARAhkdpp7.IaemT2A5eUQ7DDXdYPptFeCEKbJg7qUQG0T55U/S', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-15 10:13:47', '2024-05-23 10:42:26'),
(37, 'Myraymassango@icloud.com', 'MiranMassa2283', 's74jk-r9csc-0ssks-4ww0s-o40wc-ccg8w-c', 'Miranda Salvador', 'Massango', NULL, 1, '2024-05-23 10:59:50', 0, 0, NULL, '$2y$10$EwbAh9r/lSOorhjldhJAnOhpz6sChp4Hg9a9GWRYFstdLxTHF55ze', '$2y$10$JEjvkOmL0sD.EGNcymbd6eInoZRoGDVdpp6z3n060imBd.UonwnI6', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-15 10:13:50', '2024-05-23 10:59:50'),
(38, 'Myraymassango@icloud.com', 'MiranMassa213', 'q4qqv-gmq42-s08o4-c0woo-g80ow-4cgc8-k', 'Miranda Salvador', 'Massango', NULL, 0, NULL, 0, 0, NULL, '$2y$10$xYxe2/tIZ8UCOE7LstKmsu5Q70WnRkoNUYZ9GfOQK5Pq6.DAYgulG', '$2y$10$gJjc7U8o/9.iNnkGch8TeudnKhY7ADKBBOmeTtHqWXSlrSWTR1tIi', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-15 10:13:51', '2024-05-15 10:13:51'),
(39, 'Myraymassango@icloud.com', 'MiranMassa1969', 'gt6j6-ni292-0csk4-gkk84-wg4kk-w4s4o-8', 'Miranda Salvador', 'Massango', NULL, 1, '2024-07-25 06:43:29', 0, 0, NULL, '$2y$10$11YQAePNZhkRo.Ofcce/nObF0W8RlNFRt.1oN5xb0tORtELfvmC46', '$2y$10$KKO8F0YN3UQ8p8FLG5Qp3u1dGTjK4AttCmMsD1QwNZTufD177bMfm', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-15 10:13:52', '2024-07-25 06:43:29'),
(40, 'Myraymassango@icloud.com', 'MiranMassa4763', 'eze32-d823a-go4ck-k8sc0-o8w4o-ok8o8-k', 'Miranda Salvador', 'Massango', NULL, 0, NULL, 0, 0, NULL, '$2y$10$CLH.O0iCKt1PAl6nBVNAduW4YkPyhlErEzygO3IHLgKk3Q8LSwNyS', '$2y$10$LfyIy.Ycdp14iD9ArUzsS.SXZe9xdwpevflZpXavb49UD6rn9CUe6', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-15 10:13:52', '2024-05-15 10:13:52'),
(41, 'jessicamandlate@gmail.com', 'JessiMandl4694', 'ro87k-5crrn-4okg8-8ksww-gk8w8-08k84-s', 'Jessica Felismina', 'Mandlate', NULL, 0, NULL, 0, 0, NULL, '$2y$10$Avn6PQ3IhaSu4.bXKQA2XOe20lu2cHh4dAAlX1RFprh.9r2D06GOq', '$2y$10$0yiQ2bFQ3EZXoYlIP4702ehKvmDfacYnowexwWYaFmcnIX3mCJGHK', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-15 10:16:43', '2024-05-15 10:16:43'),
(42, 'jessicamandlate5@gmail.com', 'JessiMandl4790', 'sdf0z-14k0a-skccc-0kwsc-k08cg-cc4w4-8', 'Jessica', 'Mandlate', NULL, 1, '2024-05-15 10:41:15', 0, 0, NULL, '$2y$10$jiRgcD0eC1.aoN9TN/ZxSObqSb2akQRxZGK8szaP8g5OgfyJEje6S', '$2y$10$2BVLrbeIQE2cgcHngvJeruiCamo6EDZsUnxp6skaYP9yzJOUXIjsy', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-15 10:32:03', '2024-05-29 10:58:52'),
(43, 'fredericoadriano808@gmail.com', 'FredeAdria4181', 'jungy-hl375-cswgc-ogwss-804sk-8c8wc-0', 'Frederico', 'Adriano', NULL, 0, NULL, 0, 0, NULL, '$2y$10$nkNln5djThCp4JofR3J.fe9M4.MTUqXQ.efo5N0IXWJL/ifjMjEcG', '$2y$10$iuiAVya.2MnD2UMiVfwSXeWMPS7LzIFL925QmArrASjWKGq36KbgG', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-28 16:26:27', '2024-05-28 16:26:27'),
(44, 'eminerciamazuze4342@gmail.com', 'EmineMazuz1611', '1plc2-l23hi-f4skw-8gw80-koogg-g8sg4-c', 'Eminercia', 'Mazuze', NULL, 0, NULL, 0, 0, NULL, '$2y$10$U/SzGAh.2W0KDn6.N3aH9.4L1B56/bapfArtr8BMkOYEsyShZtEf6', '$2y$10$xvl5seWIIDhBtWxvdDdgk.fIZqu31ZArfAWD6KbSzHLHoaUMHObCe', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-29 11:41:26', '2024-05-29 11:41:26'),
(45, 'eminerciarafaelmazuze@gmail.com', 'EmineMazuz3082', '9kuv5-zi8zq-os40k-k84ko-kggwo-4s8wo-k', 'Eminercia', 'Mazuze', NULL, 1, '2024-05-29 12:14:40', 0, 0, NULL, '$2y$10$kN6nBuFzp/IrXPT0RPgVPeba5.xTwjVHAcJbw6KW8/2qCyOelUlmG', '$2y$10$3I6YK3oOfHdAG5jE8AqqkeKtnWzKV9BeEXwVQDXDYqpFXYU6R430G', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-29 12:13:56', '2024-05-29 12:14:40'),
(46, 'merciaxavie@icloud.com', 'MerciFranc2374', 'tvz79-tbl58-0okcw-004ko-s8sws-440kc-8', 'Mércia Gabriel', 'Francisco', NULL, 1, '2024-06-06 11:09:20', 0, 0, NULL, '$2y$10$sgsnTAGgeZdppq5l03IaaeFjhjY88r5b9nGTwU1dj0s5L.T18NjyW', '$2y$10$XJeFJQRyOy3N6APTdlicLOjqJbNt2k3.VEe2LUD9BRWbnzUBJ15e2', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-06 11:05:29', '2024-06-06 11:09:20'),
(47, 'merciaxavie@icloud.com', 'MerciFranc1328', 'gsd98-7n1w6-osggg-0oo4g-gs48o-sk0s4-c', 'Mércia Gabriel', 'Francisco', NULL, 0, NULL, 0, 0, NULL, '$2y$10$d/i3HXy9MhvUV1g9gOT79.FbA/dSCsnmLaQIPe2XrtlnEw9GvTMoq', '$2y$10$vAzgxLDztQX0/HLSlji.uueyV5fkXfcjJGRzOSNYwnEBbjTQeS.aC', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-06-06 11:05:30', '2024-06-06 11:05:30'),
(48, 'Emildanhantumbonhantumbo@gmail.co', 'EmildNhant4647', '55t60-yt8cq-4ogww-kwoko-gkgck-ocgkc-g', 'Emilda Natau Armando', 'Nhantumbo', NULL, 0, NULL, 0, 0, NULL, '$2y$10$nmOIxrPuhMV3pRxWA0.bmut5.8u8r/NDOgacj5rTDhUGrQ5gXeHjC', '$2y$10$HEAgZovc2cxmWPLqT3BvSeLxi8O69VqIQOjlT1dKUu4U7MBfzqXgW', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-06-06 11:05:41', '2024-06-06 11:05:41'),
(49, 'mariamussuei788@gmail.com', 'fernamussu528', '1lx4b-ki2c5-wgkgc-0ogc8-c48c0-g4kgk-w', 'fernando', 'mussuei', NULL, 1, '2024-06-07 11:33:20', 0, 0, NULL, '$2y$10$vCWrnE1tWhxxMkYI9qRdVu59EBIAisEaHgTYfHphMREE/PrD.b8ai', '$2y$10$0m082Cb5lqf2qcFjNlUVG.lHs8GD.MzTtZ/FwQ9/l3l22E8Odx5Ca', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-07 11:20:23', '2024-06-07 11:33:20'),
(50, 'mariamussuei788@gmail.com', 'fernamussu1465', 'i11s3-orhtr-wcos4-4oow0-wswk0-8s484-o', 'fernando', 'mussuei', NULL, 1, '2024-06-07 11:36:38', 0, 0, NULL, '$2y$10$DayONVEnDS0M9kqVSUSyeuavUPWnJJL6vRDYrsxgvqZs0EeXL1rHq', '$2y$10$MLaKvmlvGbRK09OZgTn0LO0A2Of/MdJnVqSuwSuYazpfrxgpKC95C', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-07 11:20:24', '2024-06-07 11:36:38'),
(51, 'fernando12@gmail.com', 'fernamussu886', '8rwg2-vmdb3-swcs4-kwgc4-ksssg-w4g80-w', 'fernando', 'mussuei', NULL, 0, NULL, 0, 0, NULL, '$2y$10$deDQDTDjvGPtBS3cWXWPyee/LzeFpeA2cdUyfmYEowTnfq60lJ2Xq', '$2y$10$48/8hUdx1QiySujY5bZKVeq8/s9ImPzR4SxbBQAhtmsaPdhlMxY6C', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-06-07 11:21:23', '2024-06-07 11:21:23'),
(52, 'franciscagimo5419@gmail.com', 'FrancGimo4797', 'dnga0-67zcd-ckw4g-sg8w0-0sks4-sssgo-0', 'Francisca', 'Gimo', NULL, 1, '2024-06-10 12:26:54', 0, 0, NULL, '$2y$10$SqEfUU/iso20P5fYDzBeWeajNSzkzKzPVAfezz85wxEFKCi8YKd9K', '$2y$10$3Quw0xsRIhR4JmhrZ9EnCuBmxNSSiBJ/qSPmnWgyAfoipeyqDRuX.', NULL, NULL, NULL, NULL, NULL, 'jhiukiaTKJPLfNR2LAkWAqKZyutKig98vfXa3qUGZmgTLUdm0rJvCCZAv2XK', 1, '2024-06-10 12:24:45', '2024-06-10 12:26:54'),
(53, 'franciscagimo5419@gmail.com', 'FrancGimo173', 'ewszv-alziz-kk884-oook4-0w4cg-00sw4-c', 'Francisca', 'Gimo', NULL, 1, '2024-06-10 12:28:16', 0, 0, NULL, '$2y$10$SdzGizV.vsIBBXj6kDHzo.FChXXHTjRjSDrfnx2.JZ7SXCrkcOBFm', '$2y$10$koi2MYSIo20ZMfmJcsrGL.Nzaw2Gi41MEewdE6MDkjKHX.V8CsI/C', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 12:24:45', '2024-06-10 12:28:16'),
(54, 'niquicen6@gmail.com', 'NiquiMaziv953', '6cwrb-13u5o-0sg4o-wsc8o-44s88-ww4sc-k', 'Niquice', 'Mazive', NULL, 1, '2024-06-10 13:49:11', 0, 0, NULL, '$2y$10$Bj4qWvhFGOzTZG//Q4rBaORZt8IDgNHkW4ERGPxnIJR93jd4z7lka', '$2y$10$mDN/BI5oRBzR3Cw64Lkm7uQC5sVG7NVD8oHnbJxOYwlYlG9rqKQJG', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 13:48:44', '2024-06-10 13:49:11'),
(55, 'gersonarlindo2@gmail.com', 'GersoArlin2162', 'cr42x-jpa5h-wso88-wsggo-kg44s-w48kk-k', 'Gerson', 'Arlindo Mutsuque', NULL, 1, '2024-06-10 16:34:33', 0, 0, NULL, '$2y$10$yy/EoYSeo3xot3dmiB3wXuQI7XElDo89j323f1yrnL3yHU0fSr.I6', '$2y$10$Sg/1P6fXUkxo99UBf8FTJuULoVV4GMXpTEHhlpnZK2DWoXeN8T8v2', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 16:33:47', '2024-06-10 16:34:33'),
(56, 'Reginaldorofu@gmail.com', 'ReginNhone783', 'jf4u7-qzwzv-kgc40-0c4os-004o4-44oo0-w', 'Reginaldo', 'Nhone', NULL, 0, NULL, 0, 0, NULL, '$2y$10$OVWb0WoTOwOdmWgaf0mE/OICo/ZGlxLjzfu8/XrihVInB95koY11K', '$2y$10$UPS2z6a1.PDV2LTGNmu0zeOd7/6GjqjcucE3EUNUb5mdW1dam6DCq', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-06-11 16:48:42', '2024-06-11 16:48:42'),
(57, 'Reginaldoroful@gmail.com', 'ReginNhone952', 'lzosg-ku2uh-wwosg-kko0c-8gg0s-gwkc0-s', 'Reginaldo', 'Nhone', NULL, 1, '2024-06-11 17:14:39', 0, 0, NULL, '$2y$10$J0cowUu.2sm0a4PljdnHsOjFjexD1jDBau/rTAksI3hbPHUsCPSDu', '$2y$10$TFEkP6qF3PUyQuCUEfwrEeBOaNadwlw4.nDywVDjfxlXdmM43nlDi', NULL, NULL, NULL, NULL, NULL, 'TDVUQ5ulPMLRlg0lNwTJ8Kj8VPUkWS7c8Zd8Kafq4UByVTQGVKdIkY5kVdMe', 1, '2024-06-11 17:01:26', '2024-06-11 17:14:39'),
(58, 'bildraagostinho@gmail.com', 'BildrAgost3277', 'ddafc-h8y5w-08oc8-4ccg8-k8gow-so8wg-4', 'Bildra', 'Agostinho Lombe', NULL, 1, '2024-06-11 19:25:23', 0, 0, NULL, '$2y$10$TmJOKPpgqjuzJA7/QK2GDeJZRJFWwhBGvJECeDvzHFTOENBEaboBa', '$2y$10$cAaX9Ws2/I8Ge6fwOJ8SCO3Z7KQVd45EHdPAEc.sJTAQl.nPJcl/W', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-11 18:55:47', '2024-06-11 19:25:23'),
(59, 'mariojorgemiganojr@icloud.com', 'MarioJunio68', 'o7qjf-tpf9q-sswwc-o40o8-k40sk-c8wo8-8', 'Mario', 'Junior', NULL, 1, '2024-06-11 20:04:36', 0, 0, NULL, '$2y$10$ReLlC6kGEdHTVxdpNZ3/iuNAEaRaCVbGA9ziVmlTkMNYkLs8st7Bq', '$2y$10$KSylro5QpPcMfJ2EDTTib.a8XVO/oEqgUj82shhTydW2Bb1UCGCey', NULL, NULL, NULL, NULL, NULL, 'wG0l1LXvFh93aNqDzWzxOAA6HNqNUZyWP96aS5d8ti80kRb5uuNICd6l5sVm', 1, '2024-06-11 20:03:22', '2024-06-11 20:04:36'),
(60, 'ilodiachande@gmail.com', 'IlodiBerna329', '4vxk3-lfx6q-o0cwg-wogoc-oo8ws-4cowc-s', 'Ilódia', 'Bernardo', NULL, 1, '2024-06-13 11:01:10', 0, 0, NULL, '$2y$10$jM2CIsOyxIqCh.EL/Zqao..Bhsi8dDsV9S7f1Hw0HflddIhigYEnG', '$2y$10$6bB9VnvBtb47.GiGcueIbOdux0/9/8wasf1Dea7TMLqYctgQ36noi', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 10:51:23', '2024-06-13 11:01:10'),
(61, 'Caladojchi87@gmail.com', 'CaladChicu1337', 'lsfb6-8nav2-8488g-co4wg-4gco4-c8ows-0', 'Calado', 'Chicumule', NULL, 1, '2024-06-18 12:40:46', 0, 0, NULL, '$2y$10$KdtxP7i7GfOBs56f6NEoCunrNhiYtWsuD27Ir0jalp.iK2cUpKX0.', '$2y$10$yz.bKPc394a1l1WhDUl8qeidcOUo/WFCNXwBA1ywIySXNDG6QC2eu', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-18 12:39:31', '2024-06-18 12:40:46'),
(62, 'Laurindamacoo9@gmail.com', 'LauriMacoo2429', 'sev3f-ad3uu-scows-s4o8w-8g00o-4kko8-s', 'Laurinda', 'Macôo', NULL, 1, '2024-06-18 17:08:43', 0, 0, NULL, '$2y$10$kz3Xk39VpqGlZvi2BTWge.0U2aXwILs1no045b9Xy/okOMLgrHn0S', '$2y$10$ibQtyPSPQyQh1HqKk8f/7u0zsce8EjtYWs1f5A/FlNkt1aDMdyZ8C', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-18 17:07:32', '2024-06-18 17:08:43'),
(63, 'ilidioalberto27@gmail.com', 'ilidiZucul3046', '99n1z-6sc1j-c4scg-okooo-ocsg0-08w4g-0', 'ilidio', 'Zucula', NULL, 1, '2024-06-20 12:46:41', 0, 0, NULL, '$2y$10$B/3FRMGvhUDGwY9CNIa2a.2RbB6dODKuxfPi8hBE3/ZHrUzNsFd1S', '$2y$10$5JtXQHRDqMIcxHLQozRM.uc.0yro9Fzb9BgoqJyREMxs0aSisUcmy', NULL, NULL, NULL, NULL, NULL, 'jwPhC4tUVHGnf4m95ehpkwM6Mx618kifBPUdazc1epAEy6c75uudQpVJyUkc', 1, '2024-06-20 12:43:26', '2024-06-20 12:46:41'),
(64, 'sitoemario864@gmail.com', 'MarioSitoe3968', 'euyf1-806ha-g4c0o-44swc-8go80-k4go4-g', 'Mário', 'Sitoe', NULL, 0, NULL, 0, 0, NULL, '$2y$10$L7ZyjRSJ23PHZ01amF7eoOcQu0e4/3NnJDDS5V6xQUaGKIQhDUuvu', '$2y$10$R5bSWhzXqq80qaASXuML4ehffgb3vU0bPb2WYT.gRVxl7WyS//IZG', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-07-23 19:29:33', '2024-07-23 19:29:33'),
(104, 'albertoeliassozai@gmail.com', 'AlberElias574', 'mpo6i-z5eh6-sko8g-04c4k-44g0k-wk08k-c', 'Alberto', 'Elias', NULL, 0, NULL, 0, 0, NULL, '$2y$10$HyxCIO35KddXYqga2fFMReebvR12rFSXncFjl.FLcb7sp1lWuyWkC', '$2y$10$nlTGlkdKm.N3MzGsH6pqguP8H8Pnre6m9MWEPL5cK5PBhZeGCbaYS', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-08-07 11:32:50', '2024-08-07 11:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_password_resets`
--

CREATE TABLE `users_password_resets` (
  `id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_joined` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_password_resets`
--

INSERT INTO `users_password_resets` (`id`, `token`, `user_id`, `date_joined`) VALUES
(7, 'unTWViFXIvAKDzWMQPV86nVv4ngRJ7HwZ2V9f0qL74th4rAwgtV71a5InhubKQjd', 49, '2024-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permissions` text DEFAULT NULL,
  `date_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `user_id`, `role_id`, `permissions`, `date_joined`) VALUES
(1, 1, 1, '[\"all\"]', '2023-01-15 03:58:18'),
(38, 3, 2, '[\"all\"]', '2023-04-12 03:22:50'),
(41, 5, 2, '[\"all\"]', '2023-04-13 14:30:06'),
(42, 1, 2, '[\"all\"]', '2023-04-15 00:34:11'),
(44, 7, 2, '[\"all\"]', '2023-08-06 04:41:21'),
(45, 8, 2, '[\"all\"]', '2023-08-06 19:02:08'),
(46, 9, 2, '[\"all\"]', '2023-08-06 22:02:56'),
(47, 10, 2, '[\"all\"]', '2023-08-14 12:13:03'),
(48, 11, 2, '[\"all\"]', '2023-09-07 17:19:30'),
(49, 12, 2, '[\"all\"]', '2023-09-08 00:52:41'),
(50, 13, 2, '[\"all\"]', '2023-09-09 15:18:41'),
(51, 14, 2, '[\"all\"]', '2023-09-10 22:52:38'),
(52, 15, 2, '[\"all\"]', '2023-09-11 12:06:53'),
(53, 16, 2, '[\"all\"]', '2023-09-11 19:41:37'),
(54, 17, 2, '[\"all\"]', '2023-09-11 23:03:12'),
(55, 18, 2, '[\"all\"]', '2023-09-14 12:56:07'),
(56, 19, 2, '[\"all\"]', '2023-09-14 13:43:04'),
(57, 20, 2, '[\"all\"]', '2023-09-18 20:08:40'),
(58, 21, 2, '[\"all\"]', '2023-09-20 19:28:15'),
(59, 22, 2, '[\"all\"]', '2023-09-22 09:44:16'),
(60, 23, 2, '[\"all\"]', '2023-09-25 20:51:31'),
(61, 24, 2, '[\"all\"]', '2023-09-27 23:10:54'),
(62, 25, 2, '[\"all\"]', '2023-10-04 06:54:33'),
(63, 26, 2, '[\"all\"]', '2023-10-12 21:37:51'),
(64, 27, 2, '[\"all\"]', '2023-10-13 09:25:05'),
(65, 28, 2, '[\"all\"]', '2023-10-14 16:10:59'),
(66, 29, 2, '[\"all\"]', '2023-11-28 13:02:02'),
(67, 30, 2, '[\"all\"]', '2023-12-09 06:52:27'),
(68, 31, 2, '[\"all\"]', '2023-12-09 12:29:49'),
(69, 32, 2, '[\"all\"]', '2023-12-27 14:33:09'),
(70, 33, 2, '[\"all\"]', '2024-03-17 13:09:06'),
(71, 34, 2, '[\"all\"]', '2024-05-15 10:13:46'),
(72, 35, 2, '[\"all\"]', '2024-05-15 10:13:47'),
(73, 36, 2, '[\"all\"]', '2024-05-15 10:13:47'),
(74, 37, 2, '[\"all\"]', '2024-05-15 10:13:50'),
(75, 38, 2, '[\"all\"]', '2024-05-15 10:13:51'),
(76, 39, 2, '[\"all\"]', '2024-05-15 10:13:52'),
(77, 40, 2, '[\"all\"]', '2024-05-15 10:13:52'),
(78, 41, 2, '[\"all\"]', '2024-05-15 10:16:43'),
(79, 42, 2, '[\"all\"]', '2024-05-15 10:32:03'),
(80, 43, 2, '[\"all\"]', '2024-05-28 16:26:27'),
(81, 44, 2, '[\"all\"]', '2024-05-29 11:41:26'),
(82, 45, 2, '[\"all\"]', '2024-05-29 12:13:56'),
(83, 46, 2, '[\"all\"]', '2024-06-06 11:05:29'),
(84, 47, 2, '[\"all\"]', '2024-06-06 11:05:30'),
(85, 48, 2, '[\"all\"]', '2024-06-06 11:05:41'),
(86, 49, 2, '[\"all\"]', '2024-06-07 11:20:23'),
(87, 50, 2, '[\"all\"]', '2024-06-07 11:20:24'),
(88, 51, 2, '[\"all\"]', '2024-06-07 11:21:23'),
(89, 52, 2, '[\"all\"]', '2024-06-10 12:24:45'),
(90, 53, 2, '[\"all\"]', '2024-06-10 12:24:45'),
(91, 54, 2, '[\"all\"]', '2024-06-10 13:48:44'),
(92, 55, 2, '[\"all\"]', '2024-06-10 16:33:47'),
(93, 56, 2, '[\"all\"]', '2024-06-11 16:48:42'),
(94, 57, 2, '[\"all\"]', '2024-06-11 17:01:26'),
(95, 58, 2, '[\"all\"]', '2024-06-11 18:55:47'),
(96, 59, 2, '[\"all\"]', '2024-06-11 20:03:22'),
(97, 60, 2, '[\"all\"]', '2024-06-13 10:51:23'),
(98, 61, 2, '[\"all\"]', '2024-06-18 12:39:31'),
(99, 62, 2, '[\"all\"]', '2024-06-18 17:07:32'),
(100, 63, 2, '[\"all\"]', '2024-06-20 12:43:26'),
(101, 64, 2, '[\"all\"]', '2024-07-23 19:29:33'),
(141, 104, 2, '[\"all\"]', '2024-08-07 11:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_verification`
--

CREATE TABLE `users_verification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verification`
--

INSERT INTO `users_verification` (`id`, `user_id`, `code`, `token`, `active`, `created_at`, `updated_at`) VALUES
(42, 18, NULL, 'N6f8NcKdaq6nfkPB1kvJIePzI4qJ4ilIqtsBCBRtrqH4lyM7hnM0H5PHcNEA1BHk', 1, '2023-09-14 10:56:07', '2023-09-14 10:56:30'),
(44, 20, NULL, 'nNwRkJt3J34k6xMX6cFyDMlyPs79U4Q6Ny1AfgHfTDGBv6EyPbnuZL27YkvyFfQ4', 1, '2023-09-18 18:08:40', '2023-09-18 18:09:30'),
(45, 21, NULL, 'nzECAb3DssKb7lAhWSbg0v7zZFfMiJvu7Kfcw0D9TGkNF038pyEst2HHZzSYsKzi', 1, '2023-09-20 17:28:15', NULL),
(48, 24, NULL, 'bVG2zS5qyOxY20jKan5x9oboLyuvMWlcb1xGqSXgjYV8chaM7QdVLGN30TJO6fQd', 1, '2023-09-27 21:10:54', '2023-09-27 21:11:48'),
(49, 25, NULL, 'tJ9J2azdUUVyKkbIfus2PY6YPCxA30r3qrYy5XHUOFU9esWQf8TiOTxGHVCP7urX', 1, '2023-10-04 04:54:33', NULL),
(51, 27, NULL, 'XaemsUF9psqsIooY4Oz2ILiyrGb3gfdeHi1xIUuZKsMH0fJg9QDgiPMhwK35HjNI', 1, '2023-10-13 07:25:05', '2023-10-13 07:27:13'),
(55, 31, NULL, '8kHoLXwUenkjWehb2XZ9fHB2kzW3wzVbeW1RHjFPxOgOG9F0oslu7FNO8ePDkiTH', 1, '2023-12-09 10:29:49', NULL),
(59, 35, NULL, 'EUGRvQGc4KjMbSYtJOg6zmNoIcipER8ZTvaesPRtP7U3SoOFqYjFbiFIN61QZyV1', 1, '2024-05-15 08:13:47', NULL),
(62, 38, NULL, 'TZR9pz8GJm5FCKlq2DSNESSdNFfEAyymJ8SEOjkfqS0Nngij5OcS0tphmYw3Y21f', 1, '2024-05-15 08:13:51', NULL),
(64, 40, NULL, 'FL6Yl7PNPoOayCMfqmhmsLqKLJGPpkUeCbZkjjis9ZHm7emFxTLBFNpXV6q9SuUG', 1, '2024-05-15 08:13:52', NULL),
(65, 41, NULL, 'ZaEvYHTWaDm140SwNUHd8blLjZt5l1ZbOz9AS01TzHsoMkpAaImWAjvr0smOlLlF', 1, '2024-05-15 08:16:43', '2024-05-15 08:29:45'),
(67, 43, NULL, 'GelDR2qaRn2uTPfiZwxSIxS0EF9UVGzLhXKW75sLM2wDkjB0iMSMTN3EZXhlAtjx', 1, '2024-05-28 14:26:27', '2024-05-28 14:33:16'),
(68, 44, NULL, 'v48pGiCyihTCY1q0aTeXqGcTW9YMmRSI2ErXtpCj5cwxH8qibZT4fAhCvBoRTDQx', 1, '2024-05-29 09:41:26', '2024-05-29 10:09:56'),
(71, 47, NULL, '2Cmhv8MveEJ00Ke3rgKO2LxtplosryicZY9WEiydHt7z5EyItfdJPcBRi3n8kMQH', 1, '2024-06-06 09:05:30', NULL),
(72, 48, NULL, '1PM694LlYKiqmvsD6iVymSyBm8yWolUh4vGjuUkvEtY2qQEnFRqg6M9GbhSVvVCK', 1, '2024-06-06 09:05:41', '2024-06-06 09:15:05'),
(75, 51, NULL, 'Mh3s7DwvBpOLcssYR5WFrMJfnk645ruEdYBzaOrOiuAfHIJjOTZifEFASyTNz1Ha', 1, '2024-06-07 09:21:23', '2024-06-07 09:22:55'),
(80, 56, NULL, 'ChWy9SAruMv9PpQiS5V12wIFibJmUQn2NPo5emIOMxh0T5VkG4UrcgRG7vZQaD24', 1, '2024-06-11 14:48:42', '2024-06-11 15:00:35'),
(88, 64, NULL, '47tqNmfLXg3Ezl4ORobpVnxiHlTutSzF8SzaOTq5zU8uvnMlKYRa7oAGtw4mDE9q', 1, '2024-07-23 17:29:33', NULL),
(128, 104, NULL, '9nhJjAdrbAtJoS3U96nhk0migDO6wpDHzT1OahX5yZ9YSN3P981ZYOcSNd651EHZ', 1, '2024-08-07 09:32:50', '2024-08-07 09:33:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `certificate_request`
--
ALTER TABLE `certificate_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fksadsad` (`customer_id`),
  ADD KEY `fk_cerfd` (`course_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_content_type_id` (`content_type_id`),
  ADD KEY `fk_treasure_content` (`course_id`);

--
-- Indexes for table `content_type`
--
ALTER TABLE `content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_has_category`
--
ALTER TABLE `course_has_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course_id` (`course_id`),
  ADD KEY `fk_course_category_id` (`course_category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_customer_users_id` (`user_id`),
  ADD KEY `fk_customer_city_id` (`city_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `fk_customer_order_id` (`customer_id`),
  ADD KEY `fk_treasure_order_id` (`treasure_id`);

--
-- Indexes for table `order_content`
--
ALTER TABLE `order_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_content_order_id_foreign` (`order_id`),
  ADD KEY `order_content_content_id_foreign` (`content_id`),
  ADD KEY `fk_order_course` (`course_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_orders` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `treasure`
--
ALTER TABLE `treasure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `sku_number` (`sku_number`);

--
-- Indexes for table `treasure_has_course`
--
ALTER TABLE `treasure_has_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_treasure_id_course` (`treasure_id`),
  ADD KEY `fk_course_id_course` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`uid`),
  ADD UNIQUE KEY `email` (`email`,`image`) USING HASH;

--
-- Indexes for table `users_password_resets`
--
ALTER TABLE `users_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_rest` (`user_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role_1` (`user_id`),
  ADD KEY `fk_user_role_2` (`role_id`);

--
-- Indexes for table `users_verification`
--
ALTER TABLE `users_verification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_verification_token_unique` (`token`),
  ADD KEY `users_verification_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate_request`
--
ALTER TABLE `certificate_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `content_type`
--
ALTER TABLE `content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `course_has_category`
--
ALTER TABLE `course_has_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order_content`
--
ALTER TABLE `order_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1308;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `treasure`
--
ALTER TABLE `treasure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `treasure_has_course`
--
ALTER TABLE `treasure_has_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users_password_resets`
--
ALTER TABLE `users_password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `users_verification`
--
ALTER TABLE `users_verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate_request`
--
ALTER TABLE `certificate_request`
  ADD CONSTRAINT `fk_cerfd` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fksadsad` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `content_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course_content` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `course_has_category`
--
ALTER TABLE `course_has_category`
  ADD CONSTRAINT `fk_course_category_id` FOREIGN KEY (`course_category_id`) REFERENCES `course_category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `fk_customer_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_customer_order_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_treasure_order_id` FOREIGN KEY (`treasure_id`) REFERENCES `treasure` (`id`);

--
-- Constraints for table `order_content`
--
ALTER TABLE `order_content`
  ADD CONSTRAINT `fk_order_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_content_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`),
  ADD CONSTRAINT `order_content_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_orders` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `treasure_has_course`
--
ALTER TABLE `treasure_has_course`
  ADD CONSTRAINT `fk_course_id_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_treasure_id_course` FOREIGN KEY (`treasure_id`) REFERENCES `treasure` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users_password_resets`
--
ALTER TABLE `users_password_resets`
  ADD CONSTRAINT `fk_user_rest` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users_role`
--
ALTER TABLE `users_role`
  ADD CONSTRAINT `fk_user_role_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_role_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users_verification`
--
ALTER TABLE `users_verification`
  ADD CONSTRAINT `users_verification_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
