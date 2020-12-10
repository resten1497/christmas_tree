fn trapezoid(width: usize, height: usize, offset: usize) {
    for i in 0..height {
        let off = offset + height - i - 1;
        println!("{}{}", " ".repeat(off), "*".repeat(width + 2 * i));
    }
}

fn main() {
    println!("     *");
    trapezoid(3, 3, 2);
    trapezoid(5, 3, 1);
    trapezoid(7, 3, 0);

    for _ in 0..3 {
        println!("     *");
    }
}
