//
//  InputViewController.swift
//  Kosuke_Appdojo_Part09
//
//  Created by Kosuke Nagao on 2021/02/22.
//

import UIKit

class InputViewController: UIViewController {
    // 選択されたボタンの県名を保持する
    private(set) var prefectureName: String?

    @IBAction private func cancel(_ sender: Any) {
        performSegue(withIdentifier: "Back", sender: sender)
    }

    @IBAction private func tokyo(_ sender: Any) {
        back(prefectureName: "東京都", sender: sender)
    }

    @IBAction private func kanagawa(_ sender: Any) {
        back(prefectureName: "神奈川県", sender: sender)
    }

    @IBAction private func saitama(_ sender: Any) {
        back(prefectureName: "埼玉県", sender: sender)
    }

    @IBAction private func chiba(_ sender: Any) {
        back(prefectureName: "千葉県", sender: sender)
    }

    private func back(prefectureName: String, sender: Any) {
        self.prefectureName = prefectureName
        performSegue(withIdentifier: "Back", sender: sender)
    }
}
