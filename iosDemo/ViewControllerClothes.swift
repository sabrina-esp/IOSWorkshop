//
//  ViewControllerClothes.swift
//  iosDemo
//
//  Created by Apple Esprit on 27/9/2024.
//

import UIKit

class ViewControllerClothes: UIViewController , UITableViewDataSource, UITableViewDelegate{
    var item = ["Longsleeve Violeta","Shirt", "Pullover" , "Blouse","Shirt", "Pullover" , "Blouse"]
    
        var brandName = ["Dorothy Perkins","Mango", "H&M" , "Olivier","Shirt", "Pullover" , "Blouse"]
    
        var itemPrice = ["51$","34$", "12$" , "51$","Shirt", "Pullover" , "Blouse"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count//7
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Retrieve and Cast UILabels and UIImageView from Cell's Content View by Tags
        let cell = tableView.dequeueReusableCell(withIdentifier: "mCell")
        let contentView = cell?.contentView
        
        
        
        let labelItem =  contentView?.viewWithTag(2) as! UILabel
        let labelBrand = contentView?.viewWithTag(3) as! UILabel
        let labelPrice = contentView?.viewWithTag(4) as! UILabel
        let labelImage = contentView?.viewWithTag(1) as! UIImageView
        
        labelItem.text = item[indexPath.row]
        labelBrand.text = item[indexPath.row]
        labelPrice.text = item[indexPath.row]
        labelImage.image = UIImage(named: item[indexPath.row])
        return cell!
        
        
        
    }
    
//FCellule OnClickListner
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let clothe = item[indexPath.row]
        let prix = item[indexPath.row]
        
     performSegue(withIdentifier: "mSegue", sender: clothe)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let clothe = sender as! String
        let prix = sender as! String
        let destination = segue.destination as! DetailsViewController
        destination.titre = clothe
        destination.prix1 = prix
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
