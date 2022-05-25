import 'package:flutter/material.dart';

class CommomDialog extends StatelessWidget {
  final String message;
  final bool disableCloseButtom;
  const CommomDialog(
      {Key? key,
      this.message = 'Ocorreu um erro inesperado!',
      this.disableCloseButtom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).primaryColor,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.info,
                size: 60,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              disableCloseButtom
                  ? Container()
                  : GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text(
                          'Fechar',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}
