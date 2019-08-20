//
//  TextSizeSliderViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Levi Davis on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class TextSizeSliderViewController: UIViewController {

    var fontModel = Font()
    var delegate: SizeDelegate?
    
    @IBOutlet weak var movieFontSizeSlider: UISlider!
    
    @IBOutlet weak var movieFontSizeStepper: UIStepper!
    
    @IBOutlet weak var fontSizeDisplayLabel: UILabel!
    
    @IBAction func fontSizeSliderAction(_ sender: UISlider) {
        fontModel.changeSize(fontSize: CGFloat(sender.value))
        updateFontSize()
        movieFontSizeStepper.value = Double(sender.value)
    }
    
    @IBAction func fontSizeStepperAction(_ sender: UIStepper) {
        fontModel.changeSize(fontSize: CGFloat(sender.value))
        updateFontSize()
        movieFontSizeSlider.value = Float(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontSizeDisplayLabel.font = fontSizeDisplayLabel.font.withSize(fontModel.getFontSize())

        // Do any additional setup after loading the view.
    }
    
    private func updateFontSize() {
        self.fontSizeDisplayLabel.font = fontSizeDisplayLabel.font.withSize(CGFloat(fontModel.getFontSize()))
            delegate?.getFontSize(fontSize: CGFloat(fontModel.getFontSize()))
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
