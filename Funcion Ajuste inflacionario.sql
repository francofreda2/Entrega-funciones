DELIMITER $$

CREATE FUNCTION CuotaConAjusteInflacionario(
	Ajusteporinflacion DECIMAL(10,2),
	cuota DECIMAL(10,2))
RETURNS DECIMAL(10,2) 

DETERMINISTIC
BEGIN
    DECLARE Aumento DECIMAL(10,2);
    DECLARE PrecioAjustado DECIMAL(10,2);

  SET Aumento = (cuota * Ajusteporinflacion);
  SET PrecioAjustado = (cuota + Aumento);
	-- return the customer level
	RETURN (PrecioAjustado);
END$$
DELIMITER ;