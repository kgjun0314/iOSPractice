import UIKit
import Lottie

class MainViewController: UIViewController {
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.text = "Main"
        
        return label
    }()
    
    let animationView: LottieAnimationView = {
        let animView = LottieAnimationView(name: "animation_lkwu66qv")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFit
        return animView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        animationView.play{ (finish) in
            print("End animation")
            self.animationView.removeFromSuperview()
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }
}

