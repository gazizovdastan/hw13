//
//  SwitchTableViewCell.swift
//  hw13
//
//  Created by Dastan on 10.07.2023.
//

import Foundation
import UIKit
import SnapKit

class SwitchTableViewCell: UITableViewCell {
    
    var settingModel: Setting? {
        didSet {
            label.text = settingModel?.label
            iconImageView.image = settingModel?.icon
            iconImageView.backgroundColor = settingModel?.iconBackgroundColor
        }
    }
    
    // MARK: - UI
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.tintColor = .white
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var uiSwitch: UISwitch = {
        let uiSwitch = UISwitch(frame: .zero)
        return uiSwitch
    }()
}
