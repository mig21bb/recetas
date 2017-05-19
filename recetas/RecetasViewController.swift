//
//  RecetasViewController.swift
//  recetas
//
//  Created by masteraaa on 19/5/17.
//  Copyright © 2017 masteraaa. All rights reserved.
//

import UIKit


class RecetasViewController: UITableViewController {
    
    //Creamos un array de recetas
    var recetas:[Receta] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.recetas.append( Receta(nombre:"Bocata",
            imagen: #imageLiteral(resourceName: "04"),
            ingredientes:["pan","jamon"],
            pasos:["Cortar pan","Abrir pan","Meter jamón"]
        ))
        self.recetas.append( Receta(nombre:"Sushi",
                                    imagen: #imageLiteral(resourceName: "01"),
                                    ingredientes:["Arroz","Verdura","Pescado"],
                                    pasos:["Hervir Arroz","Cortar verduras y pesado","Enrollar"]
        ))
        self.recetas.append( Receta(nombre:"Rollito",
                                    imagen: #imageLiteral(resourceName: "05"),
                                    ingredientes:["Pasta quebrada","Relleno"],
                                    pasos:["Preparar relleno","Envolver","Freir"]
        ))
        self.recetas.append( Receta(nombre:"Estofado",
                                    imagen: #imageLiteral(resourceName: "02"),
                                    ingredientes:["Carne ternera","Cebolla"],
                                    pasos:["Cortar carne y cebolla","Freír carne y cebolla","Cocer a fuego lento"]
        ))
        self.recetas.append( Receta(nombre:"Panini",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Panini",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Panini",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Panini",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Pizza",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Calamar bravo",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        self.recetas.append( Receta(nombre:"Panini",
                                    imagen: #imageLiteral(resourceName: "03"),
                                    ingredientes:["pan","Tomate","Queso"],
                                    pasos:["Cortar pan","Poner tomate y queso","Horno 15 min"]
        ))
        
        recetas.sort(by: { (a, b) -> Bool in
            b.nombre>a.nombre
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recetas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaReceta", for: indexPath) as! recetaViewCell

        
        //cell.textLabel?.text=recetas[indexPath.row].nombre
        
        cell.imagenCellReceta.image=recetas[indexPath.row].imagen
        cell.labelCellReceta.text=recetas[indexPath.row].nombre
        
        
        
        return cell


        
    }
    /**/

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    /*override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            recetas.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        //Compartir
        let shareAction = UITableViewRowAction(style: .default, title: "Compartir") { (action, indexPath) in
            
            let shareDefaultText = "Estoy mirando la receta de \(self.recetas[indexPath.row].nombre) en la App de David Fraj Blesa"
            
            let activityController = UIActivityViewController(activityItems: [shareDefaultText, self.recetas[indexPath.row].imagen], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        }
        
        shareAction.backgroundColor = UIColor(red: 30.0/255.0, green: 164.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        //Borrar
        let deleteAction = UITableViewRowAction(style: .default, title: "Borrar") { (action, indexPath) in
            self.recetas.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 202.0/255.0, alpha: 1.0)
        
        return [shareAction, deleteAction]
    }
    
    

    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "verReceta" {
            let destinationViewController=segue.destination as! VerRecetaViewCellViewController
            destinationViewController.receta=
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    /**/

}
