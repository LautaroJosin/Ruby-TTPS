
Para usar Ruby : 

- Para prender la consola de Ruby usar el comando "irb"

¿Como ejecuto desde consola interactiva codigo que tengo en un archivo?

- require ‘./<nombre_archivo>.rb’
- require(‘./<nombre_archivo>.rb’)
- load ‘./<nombre_archivo>.rb’

La diferencia entre load y require es que :

- El require retorna true o false dependiendo de si cargo el archivo nuevamente o no
- Load siempre carga el archivo, no como el require

Es posible tambien ejecutar código Ruby desde la consola...