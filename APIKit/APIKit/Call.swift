//
//  Call.swift
//  APIKit
//
//  Created by Jeevan Thandi on 16/06/2019.
//  Copyright © 2019 Airla Tech Ltd. All rights reserved.
//

import Foundation

public protocol Call {
    associatedtype ResponseType: APIModel
    func execute(callback: @escaping APIKitCallback<ResponseType>)
    func observable(pollTime: Int) -> Observable<ResponseType>
}
