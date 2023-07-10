//
//  ViewController.swift
//  hw13
//
//  Created by Dastan on 10.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - State
    
    private var settings: [[Setting]]?
    let spacing: CGFloat = 60.0
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - UI
    
    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(BaseTableViewCell.self, forCellReuseIdentifier: "baseCell")
        tableView.register(DetailTableViewCell.self, forCellReuseIdentifier: "withDetail")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "withSwitch")
        tableView.register(BadgeTableViewCell.self, forCellReuseIdentifier: "withBadge")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 50
        return tableView
    }()
    
    
    // MARK: - Setup
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    // MARK: - Actions

}

