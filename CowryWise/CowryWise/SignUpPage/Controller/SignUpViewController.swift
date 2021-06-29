
import UIKit

class SignUpViewController: UIViewController {
    
    @objc func buttonTapped(){
        let newVC = SuccessfullySignedUpViewController()
        let navVC = UINavigationController(rootViewController: newVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated:true, completion: nil)
        }
    
    var email:String = ""
    
    var signUpLbl: UILabel!
    var fnameField: UITextField!
    var lnameField: UITextField!
    var password: UITextField!
    var phoneNo: UITextField!
    var continueBtn: UIButton!
    var inviteCode: UILabel!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        signUpLbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 30)
            label.text = "Let's get to know you."
            label.textColor = #colorLiteral(red: 0.1457099617, green: 0.2209058106, blue: 0.3454180062, alpha: 1)
            return label
        }()
        view.addSubview(signUpLbl)
        
        fnameField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            textField.addLine(position: .bottom, color: #colorLiteral(red: 0.8976691365, green: 0.9056007266, blue: 0.9262644649, alpha: 1), width: 1.0)
            textField.attributedPlaceholder = NSAttributedString(string: "Aries",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(named: "CowryWiseBlue") ?? .gray])
            return textField
        }()
        view.addSubview(fnameField)
        
        lnameField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            textField.addLine(position: .bottom, color: #colorLiteral(red: 0.8976691365, green: 0.9056007266, blue: 0.9262644649, alpha: 1), width: 1.0)
            textField.attributedPlaceholder = NSAttributedString(string: "prime",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(named: "CowryWiseBlue") ?? .gray])
            return textField
        }()
        view.addSubview(lnameField)
        
        password = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            textField.addLine(position: .bottom, color: #colorLiteral(red: 0.8976691365, green: 0.9056007266, blue: 0.9262644649, alpha: 1), width: 1.0)
            textField.isSecureTextEntry = true
            return textField
        }()
        view.addSubview(password)
        
        phoneNo = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            textField.placeholder = "+234"
            textField.addLine(position: .bottom, color: #colorLiteral(red: 0.8976691365, green: 0.9056007266, blue: 0.9262644649, alpha: 1), width: 1.0)
            return textField
        }()
        view.addSubview(phoneNo)
   
        continueBtn = {
            let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle("CONTINUE", for: .normal)
            btn.titleLabel?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            btn.backgroundColor = #colorLiteral(red: 0.0007414481952, green: 0.4018212557, blue: 0.9559082389, alpha: 1)
            btn.layer.cornerRadius = 5
            btn.addTarget(self, action: #selector(getStartedTappped), for: .touchUpInside)
            return btn
        }()
        view.addSubview(continueBtn)
        
        
        NSLayoutConstraint.activate([
            signUpLbl.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            signUpLbl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            signUpLbl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            fnameField.topAnchor.constraint(equalTo: signUpLbl.bottomAnchor, constant: 60),
            fnameField.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            lnameField.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.45),
            
            lnameField.topAnchor.constraint(equalTo: fnameField.topAnchor),
            lnameField.leadingAnchor.constraint(equalTo: fnameField.trailingAnchor, constant: 20),
            lnameField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20),
            lnameField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide
                                                    .trailingAnchor, constant: -10),
            lnameField.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.45, constant: -20),
            
            password.topAnchor.constraint(equalTo: lnameField.bottomAnchor, constant: 60),
            password.leadingAnchor.constraint(equalTo: fnameField.leadingAnchor),
            password.trailingAnchor.constraint(equalTo: lnameField.trailingAnchor),
            
            phoneNo.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 60),
            phoneNo.leadingAnchor.constraint(equalTo: fnameField.leadingAnchor),
            phoneNo.trailingAnchor.constraint(equalTo: lnameField.trailingAnchor),
            
            continueBtn.topAnchor.constraint(equalTo: phoneNo.bottomAnchor, constant: 60),
            continueBtn.leadingAnchor.constraint(equalTo: fnameField.leadingAnchor),
            continueBtn.trailingAnchor.constraint(equalTo: lnameField.trailingAnchor),
            continueBtn.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
//    MARK:- Network Call
    @objc func getStartedTappped(){

        guard let password = password.text?.lowercased() else {return}
        guard let firstname = fnameField.text?.lowercased() else {return}
        guard let lastname = lnameField.text?.lowercased() else {return}
        guard let phoneNum = phoneNo.text?.lowercased() else {return}
        
        
        if firstname.isEmpty {
            let alert = UIAlertController(title: "One moment!", message: "First name field must not be empty. Enter First name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else if lastname.isEmpty {
            let alert = UIAlertController(title: "One moment!", message: "Last name field must not be empty. Enter Last name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else if password.isEmpty{
            let alert = UIAlertController(title: "One moment!", message: "Password field must not be empty ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }

        else if password.count < 8 || password.count > 12 {
            let alert = UIAlertController(title: "One moment!", message: "Password must be 8-12 characters long", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            print("hello4")
        }
    
        else if password.isValidPassword == false{
                let alert = UIAlertController(title: "One moment!", message: "Password must contain a minimum of 8 characters with atleast 1 Alphabet and 1 Number", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
                }
        
        else if phoneNum.count < 11 || phoneNum.count > 14 {
            let alert = UIAlertController(title: "One moment!", message: "Enter a valid Phone number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            }
        else if phoneNum.isValidNumber == false{
            let alert = UIAlertController(title: "One moment!", message: "Enter a valid phone number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else{
            
        func LoginPls() {
            let parameters = ["email": email, "password": password,"firstName":firstname,"lastName":lastname,"phoneNumber":phoneNum] as [String : Any]
            
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
                    print(json)
                    
                    if let httpResponse = response as? HTTPURLResponse {
                        print(" \(httpResponse.statusCode)")
                    }
                    }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
    LoginPls()
            buttonTapped()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeHideKeyboard()
    }
}


