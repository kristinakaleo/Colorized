//
//  SettingsViewController.swift
//  HW 2
//
//  Created by Кристина on 20.10.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

override func viewDidLoad() {
    super.viewDidLoad()
    

    if let settingsViewController = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController {
        settingsViewController.delegate = self
        settingsViewController.modalPresentationStyle = .fullScreen // Настройте стиль презентации по вашему желанию
        present(settingsViewController, animated: false, completion: nil)
    }
}
