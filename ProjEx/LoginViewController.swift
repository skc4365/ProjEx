//
//  LoginViewController.swift
//  ProjEx
//
//  Created by SK Kim on 23/08/2019.
//  Copyright © 2019 skc4365. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    var saveOn = true
    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveOnOff(_ sender: UISwitch) {
        
        if sender.isOn {
            saveOn = true
        } else {
            saveOn = false
        }
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        
        // ----- 텍스트박스의 로그인(아이디, 비밀번호) 규칙을 체크해야한다.
        
        // 텍스트박스에 공백이 아니면,
        if !(txtID.text!.isEmpty || txtPass.text!.isEmpty) {
            
            if saveOn {
                print("로그인정보저장하기")
                // 로그인정보 저장하기
                UserDefaults.standard.set(txtID.text, forKey: "id")
                UserDefaults.standard.set(txtPass.text, forKey: "passwd")
                
            }
            
            // 공백이 아니면 로그인
            print("로그인하기")
            print("===== " + UserDefaults.standard.string(forKey: "id")!)
            print("===== " + UserDefaults.standard.string(forKey: "passwd")!)
            
            // ----- 로그인이 완료상태저장 loginState = true -----
            loginState = true
            
            
            
            
            // ----- 로그인 오류상황 loginState = false -----
            //loginState = false
        }
        self.view.endEditing(true)
        
        // ----- 로그인후에 반갑습니다. 알림창 띄워주기 -----
        if loginState == true {
            //로그인이 되어있는 상태이므로 알림을 띄워준다. ?님 반갑습니다.
            let loginAlert = UIAlertController(title: "skc4365", message: "선경님 반갑습니다.", preferredStyle: .alert)
            //let loginAlert = UIAlertController(title: "skc4365", message: "선경님 반갑습니다.", preferredStyle: .actionSheet)
            let loginAction = UIAlertAction(title: "반갑습니다 ^^", style: UIAlertAction.Style.default, handler: nil)
            loginAlert.addAction(loginAction)
            //present(loginAlert, animated: true, completion: nil)
            present(loginAlert, animated: true, completion:nil)
            
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
