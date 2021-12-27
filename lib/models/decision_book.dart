import 'package:get/get.dart';
import 'package:godzyken/app/modules/products/repository_model.dart';

class RxDecisionTodo {
  final id = 'O'.obs;
  final description = Description().obs;
  final title = 'thing todo'.obs;
  final dateTodo = '12/11/2021'.obs;
  final duration = '276'.obs;
  final reasons = 'add project'.obs;
  final address = '5, rue du ramonétage 34120 Pézenas'.obs;
  final done = false.obs;
  final canceled = false.obs;
  final havePartenariat = false.obs;
  final project = <Project?>[].obs;
}

class DecisionTodo {
  DecisionTodo({
    id,
    description,
    title,
    dateTodo,
    duration,
    reasons,
    address,
    done,
    canceled,
    havePartenariat,
  });

  final rx = RxDecisionTodo();

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get description => rx.description.value;

  set description(value) => rx.description.value = value;

  get title => rx.title.value;

  set title(value) => rx.title.value = value;

  get dateTodo => rx.dateTodo.value;

  set dateTodo(value) => rx.dateTodo.value = value;

  get duration => rx.duration.value;

  set duration(value) => rx.duration.value = value;

  get reasons => rx.reasons.value;

  set reasons(value) => rx.reasons.value = value;

  get address => rx.address.value;

  set address(value) => rx.address.value = value;

  get done => rx.done.value;

  set done(value) => rx.done.value = value;

  get canceled => rx.canceled.value;

  set canceled(value) => rx.canceled.value = value;

  get havePartenariat => rx.havePartenariat.value;

  set havePartenariat(value) => rx.havePartenariat.value = value;

  DecisionTodo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    title = json['title'];
    dateTodo = json['dateTodo'];
    duration = json['duration'];
    reasons = json['reasons'];
    address = json['address'];
    done = json['done'];
    canceled = json['canceled'];
    havePartenariat = json['havePartenariat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['title'] = title;
    data['dateTodo'] = dateTodo;
    data['duration'] = duration;
    data['reasons'] = reasons;
    data['address'] = address;
    data['done'] = done;
    data['canceled'] = canceled;
    data['havePartenariat'] = havePartenariat;
    return data;
  }

  static List<DecisionTodo> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => DecisionTodo()).toList();
  }
}

class RxDevisPrestation {
  final prestation = 'Prestation service'.obs;
  final id = '&é234'.obs;
  final devise = 'Euros'.obs;
  final tjm = 400.00.obs;
  final nbJours = 4.obs;
}

class DevisPrestation {
  DevisPrestation({
    prestation,
    id,
    devise,
    tjm,
    nbJours,
  });

  final rx = RxDevisPrestation();

  get prestation => rx.prestation.value;

  set prestation(value) => rx.prestation.value = value;

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get devise => rx.devise.value;

  set devise(value) => rx.devise.value = value;

  get tjm => rx.tjm.value;

  set tjm(value) => rx.tjm.value = value;

  get nbJours => rx.nbJours.value;

  set nbJours(value) => rx.nbJours.value = value;

  DevisPrestation.fromJson(Map<String, dynamic> json) {
    prestation = json['prestation'];
    id = json['id'];
    devise = json['devise'];
    tjm = json['tjm'];
    nbJours = json['nbJours'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['prestation'] = prestation;
    data['id'] = id;
    data['devise'] = devise;
    data['tjm'] = tjm;
    data['nbJours'] = nbJours;
    return data;
  }

  static List<DevisPrestation> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => DevisPrestation()).toList();
  }
}

class RxDevisProduct {
  final product = 'Livraison d\'application'.obs;
  final nameProduct = 'Egote'.obs;
  final sourceProduct = Repository().obs;
  final id = '1267'.obs;
  final nbJours = 31.obs;
  final nbJRemote = 2.obs;
  final priceSell = 1200.00.obs;
  final priceRemote = 0.02.obs;
  final remote = false.obs;
}

class DevisProduct {
  DevisProduct({
    product,
    nameProduct,
    sourceProduct,
    id,
    nbJours,
    nbJRemote,
    priceSell,
    priceRemote,
    remote,
  });

  final rx = RxDevisProduct();

  get product => rx.product.value;

  set product(value) => rx.product.value = value;

  get nameProduct => rx.nameProduct.value;

  set nameProduct(value) => rx.nameProduct.value = value;

  get sourceProduct => rx.sourceProduct.value;

  set sourceProduct(value) => rx.sourceProduct.value = value;

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get nbJours => rx.nbJours.value;

  set nbJours(value) => rx.nbJours.value = value;

  get nbJRemote => rx.nbJRemote.value;

  set nbJRemote(value) => rx.nbJRemote.value = value;

  get priceSell => rx.priceSell.value;

  set priceSell(value) => rx.priceSell.value = value;

  get priceRemote => rx.priceRemote.value;

  set priceRemote(value) => rx.priceRemote.value = value;

  get remote => rx.remote.value;

  set remote(value) => rx.remote.value = value;

  DevisProduct.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    nameProduct = json['nameProduct'];
    sourceProduct = json['sourceProduct'];
    id = json['id'];
    nbJours = json['nbJours'];
    nbJRemote = json['nbJRemote'];
    priceSell = json['priceSell'];
    priceRemote = json['priceRemote'];
    remote = json['remote'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product'] = product;
    data['nameProduct'] = nameProduct;
    data['sourceProduct'] = sourceProduct;
    data['id'] = id;
    data['nbJours'] = nbJours;
    data['nbJRemote'] = nbJRemote;
    data['priceSell'] = priceSell;
    data['priceRemote'] = priceRemote;
    data['remote'] = remote;
    return data;
  }

  static List<DevisProduct> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => DevisProduct()).toList();
  }
}

class RxProject {
  final idProject = 'O'.obs;
  final description = Description().obs;
  final nameProject = 'thing todo'.obs;
  final dateTodo = '12/11/2021'.obs;
  final duration = 276.obs;
  final done = false.obs;
  final canceled = false.obs;
  final havePartenariat = false.obs;
  final partenariat = <Partenariat?>[].obs;
  final haveEditDevis = false.obs;
  final typeDevis = TypeDevis().obs;
  final payed = false.obs;
  final source = <Repository?>[].obs;
}

class Project {
  Project({
    idProject,
    description,
    nameProject,
    dateTodo,
    duration,
    done,
    canceled,
    havePartenariat,
    haveEditDevis,
    typeDevis,
    payed,
    partenariat,
    source,
  });

  final rx = RxProject();

  get idProject => rx.idProject.value;

  set idProject(value) => rx.idProject.value = value;

  get description => rx.description.value;

  set description(value) => rx.description.value = value;

  get nameProject => rx.nameProject.value;

  set nameProject(value) => rx.nameProject.value = value;

  get dateTodo => rx.dateTodo.value;

  set dateTodo(value) => rx.dateTodo.value = value;

  get duration => rx.duration.value;

  set duration(value) => rx.duration.value = value;

  get done => rx.done.value;

  set done(value) => rx.done.value = value;

  get canceled => rx.canceled.value;

  set canceled(value) => rx.canceled.value = value;

  get havePartenariat => rx.havePartenariat.value;

  set havePartenariat(value) => rx.havePartenariat.value = value;

  get haveEditDevis => rx.haveEditDevis.value;

  set haveEditDevis(value) => rx.haveEditDevis.value = value;

  get typeDevis => rx.typeDevis.value;

  set typeDevis(value) => rx.typeDevis.value = value;

  get payed => rx.payed.value;

  set payed(value) => rx.payed.value = value;

  get partenariat => rx.partenariat.value;

  set partenariat(value) => rx.partenariat.value = value;

  get source => rx.source.value;

  set source(value) => rx.source.value = value;

  Project.fromJson(Map<String, dynamic> json) {
    partenariat = json['partenariat'];
    idProject = json['idProject'];
    description = json['description'];
    nameProject = json['nameProject'];
    dateTodo = json['dateTodo'];
    duration = json['duration'];
    done = json['done'];
    canceled = json['canceled'];
    havePartenariat = json['havePartenariat'];
    haveEditDevis = json['haveEditDevis'];
    typeDevis = json['typeDevis'];
    payed = json['payed'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['partenariat'] = partenariat;
    data['idProject'] = idProject;
    data['description'] = description;
    data['nameProject'] = nameProject;
    data['dateTodo'] = dateTodo;
    data['duration'] = duration;
    data['done'] = done;
    data['canceled'] = canceled;
    data['havePartenariat'] = havePartenariat;
    data['haveEditDevis'] = haveEditDevis;
    data['typeDevis'] = typeDevis;
    data['source'] = source;
    return data;
  }

  static List<Project> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((r) => Project()).toList();
  }
}

class RxTypeDevis {
  final product = <DevisProduct?>[].obs;
  final prestation = <DevisPrestation?>[].obs;
  final isPrestation = false.obs;
  final isProduct = false.obs;
}

class TypeDevis {
  TypeDevis({
    product,
    prestation,
    isPrestation,
    isProduct,
  });

  final rx = RxTypeDevis();

  get product => rx.product.value;

  set product(value) => rx.product.value = value;

  get prestation => rx.prestation.value;

  set prestation(value) => rx.prestation.value = value;

  get isPrestation => rx.isPrestation.value;

  set isPrestation(value) => rx.isPrestation.value = value;

  get isProduct => rx.isProduct.value;

  set isProduct(value) => rx.isProduct.value = value;

  TypeDevis.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    prestation = json['prestation'];
    isPrestation = json['isPrestation'];
    isProduct = json['isProduct'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product'] = product;
    data['prestation'] = prestation;
    data['isPrestation'] = isPrestation;
    data['isProduct'] = isProduct;
    return data;
  }

  static List<TypeDevis> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => TypeDevis()).toList();
  }
}

class RxPartenariat {
  final id = '1'.obs;
  final name = 'Egote Services'.obs;
  final status = 'SASS'.obs;
  final matriculation = ''.obs;
  final activity =
      'Rénovations et Services de traveaux du bâtiments particulier'.obs;
  final product = 'EgoteServices'.obs;
  final valueAdd = 'Application modulables et evolutive'.obs;
  final interest = 'Economies de la construction'.obs;
  final target = 'Créer un gestionnaire de projet'.obs;
  final functionement = <String>[].obs;
  final beginAt = '03/04/2021'.obs;
  final endAt = '03/04/2021'.obs;
}

class Partenariat {
  Partenariat({
    id,
    name,
    status,
    matriculation,
    activity,
    product,
    valueAdd,
    interest,
    target,
    functionement,
    beginAt,
    endAt,
  });

  final rx = RxPartenariat();

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get name => rx.name.value;

  set name(value) => rx.name.value = value;

  get status => rx.status.value;

  set status(value) => rx.status.value = value;

  get matriculation => rx.matriculation.value;

  set matriculation(value) => rx.matriculation.value = value;

  get activity => rx.activity.value;

  set activity(value) => rx.activity.value = value;

  get product => rx.product.value;

  set product(value) => rx.product.value = value;

  get valueAdd => rx.valueAdd.value;

  set valueAdd(value) => rx.valueAdd.value = value;

  get interest => rx.interest.value;

  set interest(value) => rx.interest.value = value;

  get target => rx.target.value;

  set target(value) => rx.target.value = value;

  get functionement => rx.functionement.value;

  set functionement(value) => rx.functionement.value = value;

  get beginAt => rx.beginAt.value;

  set beginAt(value) => rx.beginAt.value = value;

  Partenariat.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    matriculation = json['matriculation'];
    activity = json['activity'];
    product = json['product'];
    valueAdd = json['valueAdd'];
    interest = json['interest'];
    target = json['target'];
    functionement = json['functionement'];
    beginAt = json['beginAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['status'] = status;
    data['matriculation'] = matriculation;
    data['activity'] = activity;
    data['product'] = product;
    data['valueAdd'] = valueAdd;
    data['interest'] = interest;
    data['target'] = target;
    data['functionement'] = functionement;
    data['beginAt'] = beginAt;
    data['id'] = id;
    return data;
  }

  static List<Partenariat> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => Partenariat()).toList();
  }
}

class RxDescription {
  final text = <String>[].obs;
  final title = 'title'.obs;
  final id = '0'.obs;
}

class Description {
  Description({text, title, id});

  final rx = RxDescription();

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get title => rx.title.value;

  set title(value) => rx.title.value = value;

  get text => rx.text.value;

  set text(value) => rx.text.value = value;

  Description.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['text'] = text;
    data['id'] = id;
    return data;
  }

  static List<Description> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((e) => Description()).toList();
  }
}
