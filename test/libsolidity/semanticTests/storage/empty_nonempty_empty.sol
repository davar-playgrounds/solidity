contract Test {
    bytes x;
    function set(bytes memory _a) public { x = _a; }
}
// ====
// compileViaYul: also
// ----
// set(bytes): 0x20, 3, "abc"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 0
// storage.isEmpty -> bool.True
// set(bytes): 0x20, 31, "1234567890123456789012345678901"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 36, "12345678901234567890123456789012", "XXXX"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 3, "abc"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 0
// storage.isEmpty -> bool.True
// set(bytes): 0x20, 3, "abc"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 36, "12345678901234567890123456789012", "XXXX"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 0
// storage.isEmpty -> bool.True
// set(bytes): 0x20, 66, "12345678901234567890123456789012", "12345678901234567890123456789012", "12"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 3, "abc"
// storage.isEmpty -> bool.False
// set(bytes): 0x20, 0
// storage.isEmpty -> bool.True
