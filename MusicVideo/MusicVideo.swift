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
    private  var _vRights : String
    private var _vPrice : String
    private var _vArtist  : String
    private var  _vImid : String
    private var _vGenre : String
    private var _vLinkToiTunes : String
    private var _vReleaseDte : String
    
    var vImageData : NSData?
    
    
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
    var vRights : String {
        
        return _vRights
    }
    var vPrice : String {
        
        return _vPrice
    }
    var vArtist : String {
        
        return _vArtist
    }
    var vImid : String {
        
        return _vImid
    }
    var vGenre : String {
        
        return _vGenre
    }
    var vLinkToiTunes : String {
        
        return _vLinkToiTunes
    }
    var vReleaseDte : String {
        
        return _vReleaseDte
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
        
        if let rights = data["rights"] as? JSONDictionary , vRights = rights["label"] as? String {
            
            self._vRights = vRights
        }
        else{
            self._vRights = ""
        }
        
        if  let a = data["im:price"] as? JSONDictionary , vPrice = a["label"] as? String
            {
            self._vPrice = vPrice
        }
        else {
            self._vPrice = ""
        }
       
        if let artist = data["im:artist"] as? JSONDictionary , vArtist = artist["label"] as? String {
            self._vArtist = vArtist
            
        }
        else {
            self._vArtist = ""
        }
        
        if let a = data["id"] as? JSONDictionary , b = a["attributes"] as? JSONDictionary , vImid = b["im:id"] as? String {
            self._vImid = vImid
        }
        else {
            self._vImid = ""
        }
        
        if  let a = data["category"] as? JSONDictionary , b = a["attributes"] as? JSONDictionary , vGenre = b["term"] as? String {
         
            self._vGenre = vGenre
        }
        else {
            self._vGenre = ""
        }
        if let a = data["link"] as? JSONArray , b = a[0] as? JSONDictionary , c = b["attributes"] as? JSONDictionary , vLinkToiTunes = c["href"] as? String {
            self._vLinkToiTunes = vLinkToiTunes
        }
        else {
            self._vLinkToiTunes = ""
        }
        
        
        if let a = data["im:releaseDate"] as? JSONDictionary , b = a["attributes"] as? JSONDictionary , vReleaseDte = b["label"] as? String {
            self._vReleaseDte = vReleaseDte
        }
        else {
            self._vReleaseDte = ""
        }
        
    }
 }