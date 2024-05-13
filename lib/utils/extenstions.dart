extension StringExtension on String {
  String getExceptionMessage() {
    List<String> temp = split(': ');
    temp.removeAt(0);
    return temp.join(': ');
  }
}