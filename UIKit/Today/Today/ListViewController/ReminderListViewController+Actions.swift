//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by 준우의 MacBook 16 on 12/6/23.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
