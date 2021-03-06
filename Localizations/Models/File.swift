//
//  File.swift
//  Localizations
//
//  Created by Arnaud Thiercelin on 2/4/16.
//  Copyright © 2016 Arnaud Thiercelin. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software
//  and associated documentation files (the "Software"), to deal in the Software without restriction,
//  including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial
//  portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
//  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
//  OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import Cocoa

class File: NSObject {
	enum State {
		case New
		case Edit
		case Obselete
		case None
	}
	
	var state = State.None
	var name = ""
	var folder = ""
	var path = ""
	var rawContent = ""
	var translations = [Translation] ()

	var languageCode: String {
		get {
			let folderParts = folder.components(separatedBy: ".")
			
			if folderParts.count > 0 {
				return folderParts[0]
			}
			return ""
		}
	}
	
	override var description: String {
		get {
			return self.debugDescription
		}
	}
	
	override var debugDescription: String {
		get {
			return "Name: \(self.name)\n" +
			"Folder: \(self.folder)\n" +
			"Path: \(self.path)\n" +
			"State: \(self.state)\n"
		}
	}

}
