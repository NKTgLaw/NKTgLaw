use std::time::Instant;
use nktg_law::NKTgClient;

fn main() {
    let start = Instant::now();
    for _ in 0..100_000 {
        let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);
        client.momentum();
        client.nktg1();
        client.nktg2();
    }
    let duration = start.elapsed();
    println!("Executed 100,000 iterations in {:?}", duration);
}
