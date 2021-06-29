

import UIKit

class SuccessfullySignedUpViewController: UIViewController {
    
    @objc func buttonTapped(sender: UIButton){
        let newViewController = LogInViewController()
        newViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(newViewController, animated: true)
        navigationItem.backButtonTitle = ""
    }
    
    var bgImg: UIImageView!
    var bigLbl: UILabel!
    var smallLbl: UILabel!
    var exploreBtn: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        bgImg = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(named: "bg.png")
            image.contentMode = .scaleAspectFit
            return image
        }()
        view.addSubview(bgImg)
        
        let successView = UIView()
        successView.backgroundColor = .none
        successView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(successView)
    
        bigLbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.boldSystemFont(ofSize: 40)
            label.text = "You're all set!"
            label.textColor = #colorLiteral(red: 0.1457099617, green: 0.2209058106, blue: 0.3454180062, alpha: 1)
            return label
        }()
        successView.addSubview(bigLbl)
        
        smallLbl = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18)
            label.text = "Welcome to the family!"
            label.textColor = #colorLiteral(red: 0.4835544229, green: 0.5586961508, blue: 0.6792231202, alpha: 1)
            return label
        }()
        successView.addSubview(smallLbl)
        
        exploreBtn = {
            let btn = UIButton(type: .system)
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setTitle("EXPLORE COWRYWISE", for: .normal)
            btn.titleLabel?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            btn.backgroundColor = #colorLiteral(red: 0.0007414481952, green: 0.4018212557, blue: 0.9559082389, alpha: 1)
            btn.layer.cornerRadius = 5
            btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            return btn
        }()
        successView.addSubview(exploreBtn)
        
        
        
        NSLayoutConstraint.activate([
            
            bgImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bgImg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgImg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgImg.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgImg.widthAnchor.constraint(equalTo: view.widthAnchor),
            bgImg.heightAnchor.constraint(equalTo: view.heightAnchor),
            
            successView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            successView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -50),
            successView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15),
            successView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15),
            
            bigLbl.topAnchor.constraint(equalTo: successView.topAnchor),
            bigLbl.leadingAnchor.constraint(equalTo: successView.leadingAnchor),
            
            smallLbl.topAnchor.constraint(equalTo: bigLbl.bottomAnchor, constant: 20),
            smallLbl.leadingAnchor.constraint(equalTo: successView.leadingAnchor),
            
            exploreBtn.topAnchor.constraint(equalTo: smallLbl.bottomAnchor, constant: 50),
            exploreBtn.leadingAnchor.constraint(equalTo: successView.leadingAnchor),
            exploreBtn.trailingAnchor.constraint(equalTo: successView.trailingAnchor),
            exploreBtn.heightAnchor.constraint(equalToConstant: 50)

        ])
        
        
        
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
}
