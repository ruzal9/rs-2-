//
//  ViewController.swift
//  создание ПР с переходами
//
//  Created by Ruzal  on 13.09.2021.
//

import UIKit

 class ViewController: UIViewController {

     @IBOutlet private weak var loginTextField: UITextField!

     @IBOutlet private weak var passwordTextField: UITextField!
     @IBOutlet private weak var scrollView: UIScrollView!




     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
     private func checkPassword() {
         let login = self.loginTextField.text
         let pass = self.passwordTextField.text
         if  login == "" && pass == "" {
         self.present ()
         }else {
         self.showAllert()
             }
     }
   //  private func showAdminScene () {
     //    let storyBoard = UIStoryboard(name: "DebugMenu", bundle: nil)
      //   let viewConroller = storyBoard.instantiateInitialViewController()
       //  if let viewConroller = viewConroller as? DebugViewController {
        // self.present(viewConroller,animated: true)

       //  }
   //  }
     private func showAllert() {
         let allertController = UIAlertController(
             title: "Ошибка",
             message: "Введены неправильные данные",
             preferredStyle:.alert)
         let action = UIAlertAction(
             title: "OK",
             style: .cancel)
         allertController.addAction(action)
         self.present(allertController,animated: true)
     }
    
  private func present () {
   if let tabbar = UIStoryboard(name: "TabBar", bundle: nil).instantiateInitialViewController() {
       self.present(tabbar, animated: true)
      }
   }
    

@IBAction func pressButton(_ sender: Any) {
    self.checkPassword()
    
     }
}
