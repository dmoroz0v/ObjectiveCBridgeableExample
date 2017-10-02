//
//  ModelA.swift
//  TestReferenceConvertible
//
//  Created by Denis Morozov on 30.09.17.
//  Copyright © 2017 Denis Morozov. All rights reserved.
//

import Foundation

struct ModelA
{
	var s: String
	
	init(s: String)
	{
		self.s = s
	}
}

extension ModelA : _ObjectiveCBridgeable
{
	typealias _ObjectiveCType = DMZModelA
	
	static func _unconditionallyBridgeFromObjectiveC(_ source: DMZModelA?) -> ModelA {
		return ModelA(s: source!.s)
	}

	@discardableResult
	static func _conditionallyBridgeFromObjectiveC(_ source: DMZModelA, result: inout ModelA?) -> Bool {
		result = ModelA(s: source.s)
		return true
	}
	static func _forceBridgeFromObjectiveC(_ source: DMZModelA, result: inout ModelA?) {
		result = ModelA(s: source.s)
	}
	
	public static func _isBridgedToObjectiveC() -> Bool {
		return true
	}
	
	public static func _getObjectiveCType() -> Any.Type {
		return _ObjectiveCType.self
	}
	
	public func _bridgeToObjectiveC() -> _ObjectiveCType {
		return DMZModelA(s: self.s)
	}
}
