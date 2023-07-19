//
//  newViewController.swift
//  pracice
//
//  Created by Neosoft on 18/07/23.
//

import UIKit

class newViewController: UIViewController {
    var firstname: String?
    var lastname: String?
    var mobileno: String?
    var useremail: String?
    

    @IBOutlet weak var fullnamedisplay: UILabel!
    
    @IBOutlet weak var mobilenodiplay: UILabel!
    
    @IBOutlet weak var useremaildisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var fullname  = firstname + lastname
        setUpUI()
       

    }
    

    func labelUI(){
        fullnamedisplay.isHidden = false
        
    }
    
    func setUpUI(){
        fullnamedisplay.text = "\(firstname!) \(lastname!)"
        mobilenodiplay.text = mobileno ?? ""
        useremaildisplay.text = useremail ?? ""
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
