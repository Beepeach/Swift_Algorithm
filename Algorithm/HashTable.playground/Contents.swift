import UIKit

// MARK: - HashTable
// Swift에서 hash값을 리턴해주는 메서드는 뭐가 있을까??

var hasher = Hasher()
hasher.combine("Beepeach")
hasher.finalize()
