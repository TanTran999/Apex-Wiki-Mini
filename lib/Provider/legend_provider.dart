import 'package:apex_wiki_mini/model/legends.dart';
import 'package:apex_wiki_mini/services/legends_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final legendDatabase = Provider<LegendDatabase>((ref)=>LegendDatabase());

// Get a list of legend from database
final legendProvider = FutureProvider.autoDispose<List<Legend>>((ref) async {

  await ref.read(legendDatabase).init();
  return ref.read(legendDatabase).legends();

});

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

