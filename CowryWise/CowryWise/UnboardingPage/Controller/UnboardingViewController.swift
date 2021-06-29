//
//  ViewController.swift
//  CowryWise
//
//  Created by mac on 07/05/2021.
//

import UIKit

class UnboardingViewController: UIViewController {
    
    @objc func buttonTapped(){
        let newViewController = SignUpViewController()
        newViewController.modalPresentationStyle = .fullScreen
        newViewController.email = emailTextField.text!
        navigationController?.pushViewController(newViewController, animated: true)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    
    var blueBgView: UIView!
    var appLogo: UIImageView!
    var letsGMWlbl: UILabel!
    var emailLbl: UILabel!
    var emailTextField: UITextField!
    var btnGetStarted: UIButton!
    var lblSignIn: UILabel!
    var btnSignIn: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.0004122248502, green: 0.4016033709, blue: 0.9599071145, alpha: 1)
        
        blueBgView = UIView()
        blueBgView.translatesAutoresizingMaskIntoConstraints = false
        blueBgView.backgroundColor = #colorLiteral(red: 0.0004122248502, green: 0.4016033709, blue: 0.9599071145, alpha: 1)
        view.addSubview(blueBgView)
        
        let buttomView = UIView()
        buttomView.translatesAutoresizingMaskIntoConstraints = false
        buttomView.backgroundColor = .white
        view.addSubview(buttomView)
        
        appLogo = {
             let theImageView = UIImageView()
             theImageView.image = UIImage(named: "logoW.png")
             theImageView.translatesAutoresizingMaskIntoConstraints = false
            theImageView.contentMode = .scaleAspectFit
             return theImageView
          }()
        blueBgView.addSubview(appLogo)
        
        
        letsGMWlbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 25, weight: .light)
            label.text = "Let's get your money working"
            return label
        }()
        buttomView.addSubview(letsGMWlbl)
        
        emailLbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.4557843208, green: 0.538914144, blue: 0.66774261, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 15)
            label.text = "Type in your email"
            return label
        }()
        buttomView.addSubview(emailLbl)
        
        emailTextField = {
            let textfield = UITextField()
            textfield.translatesAutoresizingMaskIntoConstraints = false
            textfield.font = UIFont.systemFont(ofSize: 20)
            textfield.textColor = #colorLiteral(red: 0.1293928623, green: 0.1294226646, blue: 0.1293909252, alpha: 0.7743048417)
            textfield.isUserInteractionEnabled = true
            textfield.textAlignment = .left
            textfield.returnKeyType = UIReturnKeyType.done
            textfield.clearButtonMode = UITextField.ViewMode.whileEditing
            return textfield
        }()
        buttomView.addSubview(emailTextField)
        
        let hr = UIView()
        hr.backgroundColor = #colorLiteral(red: 0.8855717182, green: 0.9055718184, blue: 0.930472672, alpha: 1)
        hr.translatesAutoresizingMaskIntoConstraints = false
        buttomView.addSubview(hr)
        
        btnGetStarted = {
            let btn = UIButton(type: .system)
            btn.setTitle("GET STARTED", for: .normal)
            btn.titleLabel?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.backgroundColor = #colorLiteral(red: 0.0007414481952, green: 0.4018212557, blue: 0.9559082389, alpha: 1)
            btn.layer.cornerRadius = 5
            btn.addTarget(self, action: #selector(getStartedPressed), for: .touchUpInside)
            return btn
        }()
        buttomView.addSubview(btnGetStarted)
        
        let signInView = UIView()
        signInView.translatesAutoresizingMaskIntoConstraints = false
        buttomView.addSubview(signInView)
        
        lblSignIn = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.1293928623, green: 0.1294226646, blue: 0.1293909252, alpha: 0.5459297582)
            label.text = "Got an account?"
            label.font = UIFont.systemFont(ofSize: 15)
            label.setContentCompressionResistancePriority(UILayoutPriority(1), for: .horizontal)
            return label
        }()
        signInView.addSubview(lblSignIn)
        
        btnSignIn = {
           let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle("Sign In", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            return btn
        }()
        signInView.addSubview(btnSignIn)

        
        
        
        
        
        
        NSLayoutConstraint.activate([
            blueBgView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            blueBgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueBgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            blueBgView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            appLogo.widthAnchor.constraint(equalToConstant: 250),
            appLogo.heightAnchor.constraint(equalToConstant: 50),
            appLogo.centerXAnchor.constraint(equalTo: blueBgView.centerXAnchor),
            appLogo.centerYAnchor.constraint(equalTo: blueBgView.centerYAnchor, constant: -70),
            
            buttomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            buttomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            buttomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            letsGMWlbl.topAnchor.constraint(equalTo: buttomView.topAnchor, constant: 40),
            letsGMWlbl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            
            emailLbl.topAnchor.constraint(equalTo: letsGMWlbl.bottomAnchor, constant: 30),
            emailLbl.leadingAnchor.constraint(equalTo: letsGMWlbl.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLbl.bottomAnchor, constant: 0),
            emailTextField.leadingAnchor.constraint(equalTo: emailLbl.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            hr.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            hr.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            hr.heightAnchor.constraint(equalToConstant: 1),
            hr.topAnchor.constraint(equalTo: emailTextField.bottomAnchor),
            
            btnGetStarted.topAnchor.constraint(equalTo: hr.bottomAnchor, constant: 20),
            btnGetStarted.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            btnGetStarted.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            btnGetStarted.heightAnchor.constraint(equalToConstant: 50),
            
            signInView.topAnchor.constraint(equalTo: btnGetStarted.bottomAnchor, constant: 10),
            lblSignIn.centerXAnchor.constraint(equalTo: btnGetStarted.centerXAnchor, constant: 0),
            lblSignIn.topAnchor.constraint(equalTo: btnGetStarted.bottomAnchor, constant: 10),
            lblSignIn.centerXAnchor.constraint(equalTo: btnGetStarted.centerXAnchor, constant: -50),
            lblSignIn.widthAnchor.constraint(equalToConstant: 115),

            btnSignIn.topAnchor.constraint(equalTo: btnGetStarted.bottomAnchor, constant: 4),
            btnSignIn.leadingAnchor.constraint(equalTo: lblSignIn.trailingAnchor),
            btnSignIn.centerXAnchor.constraint(equalTo: btnGetStarted.centerXAnchor, constant: 35),
            
        ])
    }
    
    @objc func getStartedPressed(){
        guard let email = emailTextField.text?.lowercased() else {return}
        
        if email.isEmpty{
            let alert = UIAlertController(title: "Ooops Sorry", message: "Enter an email to continue ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else if email.isValidEmail == false{
                let alert = UIAlertController(title: "Ooops Sorry", message: "Please enter a valid email", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
                }
        else{
                buttonTapped()
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        removeShadowFromNav(navController: navigationController)
    }


}

