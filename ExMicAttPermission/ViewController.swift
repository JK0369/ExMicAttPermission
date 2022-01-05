//
//  ViewController.swift
//  ExMicAttPermission
//
//  Created by Jake.K on 2022/01/05.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
  
  private let disposeBag = DisposeBag()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func didTapMicPermissionButton(_ sender: Any) {
    MicPermissionManager.shared.requestMic()
      .bind { print($0) }
      .disposed(by: self.disposeBag)
  }
  
  @IBAction func didTapATTPermissionButton(_ sender: Any) {
    ATTPermissionManager.shared.requestATT()
      .bind { print($0) }
      .disposed(by: self.disposeBag)
  }
}

