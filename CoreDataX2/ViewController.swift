
import UIKit
import CoreData


class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtfirstname: UITextField!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var txtLabel: UILabel!
    
    var itemArray = [NameEn]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
        
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        let newItem  = NameEn(context: self.context)
        newItem.firstname = txtfirstname.text
        newItem.lastname = txtField.text
        
        self.itemArray.append(newItem)
        do{
            try context.save()
            print("Save Context Successful")
        }catch{
            print("Error Cant save Context \(error)")
        }
        
    }
    
}

