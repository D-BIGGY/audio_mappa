-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 31, 2023 alle 07:31
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audioguida_rovereto`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `descrizione`
--

CREATE TABLE `descrizione` (
  `id_tappa` int(11) NOT NULL,
  `testo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `descrizione`
--

INSERT INTO `descrizione` (`id_tappa`, `testo`) VALUES
(1, 'Rovereto, città del Trentino-Alto Adige, ospita la Casa d\'Arte Futurista Depero, museo che promuove l\'innovazione e l\'abbattimento delle gerarchie artistiche. Il museo, restaurato nel 2009, contiene opere di Depero e altre collezioni legate al futurismo, mentre l\'artista Boccioni ha combattuto nei pressi di Rovereto durante la guerra. Il MART di Rovereto è un luogo ideale per comprendere il legame tra il futurismo e la città, e l\'influenza di questo movimento sull\'arte e la cultura del XX secolo.'),
(2, 'Il futurismo, movimento artistico del XX secolo fondato da Marinetti, esaltava il progresso tecnologico, la velocità e la modernità, influenzando diverse forme d\'arte come pittura, scultura, poesia, letteratura e musica. Gli artisti futuristi cercavano di rappresentare il mondo in rapida trasformazione attraverso forme astratte, colori vivaci e nuove tecniche espressive, promuovendo una visione rivoluzionaria della società basata sulla modernità e sulla trasformazione.'),
(3, 'La via principale di Rovereto, chiamata inizialmente \"via Nuova\" e successivamente rinominata in corso Rosmini, è una lunga e ampia strada che collega la stazione ferroviaria alla piazza Rosmini. Conserva ancora oggi il suo carattere ottocentesco e presenta monumenti significativi come il palazzo Balista e la casa natale di Antonio Rosmini, un filosofo e teologo illuminato del XIX secolo, il cui pensiero è stato rivalutato di recente per la sua attualità.'),
(4, 'Il Corso Bettini, adiacente alla via principale di Rovereto, ospita il Mart, un museo d\'arte inaugurato nel 2002 che rappresenta un punto di riferimento nazionale e internazionale per la ricerca, la conservazione e la valorizzazione dell\'arte contemporanea. Nel suo percorso espositivo, il Mart presenta l\'astrattismo degli anni Sessanta e Settanta, e si distingue per l\'Archivio del \'900, contenente importanti opere e documenti di artisti come Depero, Severini e Carrà, e per una ricca Biblioteca con oltre 60.000 volumi.'),
(5, 'Il Museo del Caffè Bontadi racconta la storia della più antica torrefazione d\'Italia, fondata nel XVII secolo a Rovereto da Carlo Bontadi. Da un\'impresa famigliare, si è trasformata in un\'azienda moderna che offre caffè selezionati da piantagioni di qualità. La collezione del museo, composta da oltre 300 pezzi, ripercorre l\'evoluzione del gusto, della produzione e degli strumenti legati alla preparazione di questa bevanda amata, offrendo una passeggiata nel tempo e nelle vicende imprenditoriali della Torrefazione Bontadi.'),
(6, 'La Porta di San Marco di Rovereto, costruita nel XV secolo, è parte delle antiche mura cittadine e rappresentava un importante punto di accesso e controllo difensivo. Caratterizzata da un\'architettura a sesto acuto e da una maestosa torre quadrata, si trova nei pressi della Chiesa di San Marco, un edificio di grande valore storico e artistico ancora utilizzato per il culto religioso e per eventi culturali.'),
(7, 'La Serenissima, potenza marittima e commerciale dell\'Europa medievale, esercitava il suo dominio su Rovereto attraverso il Castello e altre fortificazioni. Il Palazzo Depero e la Chiesa di San Marco, risalenti al XV secolo, testimoniano l\'influenza veneziana sulla città, con elementi architettonici e stile riconoscibili. Grazie al dominio veneziano, Rovereto divenne un centro commerciale di rilievo e sviluppò una fiorente industria tessile che caratterizza ancora oggi la sua tradizione manifatturiera.'),
(8, 'L\'Accademia di Rovereto, fondata nel XVII secolo come ginnasio e successivamente trasformata in istituzione scientifica e culturale, ha giocato un ruolo significativo nella storia intellettuale e culturale della regione. È stata accessibile anche a persone provenienti da ceti sociali meno privilegiati e ha contribuito all\'illuminismo, all\'unità linguistica italiana e alla formazione di importanti figure come Monti, Depero, Goldoni, Morgagni, Manzoni e Mussolini. Oggi l\'Accademia continua ad essere un centro attivo di ricerca e scambio culturale nella comunità locale e oltre.'),
(9, 'Rovereto, posizionata strategicamente tra l\'Impero Austro-Ungarico e la Repubblica Serenissima di Venezia, prosperò come centro commerciale e culturale, arricchendosi economicamente e ottenendo una fama internazionale. Durante il dominio della Serenissima, furono fortificate le difese cittadine e promosse iniziative culturali come biblioteche, salotti, teatri e accademie. Inoltre, l\'Accademia degli Agiati di Rovereto fu al centro di una vivace disputa sull\'illuminismo e il soprannaturale, che contribuì a una più ampia discussione europea e alla nascita di nuove filosofie.'),
(10, 'Fortunato Depero, esponente del Futurismo, è stato un pittore e designer influente. La sua casa d\'arte a Rovereto è l\'unico museo futurista in Italia, contenente documenti, fotografie e opere che testimoniano la sua straordinaria produzione artistica. Depero, attraverso le sue opere audaci e i suoi contributi al movimento futurista, ha lasciato un\'impronta duratura nell\'arte e nel design italiani.'),
(11, 'Filippo Tommaso Marinetti, nato ad Alessandria d\'Egitto nel 1876, fu il fondatore del movimento futurista. Attraverso il suo manifesto e le serate futuriste, Marinetti diffuse i principi del futurismo in Italia e in Europa. Partecipò attivamente alla guerra in Libia e alle guerre balcaniche, influenzando la sua scrittura e la sua visione artistica. In seguito, fondò il Partito Politico Futurista e divenne un sostenitore della lingua e della letteratura italiana. Marinetti morì a Bellagio a causa di una crisi cardiaca.'),
(12, 'Il castello di Rovereto, noto anche come Castel Veneto, è un\'imponente struttura fortificata risalente al XIII secolo, costruita dalla famiglia Castelbarco per presidiare la valle dell\'Adige. Durante il periodo veneziano, il castello assunse la sua forma pentagonale attuale e divenne un centro militare e commerciale di grande importanza. Subendo alterne vicende nel corso dei secoli, il castello è stato restaurato e oggi ospita il Museo Storico Italiano della Guerra, mentre un complesso progetto di restauro in corso sta riportando alla luce gli spazi della rocca per il pubblico.'),
(13, 'Il Museo Storico Italiano della Guerra, ospitato nel Castello di Rovereto dal 1921, è uno dei principali musei italiani dedicati alla Prima Guerra Mondiale. La sua collezione comprende armi bianche e da fuoco, uniformi, fotografie, cimeli e altro materiale legato al conflitto, offrendo una visione ampia e dettagliata della guerra. Nel corso degli anni, il museo ha ampliato le sue proposte didattiche, rivolgendosi a diverse tipologie di visitatori e offrendo anche accesso online al suo patrimonio archivistico.'),
(14, 'La storia dell\'aereo ha visto numerosi sviluppi e innovazioni che hanno portato all\'attuale efficienza e sicurezza. Dai primi sogni di volo dell\'antichità, nel XIX secolo gli ingegneri hanno lavorato per creare modelli di aerei e nel 1903 i fratelli Wright hanno realizzato il primo volo motorizzato, aprendo la strada all\'era dell\'aviazione. Durante la prima guerra mondiale, l\'aereo è diventato uno strumento militare importante, con sviluppi tecnologici come motori più potenti, materiali leggeri e armi, mentre nel Museo Storico Italiano della Guerra di Rovereto è esposto un Nieuport Macchi NI 10, rappresentativo dell\'aviolancio dell\'epoca.'),
(15, 'Durante la prima guerra mondiale, la bicicletta svolse un ruolo fondamentale come mezzo di comunicazione veloce e fu istituito un reggimento di soldati-ciclisti. La bicicletta, pesante 30 kg, era utilizzata per trasportare armi e provviste, richiedendo prestanza fisica e cooperazione tra i ciclisti. La ditta Bianchi vinse un concorso nel 1911 per fornire il modello ufficiale alle truppe, mentre personaggi come Ottavio Bottecchia e Enrico Toti furono coinvolti nelle campagne ciclistiche durante la guerra.'),
(16, 'Durante la prima guerra mondiale, le truppe tedesche fecero un\'imponente dimostrazione dell\'uso delle maschere antigas nella battaglia di Ypres, rendendo le maschere una parte stabile dell\'equipaggiamento dei soldati. Prima di queste invenzioni, i soldati si proteggevano dai gas con fazzoletti imbevuti di urina, un metodo poco sicuro e non immediatamente disponibile. Nel conflitto, oltre un milione e duecentomila soldati furono intossicati dai gas e circa ottantacinquemila persero la vita.');

-- --------------------------------------------------------

--
-- Struttura della tabella `fotografia`
--

CREATE TABLE `fotografia` (
  `id` int(11) NOT NULL,
  `nome_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `fotografia`
--

INSERT INTO `fotografia` (`id`, `nome_file`) VALUES
(1, 'P_20230314_140231'),
(3, 'P_20230314_113151'),
(4, 'P_20230314_085626'),
(4, 'P_20230314_090130'),
(5, 'IMG_3494'),
(5, 'IMG_3496'),
(6, 'IMG_20230314_093629'),
(6, 'P_20230314_094025'),
(7, 'P_20230314_093938'),
(8, 'IMG_20230314_092508'),
(8, 'P_20230314_092351'),
(8, 'P_20230314_092715'),
(10, 'IMG_20230314_102738'),
(10, 'IMG_20230314_103706'),
(10, 'IMG_20230314_103910'),
(11, 'IMG_3347'),
(11, 'IMG_20230314_102659'),
(11, 'P_20230314_103136'),
(12, 'P_20230314_122348'),
(12, 'P_20230314_134557'),
(13, 'IMG_20230314_145137'),
(13, 'IMG_20230314_145340'),
(13, 'IMG_20230314_145412'),
(14, 'P_20230314_145212'),
(16, 'P_20230314_145109');

-- --------------------------------------------------------

--
-- Struttura della tabella `tappa`
--

CREATE TABLE `tappa` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tappa`
--

INSERT INTO `tappa` (`id`, `nome`, `lat`, `lon`) VALUES
(1, 'Rovereto', 45.895415, 11.042863),
(2, 'Futurismo', 45.894932, 11.043425),
(3, 'Via Principale', 45.8938621, 11.0445437),
(4, 'Mart', 45.8940161, 11.0445437),
(5, 'Caffè Bontadi', 45.8913475, 11.0419232),
(6, 'Chiesa e Porta di San Marco', 45.8905261, 11.0428244),
(7, 'La Serenissima a Rovereto', 45.8890439, 11.0443013),
(8, 'L\'Accademia di Rovereto', 45.8909099, 11.0425385),
(9, 'Illuminismo', 45.8895689, 11.0426783),
(10, 'Manifesti pubblici', 45.8867319, 11.0447463),
(11, 'Marinetti', 45.8884609, 11.0429925),
(12, 'Il Castello di Rovereto', 45.8867319, 11.0447463),
(13, 'Il museo storico della Guerra', 45.8871709, 11.0455213),
(14, 'L\'aereo', 45.8870433, 11.0457358),
(15, 'La Bicicletta', 45.8870049, 11.0449843),
(16, 'La maschera antigas', 45.8868439, 11.0448613);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `descrizione`
--
ALTER TABLE `descrizione`
  ADD PRIMARY KEY (`id_tappa`);

--
-- Indici per le tabelle `fotografia`
--
ALTER TABLE `fotografia`
  ADD KEY `id` (`id`);

--
-- Indici per le tabelle `tappa`
--
ALTER TABLE `tappa`
  ADD PRIMARY KEY (`id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `descrizione`
--
ALTER TABLE `descrizione`
  ADD CONSTRAINT `descrizione_ibfk_1` FOREIGN KEY (`id_tappa`) REFERENCES `tappa` (`id`);

--
-- Limiti per la tabella `fotografia`
--
ALTER TABLE `fotografia`
  ADD CONSTRAINT `fotografia_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tappa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
