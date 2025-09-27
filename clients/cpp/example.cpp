#include "nktg_law/NKTgClient.cpp"

int main() {
    NKTgClient client(2.0, 3.0, 5.0, 0.1);

    std::cout << "Momentum: " << client.momentum() << std::endl;
    std::cout << "NKTg₁: " << client.nktg1() << std::endl;
    std::cout << "NKTg₂: " << client.nktg2() << std::endl;

    return 0;
}
