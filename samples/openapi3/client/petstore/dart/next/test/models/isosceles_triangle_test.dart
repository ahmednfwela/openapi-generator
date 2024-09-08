import 'package:petstore_api/_internal.dart';
import 'package:test/test.dart';
import '../utils.dart';
import 'package:parameterized_test/parameterized_test.dart';

void main() {
  group(r'IsoscelesTriangle', () {
    final reflection = IsoscelesTriangle.$reflection;
    final exampleContext = ExampleContext();

      late IsoscelesTriangle exampleInstance;
      setUp(() {
        exampleInstance = reflection.example(exampleContext);
      });

      test('validate', () {
        expect(exampleInstance, isNotNull);
        expect(exampleInstance.validate(), isTrue);
      });

      test('equals itself', () {
        expect(exampleInstance, exampleInstance);
      });

      test('equals its clone', () {
        final clone = exampleInstance.clone();
        expect(exampleInstance, modelEquals(clone, reflection: reflection));
        // test if equality is transitive
        expect(clone, modelEquals(exampleInstance, reflection: reflection));
      });

      parameterizedTest(
        'serialization roundtrip',
        [
          SerializationContext.json(
            fileBytesResolver: (file) => exampleContext.fileCache[file.name],
          ),
          SerializationContext.xml(
            fileBytesResolver: (file) => exampleContext.fileCache[file.name],
          ),
        ],
        (SerializationContext context) {
          final serialized = exampleInstance.serialize(context);
          final roundTripped = context.split(
            onJson: (context) {
              final encoded = jsonEncode(serialized);
              return jsonDecode(encoded);
            },
            onXml: (context) {
              final pretty = (serialized as XmlNode).toXmlString(pretty: true);
              return XmlDocument.parse(pretty).firstElementChild;
            },
          );
          expect(IsoscelesTriangle.canDeserialize(roundTripped, context), isTrue);

          final deserialized = IsoscelesTriangle.deserialize(serialized, context);
          expect(deserialized.validate(), isTrue);
          expect(deserialized, modelEquals(exampleInstance, reflection: reflection));
        }
      );
  });
}
