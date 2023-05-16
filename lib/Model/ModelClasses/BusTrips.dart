class BusTrips{

  static List<String> BusNames = [
    "Falguni", "Hemonto" , "Boishakhi" ,"Srabon",
    "Taranga","Anondo","Isha Kha", "Moitri",
    "Choitali","Ullas","Bosonto","Kinchit","Khonika"

  ];

  static List<BusTrips> busTrips = [];

  late String name;
  List<String> Uptrips = <String>['0.0', '7.02', '8.0', '7.72', '60.0', '74.02'];
  List<String> Downtrips = <String>['0.0', '85.02', '7.02', '8.0', '7.72', '60.0', '74.02'];
  List<String> Password =  <String>['0.0', '7.02', '8.0', '7.72', '60.0', '74.02'];
  List<String> locShare = <String>['2', '1', '1', '1', '1', '0', '1', '1', '1'];
  String Notice = "No Notice So Far";

  BusTrips(String name,List<String> Up,List<String> Down,List<String> Pass,List<String> shflag ,String notice)
  {

    this.name = name;
    this.Uptrips = Up;
    this.Downtrips = Down;
    this.Password = Pass;
    this.locShare = shflag;
    this.Notice = notice ;

  }





}