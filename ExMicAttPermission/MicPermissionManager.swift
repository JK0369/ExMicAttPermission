//
//  MicPermissionManager.swift
//  ExMicAttPermission
//
//  Created by Jake.K on 2022/01/05.
//

import RxSwift
import AVFoundation

class MicPermissionManager {
  static let shared = MicPermissionManager()
  private init() {}
  
  func requestMic() -> Observable<Bool> {
    Observable<Bool>.create { observable in
      AVAudioSession.sharedInstance().requestRecordPermission { isGranted in
        observable.onNext(isGranted)
        observable.onCompleted()
      }
      return Disposables.create()
    }
  }
}
