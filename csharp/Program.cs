using System;

namespace csharpTree
{
    internal static class Program
    {
        private static void Main(string[] args)
        {
            Console.ForegroundColor = ConsoleColor.Green;

            const int max = 20;
            for (var i = 0; i < max; i++)
            {
                for (var j = 0; j < max - i; j++)
                {
                    Console.Write(" ");
                }

                for (var j = 0; j < i * 2 + 1; j++)
                {
                    if (i == 0)
                    {
                        Console.Write("⭐️");
                    }
                    else
                    {
                        if (j == 0)
                        {
                            Console.Write("/");
                        }
                        else if (j == i * 2)
                        {
                            Console.Write("\\");
                        }
                        else
                        {
                            Console.ForegroundColor = j % 2 == 0 ? ConsoleColor.Red : ConsoleColor.Green;

                            Console.Write("*");
                        }
                    }
                }

                Console.WriteLine();
            }


            Console.ForegroundColor = ConsoleColor.DarkBlue;


            for (var i = 0; i < 13; i++)
            {
                for (var cnt = 0; cnt < max - 1; cnt++)
                {
                    Console.Write(" ");
                }

                for (var j = 0; j < 3; j++)
                {
                    Console.Write("|");
                }

                Console.WriteLine();
            }
        }
    }
}