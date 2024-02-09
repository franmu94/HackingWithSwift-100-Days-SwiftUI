import Foundation




class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal{
    
    init() {
        super.init(legs: 4)
    }
    
    func speak(){
        print("Guau Guau")
    }
}


class Corgi: Dog{
    override func speak(){
        print("Guau Guau, I'm a corgi!")
    }
}

class Poodle: Dog{
    override func speak(){
        print("Guau Guau, I'm a poodle!")
    }
}

class Cat: Animal{
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak(){
        print("miau miau")
    }
}

class Persian: Cat{
    override func speak(){
        print("miau miau persian cat")
    }
    init() {
        super.init(isTame: true)
    }
}

class Lion: Cat{
    override func speak(){
        print("arr arr lion")
    }
}


let hercules = Lion(isTame: false)




