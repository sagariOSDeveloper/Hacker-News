//
//  WebView.swift
//  H4X0R News
//
//  Created by Sagar Baloch on 26/04/2020.
//  Copyright © 2020 Sagar Baloch. All rights reserved.
//
import SwiftUI
import WebKit

struct webView: UIViewRepresentable {
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeurl = urlString{
            if let url=URL(string: safeurl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
