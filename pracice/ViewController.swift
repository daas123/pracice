//
//  ViewController.swift
//  pracice
//
//  Created by Neosoft on 18/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    //  textfiels values refrences
    
    @IBOutlet weak var firstnamebox: UITextField!
    @IBOutlet weak var lastnamebox: UITextField!
    @IBOutlet weak var mobilebox: UITextField!
    @IBOutlet weak var emailbox: UITextField!
    @IBOutlet weak var passwordbox: UITextField!
    
    
    
    // same page values
    
    
    @IBOutlet weak var samepagefulname: UILabel!
    @IBOutlet weak var samepagemobileno: UILabel!
    @IBOutlet weak var samepageemail: UILabel!
    
    
    // popup refrences
    
    
    @IBOutlet weak var popupview: UIView!
    @IBOutlet weak var popupname: UILabel!
    @IBOutlet weak var popuplabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstnamebox.delegate = self
        lastnamebox.delegate = self
        mobilebox.delegate = self
        emailbox.delegate = self
        passwordbox.delegate = self
    }
    
    @IBAction func submitbox(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "newViewController") as! newViewController
        vc.firstname = firstnamebox.text ?? ""
        vc.lastname = lastnamebox.text ?? ""
        vc.useremail = emailbox.text ?? ""
        vc.mobileno = mobilebox.text ?? ""
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func unlockLockbutton(_ sender: Any) {
        // submit button to open popupview
        popupview.isHidden = false
        view.backgroundColor = .black
        popupname.text = firstnamebox.text
        popuplabel.text = emailbox.text
        
    }
    
    @IBAction func samepageDisplay(_ sender: Any) {
        
        samepagefulname.text = firstnamebox.text
        samepagemobileno.text = mobilebox.text
        samepageemail.text = emailbox.text
        
    }
    
    
    
    @IBAction func popupclosebutton(_ sender: Any) {
        popupview.isHidden = true
        view.backgroundColor = .white
    }
    
}
extension ViewController: UITextFieldDelegate
{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //1
        print("textFieldShouldBeginEditing")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //4
        print("textFieldDidBeginEditing")
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //2
        print("textFieldShouldEndEditing")
        return true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        //3
        print("textFieldDidEndEditing")
    }
    
    //    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    //        print(range.location)
    //        if textField == mobilebox
    //        {
    //            if range.location<10{
    //                return true
    //            }else{
    //                return false
    //            }
    //        }else
    //        {
    //            return false
    //        }
    //    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear is called")
        return true
    }
    
}
