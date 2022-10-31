class ButtonWidget extends StatelessWidget{
  final String text;
  final Voidcallback whenClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.whenClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      onPrimary: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    ),
    child: Text(text),
    onPressed: whenClicked,
  );

}