class Response<T> {
  final String message;
  final T? data;

  const Response({required this.message, this.data});

  factory Response.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) {
    return Response<T>(
      message: json['message'],
      data: fromJsonT(json['data']),
    );
  }
}
