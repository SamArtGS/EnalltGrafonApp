
struct SiNo{
    let palabra: String
    let respuesta: Bool
}


// MARK: Instrucciones
/*
  Copiar y pegar el excel a esta estructura de datos
 
    Para negritas: Entre asteriscos:  parl*er*
    Para Œ: Entre &Œ&
 
    Si es sí, colocar la palabra true, sin encerrar entre comillas.
    Si es no, colocar la palabra false, sin encerrar entre comillas.
    
*/


extension Data{
    
    static let siNo:[SiNo] = [
        
        //------------------------
        
        SiNo(palabra: "ami*s*", respuesta: false),
        SiNo(palabra: "gro*s*", respuesta: false),
        SiNo(palabra: "par*s*", respuesta: false),
        SiNo(palabra: "étudian*t*", respuesta: false),
        SiNo(palabra: "ami*s*", respuesta: false),

        
        SiNo(palabra: "europ*é*en", respuesta: true),
        SiNo(palabra: "bu*s*", respuesta: true)
        
        //------------------------
        
    ]
}
