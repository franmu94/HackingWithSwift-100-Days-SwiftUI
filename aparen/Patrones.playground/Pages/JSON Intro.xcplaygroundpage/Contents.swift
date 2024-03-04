import Foundation

let json = """
{
  "departamento":8,
  "nombredepto":"Ventas",
  "director": "Juan Rodríguez",
  "empleados":[
    {
      "nombre":"Pedro",
      "apellido":"Fernández"
    },{
      "nombre":"Jacinto",
      "apellido":"Benavente"
    }
  ]
}
"""

 
struct Departamento: Codable {
    let departamento: Int
    let nombredepto: String
    let director: String
    
    struct Empleado: Codable {
        let nombre: String
        let apellido: String
    }
    let empleados: [Empleado]
}

if let data = json.data(using: .utf8) {
    do {
        let dpto = try JSONDecoder().decode(Departamento.self, from: data)
        print(dpto)
    } catch {
        print(error)
    }
}
