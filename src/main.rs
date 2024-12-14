#![no_std]
#![no_main]

use core::panic::PanicInfo;
use core::arch::global_asm;
use core::include_str;



#[panic_handler]
fn phandler(_ : &PanicInfo<'_>) -> !{
  loop {
      
  }
}


#[no_mangle]
pub extern "C" fn kmain() -> !{
  let a = 2;
  let b = 5;
  let _c = a + b;
  
  panic!()
}

global_asm!(include_str!("boot.s"));