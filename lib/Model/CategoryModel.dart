class CategoryModel {
  String? id;
  String? bannerImage;
  String? categoryName;


  CategoryModel(this.id,this.bannerImage,this.categoryName);
}

    List<CategoryModel> CategoryList = categoryData.map((a) => CategoryModel(a["id"],a["bannerImage"], a["categoryName"])).toList();

var categoryData = [
  {
    "id": '1',
    "bannerImage":"https://img.freepik.com/free-photo/symbols-come-out-bulb-top-book_1232-908.jpg?w=2000&t=st=1702973428~exp=1702974028~hmac=4749b8acbeeb435e0c07d39477750c13bc30c9f62c43450db8b369fcac5e3ab0",
    "categoryName":"Aptitude",
  },
  {
    "id": '2',
    "bannerImage":"https://img.freepik.com/free-photo/rpa-concept-with-blurry-hand-touching-screen_23-2149311914.jpg?w=2000&t=st=1702973505~exp=1702974105~hmac=6c02e1f5f88b7e32acf5f9515a0b9b8d0ba665bde4da583801ecc5dd884ca828",
    "categoryName":"Technical",
  },
  {
    "id": '3',
    "bannerImage":"https://img.freepik.com/free-vector/hand-drawn-business-communication-concept_23-2149171107.jpg?w=2000&t=st=1702973529~exp=1702974129~hmac=4b6a87fcdbc38841127d94597dfebd783f81cf30dba5eec4eea85133d19d46f6",
    "categoryName":"Communication",
  },
];