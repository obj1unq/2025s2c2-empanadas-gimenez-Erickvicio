//Escribir aqui los objetos


object galvan {

    var sueldo = 15000
    method sueldo() { return sueldo }
    method sueldo(_sueldo) { sueldo = _sueldo }

    var totalCobrado = 0
    method totalCobrado() { return totalCobrado}
    method totalCobrado(_totalCobrado) { totalCobrado = _totalCobrado }

    method cobrarSueldo() {
      self.totalCobrado(self.sueldo())
      self.dinero(self.sueldo())
      self.pagarDeuda()


    }

    var dinero = 0
    method dinero() { return dinero }
    method dinero(_dinero) { dinero = _dinero }

    var deuda = 0
    method deuda() { return deuda }
    method deuda(_deuda) { deuda = _deuda }
    
    method gastar(cuanto) { 

        var cantidadFinal = cuanto - self.dinero() 
        
        self.deuda(self.deuda() + cantidadFinal) 
        self.dinero(0)                            

        }

    method pagarDeuda() {

            var diferencia = self.deuda().max(self.dinero()) - self.deuda().min(self.dinero())

            
            if      ( self.deuda() > self.dinero())         { self.deuda(diferencia) self.dinero(0) }
            else if ( self.deuda() == self.dinero() )       { self.deuda(0) self.dinero(0) }
            else if ( self.deuda() < self.dinero() )        { self.deuda(0)          self.dinero(diferencia) }
            
            
            
            
            
            //if(self.deuda() > self.dinero()) { self.deuda( self.deuda() - self.dinero() )} else self.deuda(0)
            //if(self.dinero() > self.deuda()) { self.dinero( diferencia )} else self.dinero(0)
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