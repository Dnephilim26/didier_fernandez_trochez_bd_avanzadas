SELECT XMLSERIALIZE(
DOCUMENT
XMLELEMENT("departamentos",
    XMLAGG(
        XMLELEMENT("departamento",
            XMLATTRIBUTES(d.department_id AS "id"),
            XMLELEMENT("nombre_departamento", d.department_name),
            XMLELEMENT("empleados",
                XMLAGG(
                    XMLELEMENT("empleado",
                        XMLATTRIBUTES(e.employee_id AS "id"),
                        XMLFOREST(
                            e.first_name AS "nombre",
                            e.last_name AS "apellido",
                            e.salary AS "salario"
                        )
                    )
                )
            )
        )
    )
AS CLOB INDENT SIZE = 2) AS xml_completo
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;