import 'package:apex_wiki_mini/model/legends.dart';
import 'package:apex_wiki_mini/services/legends_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final legendDatabase = Provider<LegendDatabase>((ref)=>LegendDatabase());

final legendProvider = FutureProvider<List<Legend>>((ref) async {
  await ref.read(legendDatabase).createDatabase();
  return ref.read(legendDatabase).legends();
});