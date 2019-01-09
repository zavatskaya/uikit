// ButtonLabel - 1

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textColor = .red
        
        button.setTitle("Get result", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .green
        
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        if label.isHidden {
            
            label.isHidden = false
            label.text = "Hello, world!"
            button.setTitle("Clear", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .red
            
        } else {
            
            label.isHidden = true
            button.setTitle("Get result", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
            
        }
    }
    
}
