CREATE TABLE `login` (
  `usuario` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `login` (`usuario`, `pass`) VALUES
('ejemplo', '1234');
COMMIT;
