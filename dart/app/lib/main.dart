import 'dart:io';

import 'package:blockchain/isolate_pool.dart';
import 'package:blockchain_app/widgets/block_page.dart';
import 'package:blockchain_app/widgets/blockchain_launcher_page.dart';
import 'package:blockchain_app/widgets/blockchain_page.dart';
import 'package:blockchain_app/widgets/transaction_page.dart';
import 'package:blockchain_codecs/codecs.dart';
import 'package:blockchain_crypto/kes.dart' as kes;
import 'package:blockchain_crypto/utils.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:blockchain_crypto/ed25519.dart' as ed25519;
import 'package:blockchain_crypto/ed25519vrf.dart' as ed25519VRF;
import 'package:flutter/foundation.dart' show kIsWeb;

var _isolate = LocalCompute;

void main() async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print(
        '${record.level.name}: ${record.time}: ${record.loggerName}: ${record.message}');
  });
  if (!kIsWeb) {
    final computePool = IsolatePool(Platform.numberOfProcessors);
    _isolate = computePool.isolate;
  }
  ed25519.ed25519 = ed25519.Ed25519Isolated(_isolate);
  ed25519VRF.ed25519Vrf = ed25519VRF.Ed25519VRFIsolated(_isolate);
  kes.kesProduct = kes.KesProudctIsolated(_isolate);

  WidgetsFlutterBinding.ensureInitialized();

  initRouter();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BlockchainWidgetTester(),
      home: _home,
      onGenerateRoute: FluroRouter.appRouter.generator,
    );
  }

  get _home => Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            child: Center(child: Builder(builder: launchButton))),
      );

  Widget launchButton(BuildContext context) => TextButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlockchainLauncherPage(isolate: _isolate))),
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
          padding: MaterialStatePropertyAll(EdgeInsets.all(40))),
      child: const Text("Launch"));
}

initRouter() {
  FluroRouter.appRouter.define("/",
      handler:
          Handler(handlerFunc: (context, params) => const BlockchainPage()));
  FluroRouter.appRouter.define("/blocks/:id",
      handler: Handler(
          handlerFunc: (context, params) =>
              UnloadedBlockPage(id: decodeBlockId(params["id"]![0]))));
  FluroRouter.appRouter.define("/transactions/:id",
      handler: Handler(
          handlerFunc: (context, params) => UnloadedTransactionPage(
              id: decodeTransactionId(params["id"]![0]))));
}
