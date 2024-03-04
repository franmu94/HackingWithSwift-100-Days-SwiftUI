import Foundation

func isValidEmail(email: String) -> Bool {
    let emailRegex = #"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])"#
    return if let range = email.range(of: emailRegex, options: .regularExpression),
              range.lowerBound == email.startIndex,
              range.upperBound == email.endIndex {
        true
    } else {
        false
    }
}

isValidEmail(email: "jcfmunoz@icloud.com")
isValidEmail(email: "jjdkajsdjj@kdkkd")

func isValidEmailRegex(email: String) -> Bool {
    let emailRegex = #"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])"#
    do {
        let regex = try Regex(emailRegex)
        if let _ = try regex.wholeMatch(in: email) {
            return true
        } else {
            return false
        }
    } catch {
        return false
    }
}

isValidEmailRegex(email: "jcfmunoz@icloud.com")
isValidEmailRegex(email: "jjdkajsdjj@kdkkd")

struct Department: Codable {
    let id: Int
    let name: DptoName
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        do {
            self.name = try container.decode(DptoName.self, forKey: .name)
        } catch {
            self.name = .other
        }
    }
}

enum DptoName: String, Codable {
    case accounting = "Accounting"
    case businessDevelopment = "Business Development"
    case engineering = "Engineering"
    case humanResources = "Human Resources"
    case legal = "Legal"
    case marketing = "Marketing"
    case productManagement = "Product Management"
    case researchAndDevelopment = "Research and Development"
    case sales = "Sales"
    case services = "Services"
    case support = "Support"
    case training = "Training"
    case other = "Other"
}

struct Empleado: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let zipcode: String
    let username: String
    let address: String
    let email: String
    let avatar: URL?
    let gender: Gender
    let department: Department
    
    struct Gender: Codable {
        let id: Int
        let gender: GenderType
    }
    
    enum GenderType: String, Codable {
        case male = "Male"
        case female = "Female"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.zipcode = try container.decode(String.self, forKey: .zipcode)
        self.username = try container.decode(String.self, forKey: .username)
        self.address = try container.decode(String.self, forKey: .address)
        let email = try container.decode(String.self, forKey: .email)
        if isValidEmailRegex(email: email) {
            self.email = email
        } else {
            self.email = ""
        }
        do {
            self.avatar = try container.decodeIfPresent(URL.self, forKey: .avatar)
        } catch {
            self.avatar = nil
        }
        self.gender = try container.decode(Empleado.Gender.self, forKey: .gender)
        self.department = try container.decode(Department.self, forKey: .department)
    }
}

let url = Bundle.main.url(forResource: "getEmpleadosTest", withExtension: "json")!

do {
    let data = try Data(contentsOf: url)
    let empleados = try JSONDecoder().decode([Empleado].self, from: data)
    print(empleados)
} catch {
    print(error)
}

