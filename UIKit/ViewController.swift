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

//  ButtonLabel - 2


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Clear ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hello, world!"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hi there!"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
        
    }
    
}



// UISlider

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        
        label.text = String(slider.value)
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 5
        
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "the first segment is selected"
            label.textColor = .red
        case 1:
            label.text = "the second segment is selected"
            label.textColor = .blue
        case 2:
            label.text = "the third segment is selected"
            label.textColor = .yellow
        default:
            print("smth wrong!")
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        label.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
    
    
}



// UITextField

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            let alert = UIAlertController(title: "wrong format", message: "please enter your name", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil )
        } else {
            label.text = textField.text
            textField.text = nil
        }
        
        
    }
    
}



// UIScrollView, UIDatePicker

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.numberOfLines = 5
        datePicker.locale = Locale(identifier: "ru_RU")
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            let alert = UIAlertController(title: "wrong format", message: "please enter your name", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil )
        } else {
            label.text = textField.text
            textField.text = nil
        }
        
        
    }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        let dateValue = dateFormatter.string(from: sender.date)
        
        label.text = dateValue
    }
    
    
}


// UISwitch - choice on/off

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.numberOfLines = 5
        datePicker.locale = Locale(identifier: "ru_RU")
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            let alert = UIAlertController(title: "wrong format", message: "please enter your name", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil )
        } else {
            label.text = textField.text
            textField.text = nil
        }
        
        
    }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        let dateValue = dateFormatter.string(from: sender.date)
        
        label.text = dateValue
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        label.isHidden = !label.isHidden
        textField.isHidden = !textField.isHidden
        datePicker.isHidden = !datePicker.isHidden
        doneButton.isHidden = !doneButton .isHidden
        
        if sender.isOn {
            switchLabel.text = "отобразить все элементы"
        } else {
            switchLabel.text = "скрыть все элементы"
        }
    }
    
    
}
