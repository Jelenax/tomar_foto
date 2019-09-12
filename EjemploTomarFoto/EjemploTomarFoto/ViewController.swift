//
//  ViewController.swift
//  EjemploTomarFoto
//
//  Created by Isaac Velazquez on 16/12/17.
//  Copyright © 2017 MobileStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgPhoto: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
    }

    func ejemploTipoMetodos() {
        let persona1 = Persona()
        persona1.edad = 17
        persona1.esMayorDeEdad()
        persona1.caminar()
        
        Persona.edadMasValor(edad: 18, valor: 50)
        
        Persona.correr()
        Persona.comer()
    }
    
    @IBAction func tomarImagen(_ sender: UIButton) {

        let alerta = UIAlertController(title: "Selecciona una imagen", message: "", preferredStyle: .actionSheet)
        
        alerta.addAction(UIAlertAction(title: "Carrete", style: .default, handler: { (action) in
           
            self.imagePicker.sourceType = .photoLibrary
            self.present(self.imagePicker, animated: true, completion: nil)
            
        }))
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            alerta.addAction(UIAlertAction(title: "Camara", style: .default, handler: { (action) in
                
                self.imagePicker.sourceType = .camera
                self.present(self.imagePicker, animated: true, completion: nil)
                
            }))
        }
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            
            self.imagePicker.dismiss(animated: true, completion: nil)
            imgPhoto.image = image
        }
    }
}

