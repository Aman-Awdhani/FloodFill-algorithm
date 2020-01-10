
int size =8;
int toChange =3;
int changeTo=9;
int[][] grid = {{1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 0, 0}, 
  {1, 0, 0, 1, 1, 0, 1, 1}, 
  {1, 3, 3, 3, 3, 0, 1, 0}, 
  {1, 1, 1, 3, 3, 0, 1, 0}, 
  {1, 1, 1, 3, 3, 3, 3, 0}, 
  {1, 1, 1, 1, 1, 3, 1, 1}, 
  {1, 1, 1, 1, 1, 3, 3, 1}, 
};

void setup() {

  size(800,800);
  background(0);
  
  for (int i=0; i<8; i++) {   
    for (int j=0; j<8; j++) {
      if (grid[i][j]== toChange) {
        FloodFill(grid, i, j, toChange, changeTo);
        Print();
        return;
      }
    }
  }
}

void draw() {
}

void FloodFill(int[][] grid, int x, int y, int target, int result) {


  if (x>=size || y>=size || x<0 || y<0)
    return;

  if (grid[x][y] !=target) {
    return;
  }

  if (grid[x][y] == target)
    grid[x][y] = result;

  FloodFill(grid, x-1, y, target, result);
  FloodFill(grid, x, y-1, target, result);
  FloodFill(grid, x+1, y, target, result);
  FloodFill(grid, x, y+1, target, result);
}

void Print() {

  background(0);
  for (int i=0; i<8; i++) {   
    for (int j=0; j<8; j++) {
      textSize(15);
      stroke(255);
      text(grid[i][j] , 50*j + 200 ,50*i + 100);
      print(grid[i][j] + " ");
    }

    println("");
  }
}
