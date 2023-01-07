DELIMITER $$

CREATE FUNCTION turnos(

	hora INT)

	RETURNS varchar(40)

DETERMINISTIC

BEGIN

DECLARE momento_del_dia varchar(40);

IF hora > 20 AND hora <= 24 THEN

SET momento_del_dia = 'Noche';

ELSEIF hora > 13 AND hora <= 20 THEN

SET momento_del_dia = 'Tarde';

ELSEIF hora >= 7 THEN

SET momento_del_dia = 'Mañana';

END IF;

RETURN momento_del_dia;

END $$

DELIMITER ;