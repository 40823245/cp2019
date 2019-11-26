import "dart:html";


void main() {
  querySelector("#submit").onClick.listen((e) => calctemperatures());
}

calctemperatures() {
  // binding variables to html elements:
  InputElement temperaturesInput = querySelector("#years");
  LabelElement output = querySelector("#output");
  // getting input
  String temperaturesString = temperaturesInput.value;
  int temperatures = int.parse(temperaturesString);
  // calculating and setting output:
  output.innerHtml = "${calculatetemperatures(temperatures)}";
}

int calculatetemperatures(int temperatures) {
  return (temperatures*1.8+32)
      .round()
      .toInt();
}