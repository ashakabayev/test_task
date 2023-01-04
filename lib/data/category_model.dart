class Category {
  Category({
    this.id,
    this.title,
    this.image,
    this.status,
    this.inputs,
  });

  final int? id;
  final String? title;
  final String? image;
  final String? status;
  final List<Input>? inputs;

  Category copyWith({
    int? id,
    String? title,
    String? image,
    String? status,
    List<Input>? inputs,
  }) =>
      Category(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
        status: status ?? this.status,
        inputs: inputs ?? this.inputs,
      );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        status: json["status"],
        inputs: json["inputs"] == null ? null : List<Input>.from(json["inputs"].map((x) => Input.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "status": status,
        "inputs": inputs == null ? null : List<dynamic>.from(inputs!.map((x) => x.toJson())),
      };
}


class Input {
  Input({
    this.id,
    this.title,
    this.type,
    this.shown,
    this.validationType,
    this.validationValue,
  });

  final int? id;
  final String? title;
  final String? type;
  final bool? shown;
  final String? validationType;
  final String? validationValue;

  Input copyWith({
    int? id,
    String? title,
    String? type,
    bool? shown,
    String? validationType,
    String? validationValue,
  }) =>
      Input(
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
        shown: shown ?? this.shown,
        validationType: validationType ?? this.validationType,
        validationValue: validationValue ?? this.validationValue,
      );

  factory Input.fromJson(Map<String, dynamic> json) => Input(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        shown: json["shown"],
        validationType: json["validation_type"],
        validationValue: json["validation_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "shown": shown,
        "validation_type": validationType,
        "validation_value": validationValue,
      };
}
