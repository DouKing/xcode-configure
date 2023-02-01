import Foundation

@main
public struct change_file_header {

    public static func main() {
		let args = CommandLine.arguments
		if args.count > 1 {
			let rootDir = args[1]
			let subDir = (try! FileManager.default.contentsOfDirectory(atPath: rootDir)).compactMap { name in
				var isDir: ObjCBool = false
				let path = "\(rootDir)/\(name)"
				if FileManager.default.fileExists(atPath: path, isDirectory: &isDir) && isDir.boolValue && name.hasSuffix("xctemplate") {
					return path
				}
				return nil
			}

			for dir in subDir {
				change(dir)
			}
		}		
    }
	
	private static func change(_ rootDir: String) {
		print(rootDir)
		let subDir = (try! FileManager.default.contentsOfDirectory(atPath: rootDir))
			.compactMap({ name in
				var isDir: ObjCBool = false
				let path = "\(rootDir)/\(name)"
				if FileManager.default.fileExists(atPath: path, isDirectory: &isDir) && isDir.boolValue && name.hasSuffix("Objective-C") {
					return path
				}
				return nil
			})

		for path in subDir {
			let items = (try! FileManager.default.contentsOfDirectory(atPath: path)).compactMap({ name in
				if name == "___FILEBASENAME___.h" || name == "___FILEBASENAME___.m" {
					return "\(path)/\(name)"
				}
				return nil
			})

			for file in items {
				let content = try! String(contentsOfFile: file)
				if content.hasPrefix("//___FILEHEADER___") {
					let newContent = content.replacingOccurrences(of: "//___FILEHEADER___", with: "//___FILEHEADEROBJC___")
					try? newContent.write(toFile: file, atomically: true, encoding: .utf8)
				}
			}
		}
	}
}
