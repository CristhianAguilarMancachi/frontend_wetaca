//import 'dart:ffi';

import 'package:wetaca/ui/como_funciona_page.dart';
import 'package:wetaca/ui/menu_principal_page.dart';
import 'package:wetaca/ui/olvido_password.dart';
import 'package:wetaca/ui/login.dart';
import 'package:wetaca/ui/hacer_pedido.dart';
import 'package:wetaca/ui/profile_page.dart';
import 'package:wetaca/ui/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetaca/ui/registerplatos_page.dart';
import 'package:wetaca/ui/ubicacion.dart';

import 'cubit/app_cubit.dart';
import 'ui/recover_pass_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit(),
        child: MaterialApp(
          title: 'Wetaca', // Titulo de la aplicación
          theme: ThemeData(
            // Esta es la paleta de colores de la aplicación
            primarySwatch: Colors.green,
          ),
          // ruta inicial
          initialRoute: "/",
          // rutas de la aplicación
          routes: {
            "/": (context) => const Login(), // ruta para el login
            //"/rutaPagPrincipal": (context) =>
            //    const PaginaPrincipal(), // ruta para la pagina principal
            "/hacerPedido": (context) =>
                const HacerPedido(), // ruta para hacer un pedido
            "/suscribirse": (context) =>
                const RegisterPage(), // ruta para registrarse
            "/ubicacion": (context) =>
                const Ubicacion(), // ruta para conocer la ubicación del cliente
            "/olvidopass": (context) =>
                const RecoverPassPage(), // ruta para recuperar la contraseña
            "/register": (context) => const RegisterPage(),
            "/home": (context) =>
                MenuPrincipal(), // ruta para el menu principal
            "/profile": (context) => const ProfilePage(),
            "/comoFunciona": (context) => const ComoFuncionaPage(),
            "/registerPlato": (context) => const RegisterPlatosPage()
          },
        ));
  }
}
