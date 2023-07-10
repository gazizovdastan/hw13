//
//  DetailViewController.swift
//  hw13
//
//  Created by Dastan on 10.07.2023.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {

    var settingModel: Setting?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    // MARK: - Setup

    func setupViews() {
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .systemGray
        title = settingModel?.label
    }
}
