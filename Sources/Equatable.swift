
import Jay

extension JSON: Equatable { }
public func ==(lhs: JSON, rhs: JSON) -> Bool {
    switch (lhs, rhs) {
    case (.null, .null): return true
    case (.boolean(let l), .boolean(let r)): return l == r
    case (.string(let l), .string(let r)): return l == r
    case (.array(let l), .array(let r)): return l == r
    case (.object(let l), .object(let r)): return l == r
    case (.number(let l), .number(let r)):
        switch (l, r) {
        case (.integer(let ll), .integer(let rr)): return ll == rr
        case (.unsignedInteger(let ll), .unsignedInteger(let rr)): return ll == rr
        case (.double(let ll), .double(let rr)): return ll == rr
        default: return false
        }
    default: return false
    }
}
