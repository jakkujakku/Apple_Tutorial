//
//  DatePickerContentView.swift
//  Today
//
//  Created by 준우의 MacBook 16 on 12/8/23.
//

import UIKit

class DatePickerContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        var date = Date.now
        var onChange: (Date) -> Void = { _ in }

        func makeContentView() -> UIView & UIContentView {
            return DatePickerContentView(self)
        }
    }

    let datePicker = UIDatePicker()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }

    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
        addPinnedSubview(datePicker)
        datePicker.preferredDatePickerStyle = .inline
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        datePicker.addTarget(self, action: #selector(didPick(_:)), for: .valueChanged)
        datePicker.date = configuration.date
    }
    
    @objc private func didPick(_ sender: UIDatePicker) {
        guard let configuration = configuration as? DatePickerContentView.Configuration else { return }
        configuration.onChange(sender.date)
    }
}

extension UICollectionViewListCell {
    func datePickerConfiguration() -> DatePickerContentView.Configuration {
        DatePickerContentView.Configuration()
    }
}
