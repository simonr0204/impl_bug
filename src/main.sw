contract;

dep increment;



// Importing the trait by name causes `No method named "increment" found for type "u64".`
use increment::Increment;

// Global import compiles with no problems
//use increment::*;



abi MyContract {
    fn test_function();
}

impl MyContract for Contract {
    fn test_function() {
        let a = 1; 
        let b = a.increment();
        assert(b == 2);        
    }
}
