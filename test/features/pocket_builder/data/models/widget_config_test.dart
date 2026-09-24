import 'package:flutter_test/flutter_test.dart';
import 'package:astr4l_flutter_pocket/features/pocket_builder/data/models/widget_config.dart';
import 'package:astr4l_flutter_pocket/features/pocket_builder/data/models/widget_node.dart';

void main() {
  test('WidgetConfig encode and decode JSON correctly', () {
    const config = WidgetConfig(
      schemaVersion: 1,
      root: WidgetNode(
        id: 'root',
        type: 'column',
        props: {
          'spacing': 16,
        },
        children: [
          WidgetNode(
            id: 'title',
            type: 'text',
            props: {
              'value': 'Astr4lPocket',
            },
          ),
        ],
      ),
    );

    final json = config.toJson();
    final decoded = WidgetConfig.fromJson(json);

    expect(decoded.schemaVersion, 1);
    expect(decoded.root.id, 'root');
    expect(decoded.root.type, 'column');
    expect(decoded.root.children.length, 1);
    expect(decoded.root.children.first.type, 'text');
    expect(decoded.root.children.first.props['value'], 'Astr4lPocket');
  });
}