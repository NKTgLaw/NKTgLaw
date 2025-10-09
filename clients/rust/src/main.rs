use nktg_law::NKTgClient;

fn main() {
    let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);
    println!("Momentum: {}", client.momentum());
    println!("NKTg₁: {}", client.nktg1());
    println!("NKTg₂: {}", client.nktg2());
}
