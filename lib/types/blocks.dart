/// Map of all Contentful block types.
/// Blocks contain inline or block nodes.
class BLOCKS {
  final String _key;
  final String _value;
  const BLOCKS._internal(this._key, this._value);

  @override
  String toString() => 'BLOCKS.$_key';
  String get key => _key;
  String get value => _value;

  static const DOCUMENT = const BLOCKS._internal('DOCUMENT', 'document');
  static const PARAGRAPH = const BLOCKS._internal('PARAGRAPH', 'paragraph');
  static const HEADING_1 = const BLOCKS._internal('HEADING_1', 'heading-1');
  static const HEADING_2 = const BLOCKS._internal('HEADING_2', 'heading-2');
  static const HEADING_3 = const BLOCKS._internal('HEADING_3', 'heading-3');
  static const HEADING_4 = const BLOCKS._internal('HEADING_4', 'heading-4');
  static const HEADING_5 = const BLOCKS._internal('HEADING_5', 'heading-5');
  static const HEADING_6 = const BLOCKS._internal('HEADING_6', 'heading-6');
  static const OL_LIST = const BLOCKS._internal('OL_LIST', 'ordered-list');
  static const UL_LIST = const BLOCKS._internal('UL_LIST', 'unordered-list');
  static const LIST_ITEM = const BLOCKS._internal('LIST_ITEM', 'list-item');
  static const HR = const BLOCKS._internal('HR', 'hr');
  static const QUOTE = const BLOCKS._internal('QUOTE', 'blockquote');
  static const EMBEDDED_ENTRY = const BLOCKS._internal('EMBEDDED_ENTRY', 'embedded-entry-block');
  static const EMBEDDED_ASSET = const BLOCKS._internal('EMBEDDED_ASSET', 'embedded-asset-block');

  static List<String> get keys => [
        'DOCUMENT',
        'PARAGRAPH',
        'HEADING_1',
        'HEADING_2',
        'HEADING_3',
        'HEADING_4',
        'HEADING_5',
        'HEADING_6',
        'OL_LIST',
        'UL_LIST',
        'LIST_ITEM',
        'HR',
        'QUOTE',
        'EMBEDDED_ENTRY',
        'EMBEDDED_ASSET',
      ];
  static List<String> get values => [
        'document',
        'paragraph',
        'heading-1',
        'heading-2',
        'heading-3',
        'heading-4',
        'heading-5',
        'heading-6',
        'ordered-list',
        'unordered-list',
        'list-item',
        'hr',
        'blockquote',
        'embedded-entry-block',
        'embedded-asset-block',
      ];
  static fromString(String value) {
    if (values.contains(value)) {
      switch (value) {
        case 'document':
          return DOCUMENT;
        case 'paragraph':
          return PARAGRAPH;
        case 'heading-1':
          return HEADING_1;
        case 'heading-2':
          return HEADING_2;
        case 'heading-3':
          return HEADING_3;
        case 'heading-4':
          return HEADING_4;
        case 'heading-5':
          return HEADING_5;
        case 'heading-6':
          return HEADING_6;
        case 'ordered-list':
          return OL_LIST;
        case 'unordered-list':
          return UL_LIST;
        case 'list-item':
          return LIST_ITEM;
        case 'hr':
          return HR;
        case 'blockquote':
          return QUOTE;
        case 'embedded-entry-block':
          return EMBEDDED_ENTRY;
        case 'embedded-asset-block':
          return EMBEDDED_ASSET;
      }
    }
    return null;
  }
}