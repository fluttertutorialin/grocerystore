# grocerystore

List<MessageDTO> messageProviderFromJson(String str) => List<MessageDTO>.from(
      json.decode(str).map((x) => MessageDTO.fromJson(x)));

String messageProviderToJson(List<MessageDTO> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  ,.''