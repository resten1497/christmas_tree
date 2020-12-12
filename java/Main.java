public class Main {
	public static void main(String[] args) {
		final int TREE_SIZE = 20;
		
		char[] char_set = {'T', 'R', 'E', 'E'};
		
		for(int i = 0; i < TREE_SIZE; i++)
			System.out.print(" ");
		System.out.println('\u2605');
		for(int i = 0; i < TREE_SIZE; i++) {
			for(int j = 0; j < 2; j++) {
				for(int k = 0; k < TREE_SIZE - i; k++)
					System.out.print(" ");
				for(int k = 0; k < i * 2 + 1; k++)
					System.out.print(char_set[(i * 2 + j) % char_set.length]);
				System.out.println();
			}
		}
		for(int i = 0; i < TREE_SIZE / 4; i++) {
			for(int j = 0; j < (TREE_SIZE * 2 + 1) / 5 * 2; j++)
				System.out.print(" ");
			for(int j = 0; j < (TREE_SIZE * 2 + 1) / 5; j++)
				System.out.print("■");
			System.out.println("");
		}
	}
}
