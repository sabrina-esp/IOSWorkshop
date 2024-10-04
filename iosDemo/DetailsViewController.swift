//
//  DetailsViewController.swift
//  iosDemo
//
//  Created by Apple Esprit on 27/9/2024.
//

import UIKit

class DetailsViewController: UIViewController {
 
    var titre:String?
    var prix1:String?
    
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nom: UILabel!
    
    @IBOutlet weak var detail: UITextView!
    @IBOutlet weak var prix: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nom.text = titre!
        image.image = UIImage(named: titre!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
