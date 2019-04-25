class Employees {
  final String nme;
  final int age;
  final String gender;
  final String photo;

  const Employees({ this.nme,this.age,this.gender,this.photo });
}

final List<Employees> employeesList = [
  Employees(
      nme: "廖永强",
      age: 31,
      gender: "帅哥",
      photo: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3018968254,2801372361&fm=26&gp=0.jpg"),
  Employees(
      nme: "廖千艺",
      age: 8,
      gender: "美女",
      photo: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1410237526,109961724&fm=26&gp=0.jpg"),
  Employees(
      nme: "廖俊熙",
      age: 9,
      gender: "帅哥",
      photo: "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1222929928,1326821480&fm=26&gp=0.jpg"),

];