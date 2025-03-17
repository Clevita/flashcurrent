class ModelCategorydata {
    ModelCategorydata({
        required this.listdata,
    });

    final List<Listdatum> listdata;

    factory ModelCategorydata.fromJson(Map<String, dynamic> json){ 
        return ModelCategorydata(
            listdata: json["listdata"] == null ? [] : List<Listdatum>.from(json["listdata"]!.map((x) => Listdatum.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "listdata": listdata.map((x) => x?.toJson()).toList(),
    };

}

class Listdatum {
    Listdatum({
        required this.id,
        required this.title,
        required this.image,
        required this.isSelected,
    });

    final int? id;
    final String? title;
    final String? image;
     bool? isSelected;

    factory Listdatum.fromJson(Map<String, dynamic> json){ 
        return Listdatum(
            id: json["id"],
            title: json["title"],
            image: json["image"],
            isSelected: json["is_selected"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "is_selected": isSelected,
    };

}
