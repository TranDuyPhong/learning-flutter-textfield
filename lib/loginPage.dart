import 'package:flutter/material.dart';

import 'user.dart';

class LoginPage extends StatefulWidget {
	@override 
	State<StatefulWidget> createState() {
		return new LoginPageState();
	}
}

class LoginPageState extends State<LoginPage> {
	final User user = new User();

	@override 
	Widget build(BuildContext buildContext) {
		final TextField _txtUsername = new TextField(
			decoration: new InputDecoration(
				hintText: 'Enter your username',
				contentPadding: const EdgeInsets.all(10.0),
				border: InputBorder.none,
			),
			keyboardType: TextInputType.text,
			autocorrect: false,
			onChanged: (text) {
				setState(() {
					this.user.username = text;
				});
			},
		);

		final TextField _txtEmail = new TextField(
			decoration: new InputDecoration(
				hintText: 'Enter your email',
				contentPadding: const EdgeInsets.all(10.0),
				border: InputBorder.none,
			),
			keyboardType: TextInputType.emailAddress,
			autocorrect: false,
			onChanged: (text) {
				setState(() {
					this.user.email = text;
				});
			},
		);

		final TextField _txtPassword = new TextField(
			decoration: new InputDecoration(
				hintText: 'Enter your password',
				contentPadding: const EdgeInsets.all(10.0),
				border: InputBorder.none,
			),
			keyboardType: TextInputType.visiblePassword,
			autocorrect: false,
			obscureText: true,
			onChanged: (text) {
				setState(() {
					this.user.password = text;
				});
			},
		);

		return new Scaffold(
			appBar: new AppBar(
				title: new Text('TextField'),
			),
			body: new Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					new Container(
						margin: const EdgeInsets.only(
							left: 20.0,
							right: 20.0,
							bottom: 10.0
						),
						decoration: new BoxDecoration(
							color: Color.fromARGB(255, 240, 240, 240),
							border: new Border.all(
								width: 1.2,
								color: Colors.black12,
							),
							borderRadius: new BorderRadius.all(const Radius.circular(6.0))
						),
						child: _txtUsername,
					),
					new Container(
						margin: const EdgeInsets.only(
							left: 20.0,
							right: 20.0,
							bottom: 10.0
						),
						decoration: new BoxDecoration(
							color: Color.fromARGB(255, 240, 240, 240),
							border: new Border.all(
								width: 1.2,
								color: Colors.black12,
							),
							borderRadius: new BorderRadius.all(const Radius.circular(6.0))
						),
						child: _txtEmail,
					),
					new Container(
						margin: const EdgeInsets.only(
							left: 20.0,
							right: 20.0,
							bottom: 10.0
						),
						decoration: new BoxDecoration(
							color: Color.fromARGB(255, 240, 240, 240),
							border: new Border.all(
								width: 1.2,
								color: Colors.black12,
							),
							borderRadius: new BorderRadius.all(const Radius.circular(6.0))
						),
						child: _txtPassword,
					),
					new Container(
						margin: const EdgeInsets.only(
							left: 20.0,
							right: 20.0
						),
						child: new Row(
							children: <Widget>[
								new Expanded(
									child: new RaisedButton(
										color: Colors.blue,
										textColor: Colors.white,
										child: new Text('Login'),
										onPressed: () {
											print(user.username);
											print(user.email);
											print(user.password);
										},
									),
								)
							],
						),
					)
				],
			),
		);
	}
}