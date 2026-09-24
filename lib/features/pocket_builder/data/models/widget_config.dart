import 'widget_node.dart';

class WidgetConfig {
  const WidgetConfig({
    required this.schemaVersion,
    required this.root,
  });

  final int schemaVersion;
  final WidgetNode root;

  Map<String, dynamic> toJson() {
    return {
      'schemaVersion': schemaVersion,
      'root': root.toJson(),
    };
  }

  factory WidgetConfig.fromJson(Map<String, dynamic> json) {
    return WidgetConfig(
      schemaVersion: json['schemaVersion'] as int,
      root: WidgetNode.fromJson(
        Map<String, dynamic>.from(json['root'] as Map),
      ),
    );
  }
}