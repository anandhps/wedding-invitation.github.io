import 'dart:developer';

import 'package:wedding/repositories.dart';

class MenusViewModel extends ViewModel {
  late SweetDialog loading;
  late ApiProvider apiProvider;
  final box = GetStorage();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    notifyListeners();
  }

  int _reservasionID = 0;
  int get reservasionID => _reservasionID;
  set reservasionID(int value) {
    _reservasionID = value;
    notifyListeners();
  }

  int _sessionID = 0;
  int get sessionID => _sessionID;
  set sessionID(int value) {
    _sessionID = value;
    notifyListeners();
  }

  CategoryModel _categorySelected = CategoryModel(
    categoryID: '1',
    categoryName: 'Appetizer',
    categoryIcon: 'assets/icons/svg/appetizer.svg',
  );
  CategoryModel get categorySelected => _categorySelected;
  set categorySelected(CategoryModel value) {
    _categorySelected = value;
    notifyListeners();
  }

  List<CategoryModel> categories = [
    CategoryModel(
        categoryID: '1',
        categoryName: 'Appetizer',
        categoryIcon: 'assets/icons/svg/appetizer.svg'),
    CategoryModel(
        categoryID: '2',
        categoryName: 'Main Course',
        categoryIcon: 'assets/icons/svg/main.svg'),
    CategoryModel(
        categoryID: '3',
        categoryName: 'Dessert',
        categoryIcon: 'assets/icons/svg/dessert.svg'),
    CategoryModel(
        categoryID: '4',
        categoryName: 'Drink',
        categoryIcon: 'assets/icons/svg/drink.svg'),
  ];

  List<MenuModel> _menus = List<MenuModel>.empty(growable: true);
  List<MenuModel> get menus => _menus;
  set menus(List<MenuModel> value) {
    _menus = value;
    notifyListeners();
  }

  void getMenus() async {
    isLoading = true;
    apiProvider.getMenus(categoryID: categorySelected.categoryID!).then(
      (value) {
        isLoading = false;
        menus = value;
      },
      onError: (e) {
        isLoading = false;
        menus = List<MenuModel>.empty(growable: true);
        SweetDialog(
          context: context,
          title: 'Oops!',
          content: e.toString(),
          dialogType: SweetDialogType.error,
        ).show();
      },
    );
  }

  @override
  void init() {
    apiProvider = getApiProvider;
    loading = SweetDialog(
      context: context,
      dialogType: SweetDialogType.loading,
      barrierDismissible: false,
    );

    final args = Get.arguments;
    if (args != null) {
      try {
        userName = args['userName'].toString();
        reservasionID = int.parse(args['reservasionID'].toString());
        sessionID = int.parse(args['sessionID'].toString());

        box.write('userName', userName);
        box.write('reservasionID', reservasionID);
        box.write('sessionID', sessionID);

        Future.delayed(Duration.zero, () {
          getMenus();
        });
      } catch (e) {
        log('Error: $e');
        SweetDialog(
          context: context,
          dialogType: SweetDialogType.error,
          title: 'Oops!',
          content: 'Tidak menemukan data reservasi',
          barrierDismissible: false,
          confirmText: 'Kembali',
          onConfirm: () => Get.toNamed('/login'),
        ).show();
      }
    } else {
      if (box.read('userName') != null &&
          box.read('reservasionID') != null &&
          box.read('sessionID') != null) {
        userName = box.read('userName');
        reservasionID = box.read('reservasionID');
        sessionID = box.read('sessionID');

        Future.delayed(Duration.zero, () {
          getMenus();
        });
      } else {
        try {
          Get.toNamed('/login');
        } catch (e) {
          log('Error: $e');
        }
      }
    }
  }

  @override
  void onDependenciesChange() {}

  @override
  void onBuild() {}

  @override
  void onMount() {}

  @override
  void onUnmount() {}

  @override
  void onResume() {}

  @override
  void onPause() {}

  @override
  void onInactive() {}

  @override
  void onDetach() {}
}
