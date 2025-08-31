object galvan {

    var sueldo = 15000
    method sueldo(_sueldo) { sueldo = _sueldo }
    method sueldo() { return sueldo }

    var dinero = 0
    method dinero() { return dinero }

    var deuda = 0
    method deuda() { return deuda }
    
    method cobrarSueldo(){

      dinero = dinero + sueldo
      self.pagarDeuda()
    }

    method pagarDeuda() {
      
      if (dinero >= deuda){

            dinero = dinero - deuda
            deuda = 0
        }
        else
        { 
            deuda = deuda - dinero
            dinero = 0
        }
    }

    
    
    method gastar(cuanto) { 

      if (dinero >= cuanto){
            dinero = dinero - cuanto
            }
        else{
            deuda = deuda + (cuanto - dinero)
            dinero = 0
            }                            

      }
}

object baigorria {
  
    const sueldoPorEmpanada = 15
    
    var empanadasVendidas = 0
    method empanadasVendidas() { return empanadasVendidas }
    
    var totalCobrado = 0
    method totalCobrado() { return totalCobrado}
    method totalCobrado(_totalCobrado) { totalCobrado = _totalCobrado }
    
    method vender(cantidad) { empanadasVendidas = empanadasVendidas + cantidad }

    method sueldo() { return sueldoPorEmpanada * empanadasVendidas }

    method cobrarSueldo() {
      self.totalCobrado(self.sueldo())
    }

}

object gimenez {

    var fondo = 300000
    method fondo() { return fondo }

    method pagarSueldo(empleado) {
      empleado.cobrarSueldo()
      fondo = fondo - empleado.sueldo()
    }

    method cambiarSueldo(nuevoSueldo) {
        galvan.sueldo(nuevoSueldo)
    }
  
}