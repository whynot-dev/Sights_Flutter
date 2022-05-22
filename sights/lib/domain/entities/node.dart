class Node {
  final int id;
  final double value;

  Node(this.id, this.value);

  @override
  bool operator ==(Object other) => other is Node && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => '<$id -> $value>';
}