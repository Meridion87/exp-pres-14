alumnos = [{nombre:'carlos', edad: 30, comuna:'la cisterna', genero:'m'}, {nombre:'celedonio', edad: 35, comuna:'san miguel', genero:'m'}]
alumnos.push({nombre:'ana', edad: 25, comuna:'la florida', genero:'f'})
alumnos.push({nombre:'felicita', edad: 18, comuna:'santiago', genero:'f'})

def adm_alumnos (alumnos)
  puts "***********Seleccione una opción***********"
  puts "1. Ingresar los datos de un alumno"
  puts "2. Modificar los datos de un alumno"
  puts "3. Eliminar los datos de un alumno "
  puts "4. Mostrar la cantidad de alumnos"
  puts "5. Mostrar las comunas de todas las personas"
  puts "6. Mostrar alumnos entre 20 y 25 años"
  puts "7. Mostrar la suma de las edades de los alumnos"
  puts "8. Mostrar el promedio de las edades de los alumnos"
  puts "9. Mostrar lista de alumnos por género"
  puts "10. salir"
  puts
  opc_usr = gets.chomp.to_i

  case opc_usr
  when 1
    puts "Ingrese el nombre: "
    nombre = gets.chomp.to_s
    puts "Ingrese la edad: "
    edad = gets.chomp.to_i
    puts "Ingrese la comuna: "
    comuna = gets.chomp.to_s
    puts "Ingrese el género: "
    genero = gets.chomp.to_s

    al = {nombre: nombre, edad: edad, comuna: comuna, genero: genero}

    alumnos.push(al)

    print alumnos
    puts
    adm_alumnos(alumnos)

  when 2
    puts "Ingrese el nombre del alumno: "
    nombre = gets.chomp.to_s
    found = 0
    indice = 0
    aux = 0

    alumnos.each do |i|
      if i[:nombre] == nombre
        found = 1
        indice = aux
      end
      aux += 1
    end

    if found == 1
      puts "Ingrese la edad: "
      edad = gets.chomp.to_i
      puts "Ingrese la comuna: "
      comuna = gets.chomp.to_s
      puts "Ingrese el género: "
      genero = gets.chomp.to_s

      (alumnos[indice])[:nombre] = nombre
      (alumnos[indice])[:edad] = edad
      (alumnos[indice])[:comuna] = comuna
      (alumnos[indice])[:genero] = genero
    else
      puts "El alumno no existe"
    end

    print alumnos
    puts
    adm_alumnos(alumnos)

  when 3
    puts "Ingrese el nombre del alumno a eliminar: "
    nombre = gets.chomp.to_s

    found = 0
    indice = 0
    aux = 0

    alumnos.each do |i|
      if i[:nombre] == nombre
        found = 1
        indice = aux
      end
      aux += 1
    end

    if found == 1
      alumnos.delete_at(indice)
    else
      puts "No se ha encontrado el alumno"
    end

    print alumnos
    puts
    adm_alumnos(alumnos)

  when 4
    puts "La cantidad de alumnos es: " + alumnos.length.to_s
    adm_alumnos(alumnos)

  when 5
    com = []

    alumnos.each do |i|
      unless com.include? (i[:comuna]).downcase
        com.push(i[:comuna].downcase)
      end
    end

    print com
    puts
    adm_alumnos(alumnos)

  when 6
    alum_select = []

    alumnos.each do |i|
      if i[:edad]>= 20 && i[:edad]<=25
        alum_select.push(i[:nombre])
      end
    end

    print alum_select
    puts
    adm_alumnos(alumnos)

  when 7

    sum = 0

    alumnos.each do |i|
      sum += i[:edad]
    end

    puts "La suma de las edades de los alumnos es: " + sum.to_s
    adm_alumnos(alumnos)

  when 8

    prom = 0

    alumnos.each do |i|
      prom += i[:edad]
    end

    prom /= alumnos.length.to_f

    puts "La suma de las edades de los alumnos es: " + prom.to_s
    adm_alumnos(alumnos)

  when 9
    femenino = []
    masculino = []

    alumnos.each do |i|
      if i[:genero] == "f"
        femenino.push(i[:nombre])
      elsif i[:genero] == "m"
        masculino.push(i[:nombre])
      end
    end

    print "Los alumnos femeninos: "
    print femenino
    puts
    print "Los alumnos masculinos: "
    print masculino
    puts
    adm_alumnos(alumnos)

  when 10
      puts "Gracias por usar mi programa. Vuelva pronto :)"
  end
end


adm_alumnos(alumnos)
