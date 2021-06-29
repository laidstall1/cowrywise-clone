
import UIKit

class ProfilePageViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadProfile()
        
    }
    
    var profileSegCtrl: UISegmentedControl!
    var profileImg: UIImageView!
    var profileImgBtn: UIButton!
    var firstNameTxtField: UITextField!
    var lastNameTxtField: UITextField!
    var usernameTxtField: UITextField!
    var genderTxtField: UITextField!
    var dOBTxtField: UITextField!
    var nextOfKin: UITextField!
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        switch sender.selectedSegmentIndex {
              case 1:
                self.view.backgroundColor = UIColor.green
              case 2:
                  self.view.backgroundColor = UIColor.blue
            default:
                self.view.backgroundColor = UIColor.white
                
        }
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        profileSegCtrl = {
            let segmentedCtrl = UISegmentedControl(items: ["Personal","Security","Behaviour"])
            segmentedCtrl.frame = CGRect(x: 30, y: 85, width: 300, height: 40)
            segmentedCtrl.selectedSegmentIndex = 0
            segmentedCtrl.tintColor = UIColor.blue
            segmentedCtrl.backgroundColor = #colorLiteral(red: 0.9496283531, green: 0.9496283531, blue: 0.9496283531, alpha: 1)
            segmentedCtrl.addTarget(self, action: #selector(segmentedValueChanged(_:)), for: .valueChanged)
            let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBlue]
            segmentedCtrl.setTitleTextAttributes(titleTextAttributes, for: .selected)
            return segmentedCtrl
            }()
        view.addSubview(profileSegCtrl)
            
            
        profileImg = {
            let img = UIImageView()
            img.image = UIImage(named: "10.jpeg")
            img.translatesAutoresizingMaskIntoConstraints = false
            img.contentMode = .scaleAspectFit
            return img
        }()
        profileImg.layer.cornerRadius = 60
        profileImg.clipsToBounds = true
        view.addSubview(profileImg)
        
        profileImgBtn = {
            let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle("Tap to change picture", for: .normal)
            btn.titleLabel?.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.9021300266)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
//            btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            return btn
        }()
        view.addSubview(profileImgBtn)
        
        //MARK:- Firstname
        let fnameView = UIView()
        fnameView.translatesAutoresizingMaskIntoConstraints = false
        fnameView.backgroundColor = .white
        view.addSubview(fnameView)
        
        let fnameLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Firstname"
            label.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            return label
        }()
        fnameView.addSubview(fnameLbl)
        
        firstNameTxtField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "aries"
            textField.textColor = #colorLiteral(red: 0.1293928623, green: 0.1294226646, blue: 0.1293909252, alpha: 0.7743048417)
            textField.textAlignment = .right
            return textField
        }()
        fnameView.addSubview(firstNameTxtField)
        
        //MARK:- LastName
        let lnameView = UIView()
        lnameView.translatesAutoresizingMaskIntoConstraints = false
        lnameView.backgroundColor  = .white
        view.addSubview(lnameView)

        let lnameLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Lastname"
            label.textColor = #colorLiteral(red: 0.1255433261, green: 0.2088746727, blue: 0.3416858315, alpha: 1)
            return label
        }()
        lnameView.addSubview(lnameLbl)

        lastNameTxtField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            textField.placeholder = "prime"
            textField.textAlignment = .right
            return textField
        }()
        lnameView.addSubview(lastNameTxtField)

        //MARK:- Username
        let usernameView = UIView()
        usernameView.translatesAutoresizingMaskIntoConstraints = false
        usernameView.backgroundColor = .white
        view.addSubview(usernameView)

        let usernameLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Username"
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            return label
        }()
        usernameView.addSubview(usernameLbl)

        usernameTxtField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            textField.placeholder = "@user618710"
            textField.textAlignment = .right
            return textField
        }()
        usernameView.addSubview(usernameTxtField)

        //MARK:- Gender

        let genderView = UIView()
        genderView.translatesAutoresizingMaskIntoConstraints = false
        genderView.backgroundColor = .white
        view.addSubview(genderView)

        let genderLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Gender"
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            return label
        }()
        genderView.addSubview(genderLbl)

        genderTxtField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            textField.placeholder = "Gender"
            textField.textAlignment = .right
            return textField
        }()
        genderView.addSubview(genderTxtField)

        //MARK:- Date Of Birth

        let dOBView = UIView()
        dOBView.translatesAutoresizingMaskIntoConstraints = false
        dOBView.backgroundColor = .white
        view.addSubview(dOBView)

        let dOBLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Date of birth"
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            return label
        }()
        dOBView.addSubview(dOBLbl)

        dOBTxtField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            textField.placeholder = "Date of birth"
            textField.textAlignment = .right
            return textField
        }()
        dOBView.addSubview(dOBTxtField)

        //MARK:- Next of Kin

        let nextOfKinView = UIView()
        nextOfKinView.translatesAutoresizingMaskIntoConstraints = false
        nextOfKinView.backgroundColor = .white
        view.addSubview(nextOfKinView)

        let nextOfKinLbl:UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Next of kin"
            label.textColor = #colorLiteral(red: 0.006734329741, green: 0.1692162752, blue: 0.4105626345, alpha: 1)
            return label
        }()
        nextOfKinView.addSubview(nextOfKinLbl)

        nextOfKin = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.textColor = #colorLiteral(red: 0.1458545029, green: 0.2168396115, blue: 0.3454866707, alpha: 1)
            textField.textAlignment = .right
            textField.placeholder = ">"
            return textField
        }()
        nextOfKinView.addSubview(nextOfKin)

        
        NSLayoutConstraint.activate([
            profileSegCtrl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileSegCtrl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            profileImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            profileImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImg.heightAnchor.constraint(equalToConstant: 120),
            profileImg.widthAnchor.constraint(equalToConstant: 120),
            
            profileImgBtn.topAnchor.constraint(equalTo: profileImg.bottomAnchor, constant: 0),
            profileImgBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            fnameView.topAnchor.constraint(equalTo: profileImgBtn.bottomAnchor, constant: 20),
            fnameView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            fnameView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            fnameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            fnameLbl.leadingAnchor.constraint(equalTo: fnameView.leadingAnchor),
            fnameLbl.topAnchor.constraint(equalTo: fnameView.topAnchor),
            fnameLbl.widthAnchor.constraint(equalTo: fnameView.widthAnchor, multiplier: 0.3),
            
            firstNameTxtField.topAnchor.constraint(equalTo: fnameView.topAnchor),
            firstNameTxtField.leadingAnchor.constraint(equalTo: fnameLbl.trailingAnchor),
            firstNameTxtField.widthAnchor.constraint(equalTo: fnameView.widthAnchor, multiplier: 0.7),
            
            lnameView.topAnchor.constraint(equalTo: fnameView.bottomAnchor, constant: 10),
            lnameView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            lnameView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            lnameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            lnameLbl.leadingAnchor.constraint(equalTo: lnameView.leadingAnchor),
            lnameLbl.topAnchor.constraint(equalTo: lnameView.topAnchor),
            lnameLbl.widthAnchor.constraint(equalTo: lnameView.widthAnchor, multiplier: 0.3),
            
            lastNameTxtField.topAnchor.constraint(equalTo: lnameView.topAnchor),
            lastNameTxtField.leadingAnchor.constraint(equalTo: lnameLbl.trailingAnchor, constant: 0),
            lastNameTxtField.widthAnchor.constraint(equalTo: lnameView.widthAnchor, multiplier: 0.7),
            
            usernameView.topAnchor.constraint(equalTo: lnameView.bottomAnchor, constant: 10),
            usernameView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            usernameView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            usernameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            usernameLbl.leadingAnchor.constraint(equalTo: usernameView.leadingAnchor),
            usernameLbl.topAnchor.constraint(equalTo: usernameView.topAnchor),
            usernameLbl.widthAnchor.constraint(equalTo: usernameView.widthAnchor, multiplier: 0.3),
            
            usernameTxtField.topAnchor.constraint(equalTo: usernameView.topAnchor),
            usernameTxtField.leadingAnchor.constraint(equalTo: usernameLbl.trailingAnchor, constant: 0),
            usernameTxtField.widthAnchor.constraint(equalTo: usernameView.widthAnchor, multiplier: 0.7),
            
            genderView.topAnchor.constraint(equalTo: usernameView.bottomAnchor, constant: 10),
            genderView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            genderView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            genderView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            genderLbl.leadingAnchor.constraint(equalTo: genderView.leadingAnchor),
            genderLbl.topAnchor.constraint(equalTo: genderView.topAnchor),
            genderLbl.widthAnchor.constraint(equalTo: genderView.widthAnchor, multiplier: 0.25),
            
            genderTxtField.topAnchor.constraint(equalTo: genderView.topAnchor),
            genderTxtField.leadingAnchor.constraint(equalTo: genderLbl.trailingAnchor, constant: 0),
            genderTxtField.widthAnchor.constraint(equalTo: genderView.widthAnchor, multiplier: 0.75),
            
            dOBView.topAnchor.constraint(equalTo: genderView.bottomAnchor, constant: 10),
            dOBView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            dOBView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            dOBView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            dOBLbl.leadingAnchor.constraint(equalTo: dOBView.leadingAnchor),
            dOBLbl.topAnchor.constraint(equalTo: dOBView.topAnchor),
            dOBLbl.widthAnchor.constraint(equalTo: dOBView.widthAnchor, multiplier: 0.35),
            
            dOBTxtField.topAnchor.constraint(equalTo: dOBView.topAnchor),
            dOBTxtField.leadingAnchor.constraint(equalTo: dOBLbl.trailingAnchor, constant: 0),
            dOBTxtField.widthAnchor.constraint(equalTo: dOBView.widthAnchor, multiplier: 0.65),
            
            nextOfKinView.topAnchor.constraint(equalTo: dOBView.bottomAnchor, constant: 10),
            nextOfKinView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            nextOfKinView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            nextOfKinView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            nextOfKinLbl.leadingAnchor.constraint(equalTo: nextOfKinView.leadingAnchor),
            nextOfKinLbl.topAnchor.constraint(equalTo: nextOfKinView.topAnchor),
            nextOfKinLbl.widthAnchor.constraint(equalTo: nextOfKinView.widthAnchor, multiplier: 0.3),
            
            nextOfKin.topAnchor.constraint(equalTo: nextOfKinView.topAnchor),
            nextOfKin.leadingAnchor.constraint(equalTo: nextOfKinLbl.trailingAnchor, constant: 0),
            nextOfKin.widthAnchor.constraint(equalTo: nextOfKinView.widthAnchor, multiplier: 0.7),
            
        ])
        
        
    }
    
    func loadProfile(){
        let url = "https://609908f199011f001713ffb0.mockapi.io/api/v1/profile/3"
        
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data,response,error in
            guard let data = data, error == nil else{
                print ("Something went wrong")
                return
            }
            print(data)
            
            var json:Profile?
            do{
                json = try JSONDecoder().decode(Profile.self, from: data)
            }
            catch{
                print("error:\(error)")
            }
            guard let result = json else {
                return
            }
            
            print(result)
            
            let firstname = result.firstName
            let lastname = result.lastName
            let username = result.userName
            let gender = result.gender
            let dob = result.dateOfBirth
            let nextOfKin = result.nextOfKin

            DispatchQueue.main.async {

                self.firstNameTxtField.text = firstname
                self.lastNameTxtField.text = lastname
                self.usernameTxtField.text = username
                self.dOBTxtField.text = dob
                self.nextOfKin.text =  nextOfKin
                if gender == true{
                    self.genderTxtField.text = "male"
                } else{
                    self.genderTxtField.text = "female"
                }
            }
        }).resume()
    }
    

    
}
