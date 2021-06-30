//
//  FileService.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation

import Foundation

class File {

    let path: String
    let size: Int

    init(_ path: String,
         _ size: Int) {

        self.path = path
        self.size = size
    }
}

protocol IServiceFile: IService {

    func get(_ id: String) throws -> File
}

class ServiceFileImpl: IServiceFile {

    var name: String = "IServiceFile"

    func get(_ id: String) throws -> File {
        File("/Users/user/Documents/music/track_01.mp3", 777)
    }
}
