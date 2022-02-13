import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String imagePath = "assets/imageAux/Arroz.jpg";

  TextStyle titleStyle = const TextStyle(
    color: CustomTheme.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle dataStyle = const TextStyle(
    color: CustomTheme.black,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  TextStyle nameStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  void handleAddTagPress() {
    debugPrint("Adicionar Categoria");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Page gradient
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CustomTheme.gradientStart, CustomTheme.gradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          // Page content
          child: Column(
            children: [
              // Image container and style
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Item name
              Text("Arroz", style: nameStyle),

              const SizedBox(height: 20),

              // White container with item data
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: const BoxDecoration(
                  color: CustomTheme.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),

                // Card content
                child: Column(
                  children: [
                    Container(
                      color: CustomTheme.lightGrey,
                      width: 80,
                      height: 1,
                    ),

                    const SizedBox(height: 40),

                    // Info container
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Purchase Date
                          Text("Data de compra", style: titleStyle),
                          const SizedBox(height: 20),
                          Text("12/21/2021", style: dataStyle),

                          const SizedBox(height: 20),

                          // Expire date
                          Text("Data de Validade", style: titleStyle),
                          const SizedBox(height: 20),
                          Text("12/21/2021", style: dataStyle),

                          const SizedBox(height: 20),

                          // Observation
                          Text("Observações", style: titleStyle),
                          const SizedBox(height: 20),
                          const ObservationInput(),

                          const SizedBox(height: 40),

                          // Add Tag Button
                          InkWell(
                            onTap: handleAddTagPress,
                            child: Center(
                              child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: const BoxDecoration(
                                  color: CustomTheme.gradientStart,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: CustomTheme.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text("Adicionar Categoria")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ObservationInput extends StatelessWidget {
  final double height;
  const ObservationInput({
    Key? key,
    this.height = 130,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: CustomTheme.black),
        ),
      ),
      child: const TextField(
        maxLines: 5,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: CustomTheme.lightGrey,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: CustomTheme.lightGrey,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: CustomTheme.lightGrey,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: CustomTheme.lightGrey,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
