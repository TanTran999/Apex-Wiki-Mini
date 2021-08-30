import 'package:apex_wiki_mini/model/legends.dart';
import 'package:apex_wiki_mini/services/legends_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final legendDatabase = Provider<LegendDatabase>((ref)=>LegendDatabase());

// Get a list of legend from database
final legendProvider = FutureProvider.autoDispose<List<Legend>>((ref) async {

  await ref.read(legendDatabase).createDatabase();
  return ref.read(legendDatabase).legends();

});

// Get a specified legend by id from database

// final getLegendById = StateNotifierProvider((ref)=>GetLegend());
//
// class GetLegend extends StateNotifier<int>{
//   GetLegend():super(0);
// }

final getSpecifiedLegend = StateNotifierProvider((ref)=>AsyncLegend(ref.read));

class AsyncLegend extends StateNotifier<AsyncValue<Legend>>{
  AsyncLegend(this.read) : super(AsyncLoading()){
    _init();
  }

  Reader read;

  void _init() async{
    await read(legendDatabase).createDatabase();
    //state = null;
  }

  void getLegend_byID(int id) async{
    state = AsyncLoading();
    Legend legend = await read(legendDatabase).getLegendById(id);
    state = AsyncData(legend);
  }
}

