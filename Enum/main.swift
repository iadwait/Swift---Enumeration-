//  main.swift
//  Enum
//  Created by Adwait Barkale on 31/07/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//
import Foundation
enum SocialPlatform:String,CaseIterable{
    case twitter = "Print RawValue for Twitter"
    case facebook = "Print Raw Value for Facebook"
    case instagram = "Print Raw Value for Instagram"
    case linkedIn = "Print Raw Value for Linked In"
}
func shareImage(on platform:SocialPlatform){
    switch platform{
    case .twitter:
        print("Code to share Image on Twitter")
    case .facebook:
        print("Code to share Image on Facebook")
    case .instagram:
        print("Code to share Image on Instagram")
    case .linkedIn:
        print("Code to share Image on LinkedIn")
    }
}
shareImage(on: .linkedIn)
//Raw Value
func getRawValue(of platform:SocialPlatform){
    
    let Value = platform.rawValue
    print(Value)
}
getRawValue(of: .twitter)
//Case Iterable Protocol
print(SocialPlatform.allCases.count)

for platform in SocialPlatform.allCases{
    print(platform.rawValue)
}

//Enum with Associated Values

enum socialMediaPlatform{
    
    case twitter(followers: Int)
    case youtube(subscribers: Int)
    case instagram
    case linkedIn
    
}

func getSponsorShipEligibility(for platform:socialMediaPlatform)
{
    switch platform{
        

    case .twitter(let followers) where followers > 10000 && followers < 80000:
       print("Elligible - Twitter")
    case .youtube(let subscribers)where subscribers > 25000:
        print("Eligible - Youtube")
    case .instagram,.linkedIn,.twitter,.youtube:
        print("Not Eligible for Sponsorship")
    }
}

getSponsorShipEligibility(for: .youtube(subscribers: 1000))

