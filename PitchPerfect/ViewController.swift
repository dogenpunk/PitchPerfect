//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Matthew Nelson on 11/5/16.
//  Copyright © 2016 Matthew Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in progress..."
        recordingButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }

    @IBAction func stopRecording(_ sender: Any) {
        recordingButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }

    override func viewWillAppear(_ animated: Bool) {
        stopRecordingButton.isEnabled = false
    }
}

