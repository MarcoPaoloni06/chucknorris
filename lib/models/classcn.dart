//ignore_for_file: public_member_api_docs, sort_constructors_first
class ChuckNorrisFact {
  String id;
  String fact;
  String createdAt;
  String category;

  ChuckNorrisFact(
      {required this.id,
      required this.fact,
      required this.createdAt,
      required this.category});

  @override
  String toString() =>
      'ChuckNorrisFact(id: $id, createdAt: $createdAt, catecory:$category , fact: $fact)';
}
