//
//  MusicViewController.swift
//  MusicCollector
//
//  Created by Daniel Bonaparte on 3/10/17.
//  Copyright © 2017 bonapARTe. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var titleTextField: UITextField!
    
    @IBOutlet var musicImageView: UIImageView!
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
    }

    @IBAction func photosTapped(_ sender: AnyObject) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info [UIImagePickerControllerOriginalImage] as! UIImage
        
        musicImageView.image = image
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
 
    @IBAction func cameraTapped(_ sender: AnyObject) {
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
    }

}
