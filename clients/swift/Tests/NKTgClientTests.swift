import XCTest
@testable import NKTgLaw

final class NKTgClientTests: XCTestCase {
    func testNKTg1() {
        let client = NKTgClient(x: 2.0, v: 3.0, m: 5.0, dmDt: 0.1)
        XCTAssertEqual(client.nktg1(), 15.2, accuracy: 1e-6)
    }

    func testNKTg2() {
        let client = NKTgClient(x: 2.0, v: 3.0, m: 5.0, dmDt: 0.1)
        XCTAssertEqual(client.nktg2(), 3.04, accuracy: 1e-6)
    }
}
