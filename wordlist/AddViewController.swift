//
//  AddViewController.swift
//  wordlist
//
//  Created by 豪山本 on 2016/06/10.
//  Copyright © 2016年 山本豪. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var englishTextField:UITextField!
    @IBOutlet var japanesetextField:UITextField!
    
    var wordArray :[AnyObject]=[]
    let saveData = NSUserDefaults.standardUserDefaults()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if saveData.arrayForKey("WORD") != nil{
            wordArray=saveData.arrayForKey("WORD")!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveWord(){
        let wordDictionary =
            ["english":englishTextField.text,"japanese":japanesetextField.text]
        
        
        saveData.setObject(wordArray, forKey:"WORD")
         let alert = UIAlertController(
        title: "保存完了",
        message: "単語登録ができました",
        preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title:"OK",style:UIAlertActionStyle.Default,handler: nil))
        self.presentViewController(alert,animated: true,completion: nil)
        englishTextField.text=""
        japanesetextField.text=""
    }
    /*
    // MARK: - Navigation

     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
