List<int> dailyTemperatures(List<int> temperatures) {
  int n = temperatures.length;
  List<int> answer = List.filled(n, 0);
  List<int> stack = [];

  for (int i = 0; i < n; i++) {
    while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
      int prevIndex = stack.removeLast();
      answer[prevIndex] = i - prevIndex;
    }
    stack.add(i);
  }

  return answer;
}
