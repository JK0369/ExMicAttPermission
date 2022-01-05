//
//  ATTPermissionManager.swift
//  ExMicAttPermission
//
//  Created by Jake.K on 2022/01/05.
//

import RxSwift
import AppTrackingTransparency

class ATTPermissionManager {
  static let shared = ATTPermissionManager()
  private init() {}
  
  func requestATT() -> Observable<ATTrackingManager.AuthorizationStatus> {
    Observable<ATTrackingManager.AuthorizationStatus>.create { observable in
      ATTrackingManager.requestTrackingAuthorization { status in
        observable.onNext(status)
        observable.onCompleted()
      }
      return Disposables.create()
    }
  }
}
