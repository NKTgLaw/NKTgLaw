use nktg_law::NKTgClient;

fn main() {
    // Khởi tạo client: x=2.0, v=3.0, m=5.0, dm_dt=0.1
    let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);

    println!("Momentum: {}", client.momentum()); // Output: 15.0
    println!("NKTg₁: {}", client.nktg1());        // Output: 30.0 (x * p)
    println!("NKTg₂: {}", client.nktg2());        // Output: 1.5  (dm_dt * p)
}
