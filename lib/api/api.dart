import 'package:http/http.dart' as http;

class Api {
  getData() async {
  var url = Uri.https('https://twitter241.p.rapidapi.com/community-details?communityId=1601841656147345410' );
var response = await http.post(url, );
if (response. statusCode ==200){
  print(response.body);
}
}

} 