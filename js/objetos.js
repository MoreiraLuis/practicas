function Luis(nombre, apellido, email, edad, contraseña, telefono, DNI, direccion, cp) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.email = email;
    this.edad = edad;
    this.contraseña = contraseña;
    this.telefono = telefono;
    this.DNI = DNI;
    this.direccion = direccion;
    this.cp = cp;
  }
  
  var Luis = new Luis("Luis", "Moreira", "luismoreira@ejemplo.es", 30, 1234, 622052509, 04725525, "Av. Dr. Ángel Pascual Megías", 03015);

  function Asignaturas(Nombre, id_profesor1, id_profesor2) {
    this.Nombre = Nombre;
    this.id_profesor1 = id_profesor1;
    this.id_profesor2 = id_profesor2;
  }

  var Asignaturas = new Asignaturas("Juan Pérez", 1, 2);

  function Notas(id_alumno, id_asignatura, id_curso, nota) {
    this.id_alumno = id_alumno;
    this.id_asignatura = id_asignatura;
    this.id_curso = id_curso;
    this.nota = nota;
  }

  var Asignaturas = new Asignaturas("Juan Pérez", "Matemáticas", "ESO", 15);

  function Cursos(id_1, id_2, id_3, id_4, id_5, id_6, id_7, id_8, id_9, id_10) {
    this.id_1 = id_1;
    this.id_2 = id_2;
    this.id_3 = id_3;
    this.id_4 = id_4;
    this.id_5 = id_5;
    this.id_6 = id_6;
    this.id_7 = id_7;
    this.id_8 = id_8;
    this.id_9 = id_9;
    this.id_10 = id_10;
  }

  var Cursos = new Cursos(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);