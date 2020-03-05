class Parsers {


}

class DateManager{
  String date;
  var _fullDateAndTime = [];
  var _dateOnly = [];
  var _timeOnly = [];
  var _year,_month,_day,_hour,_minute;

  DateManager(this.date){
    _fullDateAndTime = date.split("T");
    _dateOnly = _fullDateAndTime[0].toString().split("-");
    _year = _dateOnly[0];
    _month = _dateOnly[1];
    _day = _dateOnly[2];

    _timeOnly = _fullDateAndTime[1].toString().split(":");
    _hour = _timeOnly[0];
    _minute = _timeOnly[1];


  }

  String getFormattedDate(){
    return '${_day}/${_month}/${_year} at ${_hour}:${_minute}';
  }

  get minute => _minute;

  get hour => _hour;

  get day => _day;

  get month => _month;

  get year => _year;


}