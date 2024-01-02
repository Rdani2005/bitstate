import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.30,
      padding: const EdgeInsets.only(left: 30, right: 30, top: 75),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF121212),
            const Color(0xFF121212).withOpacity(0.9),
          ],
        ),
      ),
      child: Column(
        children: [
          _ProfileContainer(),
          const SizedBox(
            height: 30,
          ),
          _SearchPropertyContainer()
        ],
      ),
    );
  }
}

class _SearchPropertyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 50,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: 'Buscar Propiedades',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF424242),
              ),
            ),
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffF3A612),
          ),
          child: IconButton(
            onPressed: () {
              // Acción cuando se presiona el botón
            },
            icon: const Icon(
              Icons.tune,
              color: Colors.white,
            ), // Icono blanco
          ),
        ),
      ],
    );
  }
}

class _ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 75,
          height: 75,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: NetworkImage(
                "https://franchisematch.com/wp-content/uploads/2015/02/john-doe.jpg",
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hola John!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.orange,
                ),
                Text(
                  "Costa Rica",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
