#include <cstdlib>
#include <iostream>
#include <random>
#include <string_view>

constexpr char NEEDLES = '#';
constexpr char BAUBLE = 'O';
constexpr char LIGHT1 = '*';
constexpr char LIGHT2 = '+';
constexpr char TOP = '&';
constexpr char TRUNK = '%';

constexpr std::string_view BOLD = "\e[1m";
constexpr std::string_view NORMAL = "\e[21m";

constexpr std::string_view RED = "\e[31m";
constexpr std::string_view GREEN = "\e[32m";
constexpr std::string_view AMBER = "\e[33m";
constexpr std::string_view BRIGHT_YELLOW = "\e[38;5;226m";

constexpr std::string_view TOP_LEFT_COORDS = "\e[1;1H";

int main()
{
    std::random_device rd;
    std::mt19937_64 rnd(rd());

    constexpr std::size_t HEIGHT = 20;
    std::string tree[HEIGHT];

    for (std::size_t row = 0; row < HEIGHT - 3; ++row)
    {
        std::string padding(1 + HEIGHT - row, ' ');
        std::string branch(1 + row * 2, NEEDLES);
        tree[row] = padding + branch;
    }

    for (std::size_t row = 0; row < HEIGHT; ++row)
    {
        std::size_t len = tree[row].length();
        for (std::size_t col = 1 + HEIGHT - row; col < len; col++)
        {
            if (rnd() % 6 == 0)
            {
                tree[row].at(col) = BAUBLE;
            }
        }
    }

    for (std::size_t row = 0; row < HEIGHT; ++row)
    {
        std::size_t len = tree[row].length();
        for (std::size_t col = 1 + HEIGHT - row; col < len; col++)
        {
            if (rnd() % 8 == 0)
            {
                tree[row].at(col) = LIGHT1;
            }
        }
    }

    for (std::size_t row = 0; row < HEIGHT; ++row)
    {
        std::size_t len = tree[row].length();
        for (std::size_t col = 1 + HEIGHT - row; col < len; col++)
        {
            if (rnd() % 8 == 0)
            {
                tree[row].at(col) = LIGHT2;
            }
        }
    }

    for (std::size_t row = HEIGHT - 3; row < HEIGHT; ++row)
    {
        std::string padding(HEIGHT - 1, ' ');
        std::string trunk(5, TRUNK);
        tree[row] = padding + trunk;
    }

    tree[0][HEIGHT + 1] = TOP;

    std::cout << TOP_LEFT_COORDS;

    for (std::size_t row = 0; row < HEIGHT; ++row)
    {
        std::size_t len = tree[row].length();

        for (std::size_t col = 0; col < len; col++)
        {
            char current = tree[row].at(col);

            switch (current)
            {
            case TOP:
                std::cout << BRIGHT_YELLOW << NORMAL;
                break;
            case NEEDLES:
                std::cout << GREEN << NORMAL;
                break;
            case TRUNK:
                std::cout << AMBER << NORMAL;
                break;
            case LIGHT1:
                std::cout << BRIGHT_YELLOW;
                if (rnd() % 2 == 0)
                {
                    std::cout << BOLD;
                }
                else
                {
                    std::cout << NORMAL;
                }
                break;
            case LIGHT2:
                std::cout << AMBER;
                if (rnd() % 2 == 0)
                {
                    std::cout << BOLD;
                }
                else
                {
                    std::cout << NORMAL;
                }
                break;
            case BAUBLE:
                std::cout << RED << NORMAL;
                break;
            }

            std::cout << current;
        }

        std::cout << std::endl;
    }

    return EXIT_SUCCESS;
}