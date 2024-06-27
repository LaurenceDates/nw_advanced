part of 'main_screen.dart';

Widget mainScreenBodyLogo({Key? key, Widget? child}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/NW_logo_transparent_540x540.png"),
            fit: BoxFit.contain
        )
    ),
    child: child
  );
}

Widget mainScreenBodyThorpe({Key? key, Widget? child}) {
  return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/NW_Thorpe_transparent_540x540.png"),
              fit: BoxFit.contain
          )
      ),
      child: child
  );
}