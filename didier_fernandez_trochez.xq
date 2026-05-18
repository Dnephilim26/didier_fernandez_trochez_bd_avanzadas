(: Consulta XPath: Obtener todos los empleados :)
//empleado

(: Consulta XPath: Obtener nombres de empleados :)
//nombre

(: Consulta XPath: Obtener salarios :)
//salario

(: Consulta XPath: Buscar departamento específico :)
//departamento[@id='20']

(: Consulta XQuery: Mostrar nombres de empleados :)
for $x in //empleado
return $x/nombre

(: Consulta XQuery: Mostrar empleados con salario mayor a 3000 :)
for $x in //empleado
where $x/salario > 3000
return $x