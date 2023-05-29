// not that imp because 
//try and catch is much more efficient
void validateUrl({required String url}) {
  assert(url.startsWith("https"), 'The url should starts with https');
  print('Url is Ok');
}

void main(List<String> args) {
  validateUrl(url: "");
}