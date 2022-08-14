import 'package:hive/hive.dart';

part 'ThemeAndLoginService.g.dart';
@HiveType(typeId: 4)
class ThemeAndLoginService{
  @HiveField(60)
  bool isDark;
  @HiveField(61)
  bool isLoggedIn;
  ThemeAndLoginService(this.isDark,this.isLoggedIn);

}
