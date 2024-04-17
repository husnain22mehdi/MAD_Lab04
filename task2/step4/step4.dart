// TODO: Add TextField widgets (101)
// [Name]
TextField(
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Username',
  ),
),
// spacer
const SizedBox(height: 12.0),
// [Password]
TextField(
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Password',
  ),
  obscureText: true,
),