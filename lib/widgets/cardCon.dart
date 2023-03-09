import 'package:flutter/material.dart';

class cardCon extends StatelessWidget {
  final String name, price, type;
  final IconData icon;
  final bool isreversed;
  final black = const Color.fromARGB(255, 69, 71, 74);
  final order;

  const cardCon({
    super.key,
    required this.name,
    required this.price,
    required this.type,
    required this.icon,
    required this.isreversed,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (order - 1) * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isreversed ? black : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isreversed ? Colors.white : black,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(price,
                        style: TextStyle(
                          color: isreversed ? Colors.white : black,
                          fontSize: 15,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(type,
                        style: TextStyle(
                          color: isreversed
                              ? Colors.white.withOpacity(0.8)
                              : black.withOpacity(0.8),
                          fontSize: 15,
                        )),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(5, 10),
                child: Icon(
                  icon,
                  color: isreversed ? Colors.white : black,
                  size: 80,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
