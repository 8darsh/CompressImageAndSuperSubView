//
//  ViewController.swift
//  CompressImage
//
//  Created by Adarsh Singh on 09/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1 should be the highest/actual size of the image and 0 is the lowest
        
        
        guard let compressData = UIImage(imageLiteralResourceName: "n").jpegData(compressionQuality: 0.8) else { return }
        guard let myImage = UIImage(data: compressData) else {return}
        if let data = myImage.jpegData(compressionQuality: 0.8){
            
            let fileSizeStr = ByteCountFormatter.string(fromByteCount: Int64(data.count), countStyle: .memory)
            print(fileSizeStr)
        }
        supSubView()
        
    }
    func supSubView(){
        
        if let textfields = myView.subviews as? [UITextField]{
            
            textfields[0].backgroundColor = .brown
            textfields[0].text = "3432"
            
            textfields[1].backgroundColor = .cyan
            textfields[1].text = "343245678"
            
            
        }
        myView.superview?.backgroundColor = .blue
        
    }


}

