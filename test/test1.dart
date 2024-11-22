import 'package:pocketbase/pocketbase.dart';

final pb = PocketBase("http://127.0.0.1:8090");
void main() async {
  List<RecordModel> data = await pb.collection("complaints").getFullList(expand: "complaintCategoryId");

  print(data[2].toJson());
}
