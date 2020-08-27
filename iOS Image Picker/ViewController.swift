//
//  ViewController.swift
//  iOS Image Picker
//
//  Created by Rahman Fadhil on 20/08/20.
//  Copyright © 2020 Rahman Fadhil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var previewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectPhotoPressed(_ sender: Any) {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.sourceType = .photoLibrary
        imagePickerVC.delegate = self
        present(imagePickerVC, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        if let image = info[.originalImage] as? UIImage {
            previewImage.image = image
        }

    }
    
}

