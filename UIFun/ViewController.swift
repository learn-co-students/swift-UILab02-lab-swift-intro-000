import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func mixColors(first: String, second: String) -> UIColor {
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
    }

    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        let firstColorIndex  = firstColorSegmentedControl.selectedSegmentIndex
        let secondColorIndex = secondColorSegmentedControl.selectedSegmentIndex
        let firstColor       = colorForIndex(firstColorIndex)
        let secondColor      = colorForIndex(secondColorIndex)
        paintBucket.backgroundColor = mixColors(first: firstColor, second: secondColor)
    }

    func colorForIndex(_ index: Int) -> String {
        switch index {
        case 0:
            return "Red"
        case 1:
            return "Yellow"
        default:
            return "Blue"
        }
    }
}
