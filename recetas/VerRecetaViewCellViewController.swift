//
//  VerRecetaViewCellViewController.swift
//  recetas
//
//  Created by masteraaa on 19/5/17.
//  Copyright © 2017 masteraaa. All rights reserved.
//

import UIKit

class VerRecetaViewCellViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var titleRecetaView: UINavigationItem!
    @IBOutlet weak var imagenRecetaView: UIImageView!
    @IBOutlet weak var tabla: UITableView!
    
    var receta:Receta?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(receta?.nombre ?? "fallo de segue")
        
        imagenRecetaView.image=(receta?.imagen)!
        
        titleRecetaView.title?=(receta?.nombre)!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    numerOfRose
    
}
