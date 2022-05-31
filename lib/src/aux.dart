/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

/// Builds a searchable list map form a hash map.
Map<String, dynamic> buildSearchable(Map<String,dynamic> subject, String qualifier){
  Map<String,dynamic> result = new Map();
  for (int i = 0; i < subject.length; i++){
    String parentKey = subject.keys.elementAt(i);
    result[parentKey] = subject[parentKey][qualifier];
  }
  return result;
}

/// Returns a list of keys of the base map given a searchable list map
/// and a search term.
List<String> searchMap(String term, Map<String,dynamic> subject){
  List<String> result = [];
  for (int i = 0; i < subject.length; i++){
    String key = subject.keys.elementAt(i);
    List<dynamic> data = subject[key];
    if (data.contains(term)) {
      result.add(key);
    }
    else {}
  }
  return result;
}

/// Combines everything: Returns a hash map from a base map given a search term.
Map<String,dynamic> completeSearch(String term, Map<String,dynamic> subject, String qualifier){
  Map<String,dynamic> result = new Map();
  Map<String, dynamic> searchableIndex = buildSearchable(subject, qualifier);
  List<String> hitKeys = searchMap(term, searchableIndex);
  for (int i = 0; i < hitKeys.length; i++){
    result[hitKeys[i]] = subject[hitKeys[i]];
  }
  return result;
}
