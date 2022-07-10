class DateTime{
  int day, month, year;
  int hour, minute;
  DateTime(this.day, this.month, this.year, this.hour, this.minute);

  getDate(){
    return '$day/$month/$year - $hour:$minute';
  }
}