struct Dilema{
    let audio: String
    let frase1: String
    let frase2: String
    let respuesta: Int
}


extension Data{
    static let dilemas:[Dilema] = [
        //---------
        
        Dilema(audio: "Q5_audio_01", frase1: "ils aiment bien", frase2: "ils s’aiment bien", respuesta: 1),
        Dilema(audio: "Q5_audio_02", frase1: "", frase2: "", respuesta: 2),
        Dilema(audio: "", frase1: "", frase2: "", respuesta: 1),
        
        
        //---------
    ]
}
