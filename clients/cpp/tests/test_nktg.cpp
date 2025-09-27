#include <cassert>
#include "../nktg_law/NKTgClient.cpp"

int main() {
    NKTgClient client(2.0, 3.0, 5.0, 0.1);
    assert(client.momentum() == 15.0);
    assert(client.nktg1() == 15.2);
    assert(client.nktg2() == 3.04);
    return 0;
}
