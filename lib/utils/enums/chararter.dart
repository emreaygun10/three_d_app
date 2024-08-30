import 'package:three_d_app/utils/const/utils.dart';

enum Character{
  freedy('${Utils.basePath}fnaf_sb_glamrock_bonnie.glb', 'FREEDY',),
  boony('${Utils.basePath}fnaf_sb_glamrock_freddy.glb', 'BOONNY',);
  

  final String path;
  final String name;
  const Character(this.path,this.name);
}

