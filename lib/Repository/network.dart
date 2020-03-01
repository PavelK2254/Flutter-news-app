import 'package:http/http.dart' as http;



class NetworkManager {
 Future<String> loadData(url) async {
    String dataURL = url;
    http.Response response = await http.get(dataURL);
    return (response.body);
  }
}
