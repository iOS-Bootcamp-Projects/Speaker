//
//  ViewController.swift
//  Speaker
//
//  Created by Aamer Essa on 20/12/2022.
//

import Cocoa

class ViewController: NSViewController {

    let speaker = NSSpeechSynthesizer()
    @IBOutlet weak var value: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        ///speaker.delegate = self
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func speak(_ sender: Any) {
        speaker.startSpeaking(value.stringValue)
        speaker.rate = 0.28
       
    }
    
    @IBAction func stop(_ sender: Any) {
        speaker.stopSpeaking()
    }
}

