//
//  ViewController.swift
//  Kosuke_Appdojo_Part09
//
//  Created by Kosuke Nagao on 2021/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!

    @IBAction func exit(segue: UIStoryboardSegue) {

        // 遷移先ViewControllerを取得
        let inputViewController = segue.source as! InputViewController

        //　遷移先ViewControllerの県名が設定されている場合のみラベルを更新する
        if let prefectureName = inputViewController.prefectureName {
            label.text = prefectureName
        }
    }
}

