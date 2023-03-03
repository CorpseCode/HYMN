//----------------------------------------------------------------------------//
//Search Bar Code Here
import 'package:flutter/material.dart';

class DiscoverMusic extends StatelessWidget {
  const DiscoverMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Welcome!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5.0),
          Text('Enjoy Your Favourite Music',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 20.0),
          TextFormField(
            style: const TextStyle(color: Colors.black54),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white70,
              hintText: 'Search Your Music',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade800),
              suffixIcon: Icon(Icons.search_rounded,
                  color: Colors.grey.shade600),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none),
            ),
          ),
        ]);
  }
}
