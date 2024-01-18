class RegexValidation {
  static String email =
      r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
  static String password =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static String name = r'^([a-zA-Z-\s]{4})+';
  static String phoneNumber = r'^\d{10}$';
  static String url =
      r'[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)';
}
