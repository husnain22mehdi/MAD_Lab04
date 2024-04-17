// TODO: Add button bar (101)
ButtonBar(
  // TODO: Add a beveled rectangular border to CANCEL (103)
  children: <Widget>[
    // TODO: Add buttons (101)
  ],
),

   // TODO: Add buttons (101)
    TextButton(
      child: const Text('CANCEL'),
      onPressed: () {
        // TODO: Clear the text fields (101)
      },
    ),
    // TODO: Add an elevation to NEXT (103)
    // TODO: Add a beveled rectangular border to NEXT (103)
    ElevatedButton(
      child: const Text('NEXT'),
      onPressed: () {
    // TODO: Show the next page (101) 
      },
    ),


// TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // TODO: Add TextField widgets (101)
// [Name]
TextField(
  controller: _usernameController,



  // TODO: Add TextField widgets (101)
// [Password]
TextField(
  controller: _passwordController,

  // TODO: Clear the text fields (101)
    _usernameController.clear();
    _passwordController.clear();

            // TODO: Show the next page (101) 
        Navigator.pop(context);

        return Scaffold(
      // TODO: Add app bar (102)
      // TODO: Add a grid view (102)
      body: Center(
        child: Text('You did it!'),
      ),
      // TODO: Set resizeToAvoidBottomInset (101)
      resizeToAvoidBottomInset: false,
    );