class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];                 // NEW
  final _biggerFont = const TextStyle(fontSize: 18); // NEW
  ...
}

Widget _buildSuggestions() {
  return ListView.builder(
    padding: const EdgeInsets.all(16),
    // The itemBuilder callback is called once per suggested
    // word pairing, and places each suggestion into a ListTile
    // row. For even rows, the function adds a ListTile row for
    // the word pairing. For odd rows, the function adds a
    // Divider widget to visually separate the entries. Note that
    // the divider may be difficult to see on smaller devices.
    itemBuilder: (context, i) {
      // Add a one-pixel-high divider widget before each row
      // in the ListView.
      if (i.isOdd) {
        return const Divider();
      }

      // The syntax "i ~/ 2" divides i by 2 and returns an
      // integer result.
      // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
      // This calculates the actual number of word pairings
      // in the ListView,minus the divider widgets.
      final index = i ~/ 2;
      // If you've reached the end of the available word
      // pairings...
      if (index >= _suggestions.length) {
        // ...then generate 10 more and add them to the
        // suggestions list.
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    },
  );
}

Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

   @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); // Delete these... 
    //return Text(wordPair.asPascalCase); // ... two lines.

    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );                                      // ... to here.
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }