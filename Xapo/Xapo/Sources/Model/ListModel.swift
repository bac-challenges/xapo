//
//  ListModel.swift
//  Xapo
//
//  Created by emile on 13/04/2021.
//

import Combine

protocol ListModelType: ServiceInjected, JSONDecoderInjected {
    func get() -> AnyPublisher<[RemoteItem], Error>
}

struct ListModel: ListModelType {
    func get() -> AnyPublisher<[RemoteItem], Error> {
        return service.get(EndPoint.remote)
            .decode(type: [RemoteItem].self, decoder: jsonDecoder)
            .eraseToAnyPublisher()
    }
}

struct ListModelMock: ListModelType {
    func get() -> AnyPublisher<[RemoteItem], Error> {
        return service.get(EndPoint.mock)
            .decode(type: [RemoteItem].self, decoder: jsonDecoder)
            .eraseToAnyPublisher()
    }
}
