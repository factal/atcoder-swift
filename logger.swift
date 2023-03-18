import Foundation


let startTime = Date()

let filePath = "./main"
let task = Process()
task.launchPath = filePath
try task.run()

task.waitUntilExit()

let elapsed = Date().timeIntervalSince(startTime)

print("Execution time: \(elapsed) s")