//
//  IPTacticianer.swift
//  Alamofire
//
//  Created by li zhi on 2022/9/22.
//  Copyright © 2022 Alamofire. All rights reserved.
//

import Foundation

///HongSong HttpDNS Protocol，EventMonitor use update IP recorder
public protocol IPTacticianer: EventMonitor {
    
    /// Replace the host  in request's url with IP, the IP is prepare
    /// - Parameter url: the request's url
    /// - Returns: if success return replace result's URL and orginal host, else return nil
    func replaceHost(url: URL) -> (URL, String)?
    
    /// Update the IP recorder with request result,  this use custom IP tactics
    /// - Parameters:
    ///   - domain: original host
    ///   - ip: request's IP
    ///   - success: the request success is true, Otherwise false
    func updateIPRecord(domain: String, ip: String, success:Bool)
}
