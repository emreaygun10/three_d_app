import 'package:three_d_app/utils/const/utils.dart';

enum Character{
  bonnie('${Utils.basePath}fnaf_sb_glamrock_bonnie.glb', 'BONNIE',),
  freddy('${Utils.basePath}fnaf_sb_glamrock_freddy.glb', 'FREDDY',);
  

  final String path;
  final String name;
  const Character(this.path,this.name);
}

