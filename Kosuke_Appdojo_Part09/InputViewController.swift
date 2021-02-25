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

    // セグエが実行される前に呼ばれるメソッド
    // 引数senderはセグエを開始したオブジェクト
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // senderをUIButtonにキャストできた場合（キャンセルボタンはできない）
        if let selectedButton = sender as? UIButton {
            prefectureName = selectedButton.titleLabel!.text!
        }
    }
}
