library increment;

pub trait Increment {
    fn increment(self) -> Self;
}

impl Increment for u64 {
    fn increment(self) -> Self {
        self + 1
    }
}