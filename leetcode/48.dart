class Solution {
  void rotate(List<List<int>> matrix) {
    for(int i = 0; i < matrix.length; i++) {
        for(int j = i+1; j< matrix.length; j++) {
            int tmp = matrix[i][j];
            matrix[i][j] = matrix[j][i];
            matrix[j][i] = tmp;
        }
        matrix[i] = matrix[i].reversed.toList();
    }
  }
}
