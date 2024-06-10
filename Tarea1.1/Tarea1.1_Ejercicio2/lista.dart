import 'tarea.dart';

class lista {
  List<Tarea> tareas = [];

  void agregar(Tarea tagregar){
    tareas.add(tagregar); //Se agrega un objeto de tipo Tarea a la lista
  }

  void eliminar(int indice){
     if (indice >= 0 && indice < tareas.length) {
      tareas.removeAt(indice); //Se debe de enviar el numero de indice para saber que tarea se debe de eliminar
    }
  }

  void nuevoEstado(int indice, bool nestado){
    if (indice >= 0 && indice < tareas.length) {
      if(nestado == true){ //Se comprueba si el estado es true o false para cambiarlo
        tareas[indice].estado = true;
      }
      else{
        tareas[indice].estado = false;
      } 
    }
  }
}