import Foundation

public struct TestSPM {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

// Re-export các class chính để dễ sử dụng
// Các class này sẽ được expose thông qua binary target kooling_sdk_sample
public typealias ActivityTracker = kooling_sdk_sample.ActivityTracker
public typealias DIContainer = kooling_sdk_sample.DIContainer
public typealias CoreDataService = kooling_sdk_sample.CoreDataService
public typealias Log = kooling_sdk_sample.Log
public typealias TrackLogger = kooling_sdk_sample.TrackLogger
public typealias NetworkRequest = kooling_sdk_sample.NetworkRequest
public typealias EmptyResponse = kooling_sdk_sample.EmptyResponse
public typealias LocationRequest = kooling_sdk_sample.LocationRequest
public typealias SendLocationRequest = kooling_sdk_sample.SendLocationRequest
public typealias SendStepsAndDistancesRequest = kooling_sdk_sample.SendStepsAndDistancesRequest
public typealias LocationEntity = kooling_sdk_sample.LocationEntity
public typealias StepsAndDistanceEntity = kooling_sdk_sample.StepsAndDistanceEntity
public typealias HttpMethod = kooling_sdk_sample.HttpMethod
public typealias ActivityTypeEntity = kooling_sdk_sample.ActivityTypeEntity
public typealias RegionOffset = kooling_sdk_sample.RegionOffset

// Re-export các global functions
public let trackLocationUseCase = kooling_sdk_sample.trackLocationUseCase
public let observeStepsAndDistanceUseCase = kooling_sdk_sample.observeStepsAndDistanceUseCase
public let syncrhonizeLocationUseCase = kooling_sdk_sample.syncrhonizeLocationUseCase
public let setupLog = kooling_sdk_sample.setupLog
