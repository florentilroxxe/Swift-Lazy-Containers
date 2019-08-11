import XCTest
@testable import LazyContainers

final class LazyContainersTests: XCTestCase {
    
    @Lazy
    var lazyInitWithPropertyWrapper = "lAzy"
    
    var lazyInitTraditionally = Lazy(wrappedValue: "lazy B")
    
    @ResettableLazy
    var resettableLazyInitWithPropertyWrapper = "lazy C"
    
    var resettableLazyInitTraditionally = ResettableLazy(wrappedValue: "lazy D")
    
    @FunctionalLazy
    var functionalLazyInitWithPropertyWrapper = "lazy E"
    
    var functionalLazyInitTraditionally = FunctionalLazy(wrappedValue: "lazy F")
    

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    
    // MARK: - `Lazy`
    
    func testLazyInitWithPropertyWrapper() {
        XCTAssertFalse(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lAzy", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lAzy", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lAzy", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        
        lazyInitWithPropertyWrapper = "MAnual"
        
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("MAnual", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("MAnual", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("MAnual", lazyInitWithPropertyWrapper)
        XCTAssertTrue(_lazyInitWithPropertyWrapper.isInitialized)
    }
    
    
    func testLazyInitTraditionally() {
        XCTAssertFalse(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        
        lazyInitTraditionally.wrappedValue = "Manual B"
        
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual B", lazyInitTraditionally.wrappedValue)
        XCTAssertTrue(lazyInitTraditionally.isInitialized)
    }
    
    
    
    // MARK: - `ResettableLazy`
    
    func testResettableLazyInitWithPropertyWrapper() {
        XCTAssertFalse(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        
        resettableLazyInitWithPropertyWrapper = "Manual C"
        
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        
        _resettableLazyInitWithPropertyWrapper.clear()
        
        XCTAssertFalse(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy C", resettableLazyInitWithPropertyWrapper)
        XCTAssertTrue(_resettableLazyInitWithPropertyWrapper.isInitialized)
    }
    
    
    func testResettableLazyInitTraditionally() {
        XCTAssertFalse(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        
        resettableLazyInitTraditionally.wrappedValue = "Manual D"
        
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        
        resettableLazyInitTraditionally.clear()
        
        XCTAssertFalse(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy D", resettableLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(resettableLazyInitTraditionally.isInitialized)
    }
    
    
    
    // MARK: - `FuctionalLazy`
    
    func testFunctionalLazyInitWithPropertyWrapper() {
        XCTAssertFalse(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("lazy E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        
        functionalLazyInitWithPropertyWrapper = "Manual E"
        
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
        XCTAssertEqual("Manual E", functionalLazyInitWithPropertyWrapper)
        XCTAssertTrue(_functionalLazyInitWithPropertyWrapper.isInitialized)
    }
    
    
    func testFunctionalLazyInitTraditionally() {
        XCTAssertFalse(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("lazy F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        
        functionalLazyInitTraditionally.wrappedValue = "Manual F"
        
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
        XCTAssertEqual("Manual F", functionalLazyInitTraditionally.wrappedValue)
        XCTAssertTrue(functionalLazyInitTraditionally.isInitialized)
    }

    static var allTests = [
        ("testLazyInitWithPropertyWrapper", testLazyInitWithPropertyWrapper),
        ("testLazyInitTraditionally", testLazyInitTraditionally),
        
        ("testResettableLazyInitWithPropertyWrapper", testResettableLazyInitWithPropertyWrapper),
        ("testResettableLazyInitTraditionally", testResettableLazyInitTraditionally),
        
        ("testFunctionalLazyInitWithPropertyWrapper", testFunctionalLazyInitWithPropertyWrapper),
        ("testFunctionalLazyInitTraditionally", testFunctionalLazyInitTraditionally),
    ]
}
