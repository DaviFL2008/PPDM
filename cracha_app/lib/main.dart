import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Cracha Digital',
      theme: ThemeData(
        //-------------------- Exercicio 1 -------------------------
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        // ---------------------------------------------------------
        useMaterial3: true,
      ),
      home: const TelaCracha(),
    );
  }
}

class TelaCracha extends StatelessWidget {
  const TelaCracha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Identificacao Estudantil'),
        centerTitle: true,
        //-------------------- Exercicio 1 -------------------------
        backgroundColor: Colors.green,
        // ---------------------------------------------------------
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            //-------------------- Exercicio 1 -------------------------
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            // ---------------------------------------------------------
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          //-------------------- Exercicio 4 -------------------------
          // Se alterar 'child' para 'children' aqui, o Flutter acusa o erro:
          // "The named parameter 'children' isn't defined."
          child: Padding(
            //-------------------- Exercicio 5 -------------------------
            padding: const EdgeInsets.all(8.0),
            // ---------------------------------------------------------
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //-------------------- Exercicio 3 -------------------------
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  foregroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
                ),
                // ---------------------------------------------------------
                const SizedBox(height: 12.0),
                const Text(
                  'Ana Silva Santos',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    //-------------------- Exercicio 1 -------------------------
                    color: Colors.green,
                    // ---------------------------------------------------------
                  ),
                ),
                const Text(
                  'Desenvolvimento Mobile / PPDM',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(height: 24, thickness: 1),
                Row(
                  children: const [
                    //-------------------- Exercicio 1 -------------------------
                    Icon(Icons.badge, color: Colors.green),
                    // ---------------------------------------------------------
                    SizedBox(width: 10),
                    Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    //-------------------- Exercicio 1 -------------------------
                    Icon(Icons.email, color: Colors.green),
                    // ---------------------------------------------------------
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'ana.silva@estudante.edu.br',
                        style: TextStyle(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                //-------------------- Exercicio 2 -------------------------
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      'Status: Matriculado / Ativo',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                // ---------------------------------------------------------
                const SizedBox(height: 16.0),
                //-------------------- Exercicio 6 -------------------------
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('Validar Carteirinha'),
                ),
                // ---------------------------------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}