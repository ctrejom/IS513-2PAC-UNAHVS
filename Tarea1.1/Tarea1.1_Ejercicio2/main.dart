import 'tarea.dart';
import 'lista.dart';

void main() {
  final t1 = new Tarea(titulo: "Tarea1.1", descripcion: "Tarea de Lenguajes de Programacion", estado: false);
  final t2 = new Tarea(titulo: "Barrer la casa", descripcion: "Tarea del hogar", estado: false);
  final l1 = new lista();

  l1.agregar(t1);
  l1.agregar(t2);
  for(final info in l1.tareas)
  {
    print('Titulo: ${info.titulo}');
    print('Descripcion: ${info.descripcion}');
    print('Estado: ${info.estado}');
    print("");
  }
  print("\nSe cambiara el estado\n");

  l1.nuevoEstado(0, true);
  l1.nuevoEstado(1, true);
  for(final info in l1.tareas)
  {
    print('Titulo: ${info.titulo}');
    print('Descripcion: ${info.descripcion}');
    print('Estado: ${info.estado}');
    print("");
  }

  print("\nSe eliminara una tarea de la lista\n");

  l1.eliminar(1);

  for(final info in l1.tareas)
  {
    print('Titulo: ${info.titulo}');
    print('Descripcion: ${info.descripcion}');
    print('Estado: ${info.estado}');
    print("");
  }

}