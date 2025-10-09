use nktg_law::NKTgClient;

#[test]
fn test_nktg1() {
    let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);
    let expected = 15.2;
    assert!((client.nktg1() - expected).abs() < 1e-6);
}

#[test]
fn test_nktg2() {
    let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);
    let expected = 3.04;
    assert!((client.nktg2() - expected).abs() < 1e-6);
}
