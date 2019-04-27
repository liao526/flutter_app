class Employees {
  final String nme;
  final int age;
  final String gender;
  final String photo;
  final String describe;

  const Employees({ this.nme,this.age,this.gender,this.photo,this.describe });
}

final List<Employees> employeesList = [
  Employees(
      nme: "廖永强",
      age: 31,
      gender: "帅哥",
      describe:"2222222222222222",
      photo: "https://i5.hoopchina.com.cn/hupuapp/bbs/640/27803640/thread_27803640_20190427141324_s_88377_w_1199_h_695_74705.jpg"),
  Employees(
      nme: "廖千艺",
      age: 8,
      gender: "美女",
      describe:"33333333333333333",
      photo: "https://i11.hoopchina.com.cn/hupuapp/bbs/640/27803640/thread_27803640_20190427141239_s_677708_w_1488_h_944_27108.png"),
  Employees(
      nme: "廖俊熙",
      age: 9,
      gender: "帅哥",
      describe:"4444444444444444",
      photo: "https://i1.hoopchina.com.cn/hupuapp/bbs/640/27803640/thread_27803640_20190427141239_s_110758_w_1094_h_746_64705.jpg"),

];