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



// UIPickerView


import UIKit

class ViewController: UIViewController {
    
    var uiElements = ["UILabel", "UITextField", "UIDatePicker", "UISwitchLabel", "UIButton"]
    
    var selectedElement: String?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.numberOfLines = 5
        datePicker.locale = Locale(identifier: "ru_RU")
        
        choiceUiElement()
        createToolbar()
    }
    
    func hideAllelements() {
        
        label.isHidden = true
        datePicker.isHidden = true
        doneButton.isHidden = true
        
    }
    
    func choiceUiElement() {
        
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        textField.inputView = elementPicker
        
        // customize
        
        elementPicker.backgroundColor = .brown
        
    }
    
    func createToolbar(){
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissKeyboard))
        
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolbar
        
        // customize
        
        toolbar.tintColor = .white
        toolbar.barTintColor = .brown
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return uiElements.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return uiElements[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedElement = uiElements[row]
        textField.text = selectedElement
        
        switch row {
        case 0:
            hideAllelements()
            label.isHidden = false
        case 1:
            hideAllelements()
        case 2:
            hideAllelements()
            datePicker.isHidden = false
        case 3:
            hideAllelements()
            switchLabel.isHidden = false
        case 4 :
            hideAllelements()
            doneButton.isHidden = false
        default:
            hideAllelements()
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var pickerViewLabel = UILabel()
        
        if let currentLabel = view as? UILabel {
            pickerViewLabel = currentLabel
        } else {
            pickerViewLabel = UILabel()
        }
        
        pickerViewLabel.textColor = .white
        pickerViewLabel.textAlignment = .center
        pickerViewLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 23)
        pickerViewLabel.text = uiElements[row]
        
        return pickerViewLabel
        
    }
    
}


// UITextView

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView.text = ""
        
        textView.delegate = self
        textView.layer.cornerRadius = 10
        
    }
    
    // скрытие клавиатуры по тапу за пределами textview
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true) // скрыть клавиатуру, вызванную для любого объекта
        
        // textView.resignFirstResponder() // скрыть клавиатуру, вызванную для конкретного объекта
    }
    
}

extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) { // срабатывает при тапе на textview
        textView.backgroundColor = .gray
        textView.textColor = .white
    }
    
    func textViewDidEndEditing(_ textView: UITextView) { // срабатывает при тапе за пределы textview (окончание работы)
        textView.backgroundColor = self.view.backgroundColor
        textView.textColor = .black
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        countLabel.text = "\(textView.text.count)"
        return textView.text.count + (text.count - range.length) <= 60
    }
}




