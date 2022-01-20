import 'package:http/http.dart' as http;
class DataService{
  Future<String> makeRequestFromApi() async{
    final uri = Uri.http('rickandmortyapi.com', 'api/character/143');
    final response = await http.get(uri);
    return response.body.toString();
  }
 }