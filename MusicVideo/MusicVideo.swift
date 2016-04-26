//
//  MusicVideo.swift
//  MusicVideo
//
//  Created by Bandi Anirudh on 26/04/16.
//  Copyright © 2016 Xlabs. All rights reserved.
//

import Foundation


class Videos {
    
    
    //Data Ecnpsulation
    private var _vName : String
    private var _vImageUrl : String
    private var _vVideoUrl : String
    
    
    //make getters
    var vName: String {
        return _vName
    }
    
    var vImageUrl : String {
        return _vImageUrl
    }
    
    var vVideoUrl : String {
        
        return _vVideoUrl
    }
    
    
    
    init(data : JSONDictionary) {
        
        
        if let name = data["im:name"] as?  JSONDictionary, vName = name["label"] as? String {
            
            self._vName = vName
        }
        
        else {
            self._vName = ""
        }
        
        if let imag = data["im:image"] as? JSONArray , image = imag[2] as? JSONDictionary , vImageUrl = image["label"] as? String {
            
            self._vImageUrl = vImageUrl.stringByReplacingOccurrencesOfString("100x100", withString: "600x600")
        }
        
        else {
            self._vImageUrl = ""
        }
        
        
        if let video = data["link"] as? JSONArray  , vUrl = video[1] as? JSONDictionary , vHref = vUrl["attributes"] as? JSONDictionary , vVideoUrl = vHref["href"] as? String {
            self._vVideoUrl = vVideoUrl
        }
        
        else {
            
            self._vVideoUrl = ""
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}