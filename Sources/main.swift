import AppKit

let pb = NSPasteboard.general
if let data = pb.string(forType: .string)?.precomposedStringWithCanonicalMapping
    .data(using: .utf8)
{
    pb.clearContents()
    pb.setData(data, forType: .string)
}
