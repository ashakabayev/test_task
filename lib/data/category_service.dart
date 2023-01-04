import 'package:test_task/data/category_model.dart';

class CategoryService {
  const CategoryService();

  Future<List<Category>> getCategories() async {
    //fetching throw http
    //decoding
    //handling errors, example 400, 500
    final List<Category> list = _myJson.map((e) => Category.fromJson(e)).toList();

    return list;
  }
}

List _myJson = [
  {
    "id": 1,
    "title": "Hickle, Quitzon and Abshire",
    "image": "http://dummyimage.com/246x110.png/5fa2dd/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 1, "title": "emusslewhite0", "type": "boolean", "shown": true, "validation_type": null, "validation_value": null},
      {"id": 2, "title": "rwyndham1", "type": "string", "shown": false, "validation_type": "length", "validation_value": "278"},
      {"id": 3, "title": "mlindback2", "type": "boolean", "shown": false, "validation_type": null, "validation_value": null},
      {"id": 4, "title": "jdracksford3", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 5, "title": "kelcome4", "type": "integer", "shown": true, "validation_type": "length", "validation_value": "757"}
    ]
  },
  {
    "id": 2,
    "title": "Towne, Stanton and Collier",
    "image": "http://dummyimage.com/134x108.png/5fa2dd/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 3,
    "title": "Littel, Bednar and Herman",
    "image": "http://dummyimage.com/189x112.png/ff4444/ffffff",
    "status": "HIDDEN",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 4,
    "title": "Tremblay-Beahan",
    "image": "http://dummyimage.com/217x154.png/cc0000/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 5,
    "title": "Stehr, Halvorson and Berge",
    "image": "http://dummyimage.com/238x193.png/ff4444/ffffff",
    "status": "HIDDEN",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 6,
    "title": "Skiles and Sons",
    "image": "http://dummyimage.com/152x181.png/5fa2dd/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 7,
    "title": "Spinka, Cole and Senger",
    "image": "http://dummyimage.com/215x139.png/cc0000/ffffff",
    "status": "HIDDEN",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 8,
    "title": "McGlynn LLC",
    "image": "http://dummyimage.com/175x162.png/5fa2dd/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 9,
    "title": "Bartoletti, Stiedemann and Bins",
    "image": "http://dummyimage.com/110x129.png/5fa2dd/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 10,
    "title": "Abbott LLC",
    "image": "http://dummyimage.com/146x206.png/cc0000/ffffff",
    "status": "HIDDEN",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 11,
    "title": "Jenkins, Marks and Ebert",
    "image": "http://dummyimage.com/102x189.png/cc0000/ffffff",
    "status": "READY",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  },
  {
    "id": 12,
    "title": "Mann, Kris and Mueller",
    "image": "http://dummyimage.com/160x179.png/dddddd/000000",
    "status": "HIDDEN",
    "inputs": [
      {"id": 6, "title": "dbentjens5", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "false"},
      {"id": 7, "title": "lhuxham6", "type": "string", "shown": true, "validation_type": "nullable", "validation_value": "false"},
      {"id": 8, "title": "eollett7", "type": "integer", "shown": false, "validation_type": "nullable", "validation_value": "true"}
    ]
  }
];
