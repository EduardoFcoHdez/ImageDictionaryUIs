//
//  ImagePicker.swift
//  Last Man Standing
//
//  Created by samosys on 25/06/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class ImagePicker: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var picker = UIImagePickerController();
    var alert = UIAlertController(title: NSLocalizedString("Choose Image", comment: ""), message: nil, preferredStyle: .actionSheet)
    var viewController: UIViewController?
    var pickImageCallback : ((UIImage) -> ())?;
    var filename : URL?
    
    override init(){
        super.init()
    }
    
    func pickImage(_ viewController: UIViewController, _ callback: @escaping ((UIImage) -> ())) {
        pickImageCallback = callback;
        self.viewController = viewController;
        
        let cameraAction = UIAlertAction(title: NSLocalizedString("Camera", comment: ""), style: .default){
            UIAlertAction in
            
            self.openCamera()
        }
        
        let gallaryAction = UIAlertAction(title: NSLocalizedString("Gallery", comment: ""), style: .default){
            UIAlertAction in
            
            self.openGallery()
        }
        
        let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel){
            UIAlertAction in
        }
        
        // Add the actions
        picker.delegate = self
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        alert.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alert, animated: true, completion: nil)
    }
    
    func openCamera() {
        
        alert.dismiss(animated: true, completion: nil)
        if(UIImagePickerController .isSourceTypeAvailable(.camera)) {
            
            picker.sourceType = .camera
            self.viewController!.present(picker, animated: true, completion: nil)
            
        } else {
            
//            let alertWarning = UIAlertView(title:"Warning", message: "You don't have camera", delegate:nil, cancelButtonTitle:"OK", otherButtonTitles:"")
//            alertWarning.show()
        }
    }
    
    func openGallery() {
        
        alert.dismiss(animated: true, completion: nil)
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        self.viewController!.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        pickImageCallback?(image)
        
        guard let fileUrl = info[UIImagePickerController.InfoKey.imageURL] as? URL else { return }
//        print(fileUrl.lastPathComponent) // get file Name
//        print(fileUrl.pathExtension)     // get file extension
        
        //var imageData = UIImageJPEGRepresentation(UIImage(), 0)
        //let chosenImage = info[UIImagePickerControllerEditedImage] as! UIImage
        //imageData = UIImageJPEGRepresentation(chosenImage, 0.5)
        
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, pickedImage: UIImage?) {
        
    }

}
