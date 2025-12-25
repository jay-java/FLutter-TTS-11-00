abstract class RBI{
  void SA();
  void HL();
  void call(){
    print('call in abstract RBI');
  }
  static void repoRate(){
    print('repo rate : +-4%');
  }
}
class SBI extends RBI{
  @override
  void HL() {
    print('SBI HL : 7%');
  }

  @override
  void SA() {
    print('SBI SA : 5%');
  }

}

class HDFC extends RBI{
  @override
  void HL() {
     print('HDFC HL : 8%');
  }

  @override
  void SA() {
     print('HDFC SA : 6%');
  }

}

class DART extends RBI{
  @override
  void HL() {
    print('DART HL : 9%');
  }

  @override
  void SA() {
    print('DART SA : 7%');
  }

}
void main(List<String> args) {
  SBI s= SBI();
  s.HL();
  s.SA();
  HDFC h = HDFC();
  h.HL();
  h.SA();
  DART d = DART();
  d.HL();
  d.SA();

  s.call();
  h.call();
  d.call();

  RBI.repoRate();



}