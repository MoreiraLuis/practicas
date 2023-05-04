function alumno(nombre, apellido, email, edad, contraseña, telefono, DNI, direccion, cp) {
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
  
  var Luis = new alumno("Luis", "Moreira", "luismoreira@ejemplo.es", 30, 1234, 622052509, 04725525, "Av. Dr. Ángel Pascual Megías", 03015);
  var Jesus = new alumno("Jesús", "Alonso", "jesusalonso@ejemplo.es", 27, 1234, 611215496, 24869471, "Av. Dr. Rico Pérez", 03014);
  var Maria = new alumno("María", "Rodríguez", "mariarodriguez@ejemplo.es", 24, 1234, 620304050, 04757732, "Av. Rambla", 03010);


  function Asignaturas(Nombre, id_profesor1, id_profesor2) {
    this.Nombre = Nombre;
    this.id_profesor1 = id_profesor1;
    this.id_profesor2 = id_profesor2;
  }

  var LuisAsignaturas = new Asignaturas("Jorge Solís", 1, 2);
  var JesusAsignaturas = new Asignaturas("Jorge Solís", 1, 2);
  var MariaAsignaturas = new Asignaturas("Jorge Solís", 1, 2);

  function Notas(id_alumno, id_asignatura, id_curso, nota) {
    this.id_alumno = id_alumno;
    this.id_asignatura = id_asignatura;
    this.id_curso = id_curso;
    this.nota = nota;
  }

  var LuisNotas = new Notas("Luis Moreira", "Matemáticas", "ESO", 15);
  var JesusNotas = new Notas("Jesús Alonso", "Matemáticas", "ESO", 10);
  var MariaNotas = new Notas("María Rodríguez", "Matemáticas", "ESO", 19);

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

  var LuisCursos = new Cursos(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
  var MariaCursos = new Cursos(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
  var JesusCursos = new Cursos(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

  //array para mostrar datos de Luis
  const datosDeLuis = [Luis, LuisAsignaturas, LuisNotas, LuisCursos];
  //array para mostrar datos de Maria
  const datosDeMaria = [Maria, MariaAsignaturas, MariaNotas, MariaCursos];
  //array para mostrar datos de Jesus
  const datosDeJesus = [Jesus, JesusAsignaturas, JesusNotas, JesusCursos];