#![no_std]

#[unsafe(no_mangle)]
pub fn mul(left: u64, mut right: u64) -> u64 {
    let mut x = 0;
    while right != 0 {
        x = x::add(x, left);
        right -= 1;
    }
    x
}

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}