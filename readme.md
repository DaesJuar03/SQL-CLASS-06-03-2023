#Ejercicio Materias:
Diseñar una Base de Datos para almacenar datos de estudiantes que cursan
materias en un Instituto. Para Estudiante se quiere almacenar su No. De Control,
Nombre del Alumno, Modalidad del estudiante. Cada Estudiante se clasifica en dos
tipos, Alumno que trabaja y Alumno que no trabaja. Para el alumno que trabaja se
desea almacenar el nombre de la empresa donde labora.
Se desea almacenar los datos de las Materias que cursa: idMateria, Nombre de la
materia, Especialidad, Modalidad y número de créditos. Cada Modalidad de materia
se clasifica en Materias con laboratorio y Materias sin laboratorio. Para las que no
llevan laboratorio se almacenará el nombre del aula y para las llevan laboratorio se
almacenará el nombre de la sala y horas usadas.
Un alumno puede cursar varias materias y una materia puede tener varios alumnos.
Cuando un alumno cursa una materia se requiere almacenar la calificación y la cursa
en un semestre en particular. Para el Semestre se debe almacenar el idSemestre,
Nombre del Semestre y año.

#Ejercicio Reparaciones:
Se desea almacenar datos para una empresa que ofrece mantenimientos a vehículos
nuevos y seminuevos. Para los datos de los coches se almacenará su Matrícula,
Marca, Modelo, Color.
Los datos del Cliente serán su RFC, Nombre y Dirección.
Se almacenarán datos de los Mecanicos: idMecánico, Nombre y Salario.
Un coche le pertenece a un solo cliente, pero un cliente puede tener varios vehículos.
Para el mantenimiento de un vehículo, un coche se le asigna a un solo mecánico, pero
un mecánico puede dar mantenimiento a varios coches.
Un coche puede clasificarse en Nuevo o Usado. Para nuevo se almacena No. De
factura y para Usado el Kilometraje.

#Ejercicio Camionero:
Se desea informatizar la gestión de una empresa de transporte que reparte paquetes
por toda España. Los encargados de llevar los paquetes son los camioneros, de los
que se quiere guardar el ID, nombre, teléfono, dirección, salario y población en que
vive.
De los paquetes transportados interesa conocer el código de paquete, descripción,
destinatario y dirección del destinatario. Un camionero distribuye muchos paquetes
y un paquete solo puede ser distribuido por un camionero. De las provincias a las
que llegan los paquetes interesa guardar el código de provincia y el nombre. Un
paquete solo puede llegar a una provincia, sin embargo, a una provincia pueden
llegar varios paquetes.
De los camiones que llevan los camioneros, interesa conocer la matricula, modelo,
tipo y potencia. Un camionero puede conducir diferentes camiones en fechas
diferentes, y un camión puede ser conducido por varios camioneros. MODELO
ENTIDAD RELACION

#Ejercicio Hospital:
“La clínica ABC” necesita llevar un control informatizado de su gestión de pacientes
y médicos. De cada paciente se desea guardar el código, nombre, apellido, dirección,
población, municipio, código postal, teléfono y especialidad. Se desea llevar el
control de cada uno de los ingresos que el paciente hace en la clínica. De Médico se
desea guardar: Código, Nombre, Apellido, Teléfono y Especialidad. Cada ingreso que
realiza el paciente queda registrado en la base de datos. De cada ingreso se guarda el
código de ingreso (que se ingresara automáticamente cada vez que el paciente realice
un ingreso), el número de habitación y cama en la que el paciente realiza el ingreso
y la fecha de ingreso. Un médico puede atender varios ingresos, pero el ingreso de
un paciente solo puede ser atendido por un único médico. Un paciente puede realizar
varios ingresos a la clínica
