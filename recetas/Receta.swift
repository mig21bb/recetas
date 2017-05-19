//
//  Receta.swift
//  recetas
//
//  Created by masteraaa on 19/5/17.
//  Copyright © 2017 masteraaa. All rights reserved.
//

import Foundation
import UIKit

class Receta{
    
    var nombre:String
    var imagen:UIImage
    var ingredientes:[String]
    var pasos:[String]
    var favorita:Bool=false
    
    init(nombre: String,imagen:UIImage, ingredientes:[String],pasos:[String]){
        self.nombre=nombre
        self.imagen=imagen
        self.ingredientes=ingredientes
        self.pasos=pasos
    }
    
    
    
    
}
