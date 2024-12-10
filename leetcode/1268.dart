class Solution {
  List<List<String>> suggestedProducts(List<String> products, String searchWord) {
    products.sort();
    List<String> result = [];
    List<List<String>> resultList = [];
    String str = '';

    for(int i = 1; i <= searchWord.length; i++) {
        str = searchWord.substring(0,i);
        for(int j = 0; j < products.length; j++) {
            if(products[j].startsWith(str)){
                result.add(products[j]);
                if(result.length == 3) break;
            }
        }
        resultList.add(result);
        result = [];
    }

    return resultList;
  }
}
