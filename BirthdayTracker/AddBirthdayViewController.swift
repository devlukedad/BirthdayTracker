import UIKit
import CoreData

protocol AddBirthdayViewControllerDelegate {
    func addBirthdayViewController(didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    
    // Luke Kollen is cool
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    @IBAction func saveTapped(_ sender: Any) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        let myBirthday = Birthday(firstName: firstName, lastName: lastName, birthDate: birthdate)
        delegate?.addBirthdayViewController(didAddBirthday: myBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
    }

}


