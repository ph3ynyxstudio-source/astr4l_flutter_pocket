class WidgetNode {
  const WidgetNode({
    required this.id,
    required this.type,
    this.props = const {},
    this.children = const [],
  });

  final String id;
  final String type;
  final Map<String, dynamic> props;
  final List<WidgetNode> children;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'props': props,
      'children': children.map((child) => child.toJson()).toList(),
    };
  }

  factory WidgetNode.fromJson(Map<String, dynamic> json) {
    return WidgetNode(
      id: json['id'] as String,
      type: json['type'] as String,
      props: Map<String, dynamic>.from(json['props'] as Map? ?? {}),
      children: (json['children'] as List? ?? [])
          .map((child) => WidgetNode.fromJson(Map<String, dynamic>.from(child)))
          .toList(),
    );
  }
}