
class Human{
  int _numberOfHands=2;
  String? name;
  int? age;
  double? height;
  Human ({this.name, this.age, this.height});
  set numberOfHands(int numberOfHands){
    this._numberOfHands=numberOfHands;
  }
  int get numberOfHands => this._numberOfHands;

}


