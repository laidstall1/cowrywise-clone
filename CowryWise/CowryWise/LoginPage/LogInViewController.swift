
import UIKit

class LogInViewController: UIViewController {

    
    @objc func buttonTapped(){
        let newViewController = ProfilePageViewController()
        newViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(newViewController, animated: true)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    @objc func handleLogin(){
        loginAction?()
    }
    
    
    var loginAction:(() -> Void)?
    
    var blueBgView: UIView!
    var appLogo: UIImageView!
    var jumpRBIlbl: UILabel!
    var emailLbl: UILabel!
    var emailTextField: UITextField!
    var btnLogin: UIButton!
    var passwordTxtField: UITextField!
    var passwordLabel: UILabel!
    var btnForgotPass: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.0004122248502, green: 0.4016033709, blue: 0.9599071145, alpha: 1)
        
        blueBgView = UIView()
        blueBgView.translatesAutoresizingMaskIntoConstraints = false
        blueBgView.backgroundColor = #colorLiteral(red: 0.0004122248502, green: 0.4016033709, blue: 0.9599071145, alpha: 1)
        view.addSubview(blueBgView)
        
        let bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.backgroundColor = .white
        view.addSubview(bottomView)
        
        appLogo = {
             let theImageView = UIImageView()
             theImageView.image = UIImage(named: "logoW.png")
             theImageView.translatesAutoresizingMaskIntoConstraints = false
            theImageView.contentMode = .scaleAspectFit
             return theImageView
          }()
        blueBgView.addSubview(appLogo)
        
        
        jumpRBIlbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 25, weight: .light)
            label.text = "Jump back right in."
            return label
        }()
        bottomView.addSubview(jumpRBIlbl)
        
        emailLbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.4557843208, green: 0.538914144, blue: 0.66774261, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 15)
            label.text = "Email Address"
            return label
        }()
        bottomView.addSubview(emailLbl)
        
        emailTextField = {
            let textfield = UITextField()
            textfield.translatesAutoresizingMaskIntoConstraints = false
            textfield.font = UIFont.systemFont(ofSize: 18)
            textfield.placeholder = "Email"
            textfield.textColor = #colorLiteral(red: 0.1293928623, green: 0.1294226646, blue: 0.1293909252, alpha: 0.7743048417)
            textfield.isUserInteractionEnabled = true
            textfield.textAlignment = .left
            textfield.returnKeyType = UIReturnKeyType.done
            textfield.clearButtonMode = UITextField.ViewMode.whileEditing
            return textfield
        }()
        bottomView.addSubview(emailTextField)
        
        let emailHr = UIView()
        emailHr.backgroundColor = #colorLiteral(red: 0.8855717182, green: 0.9055718184, blue: 0.930472672, alpha: 1)
        emailHr.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(emailHr)
        
        passwordLabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = #colorLiteral(red: 0.4557843208, green: 0.538914144, blue: 0.66774261, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 15)
            label.text = "Password"
            return label
        }()
        bottomView.addSubview(passwordLabel)
        
        
        passwordTxtField = {
            let textfield = UITextField()
            textfield.translatesAutoresizingMaskIntoConstraints = false
            textfield.font = UIFont.systemFont(ofSize: 18)
            textfield.placeholder = "Password"
            textfield.textColor = #colorLiteral(red: 0.1293928623, green: 0.1294226646, blue: 0.1293909252, alpha: 0.7743048417)
            textfield.isSecureTextEntry = true
            textfield.isUserInteractionEnabled = true
            textfield.textAlignment = .left
            textfield.returnKeyType = UIReturnKeyType.done
            textfield.clearButtonMode = UITextField.ViewMode.whileEditing
            return textfield
        }()
           bottomView.addSubview(passwordTxtField)
        
        let passWrdHR = UIView()
        passWrdHR.backgroundColor = #colorLiteral(red: 0.8855717182, green: 0.9055718184, blue: 0.930472672, alpha: 1)
        passWrdHR.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(passWrdHR)
        
        btnLogin = {
            let btn = UIButton(type: .system)
            btn.setTitle("LOGIN", for: .normal)
            btn.titleLabel?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.backgroundColor = #colorLiteral(red: 0.0007414481952, green: 0.4018212557, blue: 0.9559082389, alpha: 1)
            btn.layer.cornerRadius = 5
            btn.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
            return btn
        }()
        bottomView.addSubview(btnLogin)
        
        btnForgotPass = {
           let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle("Forgot Password?", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            return btn
        }()
        bottomView.addSubview(btnForgotPass)
        
        
        
        NSLayoutConstraint.activate([
            blueBgView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            blueBgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueBgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            blueBgView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
            
            appLogo.widthAnchor.constraint(equalToConstant: 250),
            appLogo.heightAnchor.constraint(equalToConstant: 50),
            appLogo.centerXAnchor.constraint(equalTo: blueBgView.centerXAnchor),
            appLogo.centerYAnchor.constraint(equalTo: blueBgView.centerYAnchor, constant: -70),
            
            bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            jumpRBIlbl.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 35),
            jumpRBIlbl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            
            emailLbl.topAnchor.constraint(equalTo: jumpRBIlbl.bottomAnchor, constant: 25),
            emailLbl.leadingAnchor.constraint(equalTo: jumpRBIlbl.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLbl.bottomAnchor, constant: 0),
            emailTextField.leadingAnchor.constraint(equalTo: emailLbl.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            emailHr.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            emailHr.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            emailHr.heightAnchor.constraint(equalToConstant: 1),
            emailHr.topAnchor.constraint(equalTo: emailTextField.bottomAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailHr.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailHr.leadingAnchor),
            
            passwordTxtField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 0),
            passwordTxtField.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            passwordTxtField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            passwordTxtField.heightAnchor.constraint(equalToConstant: 50),
            
            passWrdHR.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            passWrdHR.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            passWrdHR.heightAnchor.constraint(equalToConstant: 1),
            passWrdHR.topAnchor.constraint(equalTo: passwordTxtField.bottomAnchor),
            
            btnLogin.topAnchor.constraint(equalTo: passwordTxtField.bottomAnchor, constant: 20),
            btnLogin.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            btnLogin.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            btnLogin.heightAnchor.constraint(equalToConstant: 50),
            

            btnForgotPass.topAnchor.constraint(equalTo: btnLogin.bottomAnchor, constant: 4),
            btnForgotPass.centerXAnchor.constraint(equalTo: btnLogin.centerXAnchor, constant: 0),
            
        ])
    }
    
    @objc func loginTapped(){
        guard let email = emailTextField.text?.lowercased() else {return}
        guard let password = passwordTxtField.text?.lowercased() else {return}
        
        if email.isEmpty{
            let Alert = UIAlertController(title: "Login Error", message: "Please enter a valid email", preferredStyle: .alert)
            Alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(Alert, animated: true, completion: nil)
        }
        else if password.isEmpty{
            let Alert = UIAlertController(title: "Login Error", message: "Password field must not be empty ", preferredStyle: .alert)
            Alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(Alert, animated: true, completion: nil)
        }
        else if email.isValidEmail == false{
                let Alert = UIAlertController(title: "Login Error", message: "You have provided invalid email or password. Please check and try again", preferredStyle: .alert)
                Alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(Alert, animated: true, completion: nil)
                }
        else{
            buttonTapped()
            }
        }
    
    
    func LoginPls() {
        guard let password = passwordTxtField else {return}
        guard let email = emailTextField else {return}
        
        let parameters = ["email":email , "password": password] as [String : Any]
            let url = URL(string: "https://609908f199011f001713ffb0.mockapi.io/api/v1/signup")!
        
            let session = URLSession.shared

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            } catch let error {
                print(error.localizedDescription)
            }
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
                guard error == nil else {return}
                guard let data = data else {return}
                do {
              
                    if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                        print("hhhhh\(json)")

                        if let httpResponse = response as? HTTPURLResponse {
                            print(" \(httpResponse.statusCode)")
                        }
                    }
                }
                catch let error {
                    print(error.localizedDescription)
                }
            })
            task.resume()
            loginTapped()
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        removeShadowFromNav(navController: navigationController)
    }
    
    
}
