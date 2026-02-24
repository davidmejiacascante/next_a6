DELIMITER //

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT 
		p.id, 
        t.nombre, 
        d.nombre, 
        p.ingreso, 
        m.nombre, 
        p.salario
	FROM tfm.planilla AS p
	INNER JOIN tfm.titulo AS t 
		ON p.titulo = t.id
	INNER JOIN tfm.departamento AS d 
		ON p.departamento = d.id
	INNER JOIN tfm.modalidad AS m 
		ON p.modalidad = m.id
	ORDER BY p.id ASC;
END //

DELIMITER ;