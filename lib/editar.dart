import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Editar extends StatefulWidget {
  const Editar({super.key});

  @override
  State<Editar> createState() => _EditarState();
}

class _EditarState extends State<Editar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 328,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Color(0xFFe5e5e5), borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Text("Inserir categoria", style: TextStyle(fontSize: 12, color: const Color(0xFF7f7f7f), fontWeight: FontWeight.bold)),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF7f7f7f),)),
                    ],
                  ),
                        
                  SizedBox(height: 16),
              
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black), borderRadius: BorderRadius.circular(16)),
                    height: 160, width: 240,
                    child: Center(child: Text("Insira sua imagem aqui", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFF7f7f7f)),)),
                  ),
                        
                  SizedBox(height: 12),
                        
                  Container(
                    width: 240,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: 200, child: Text("Novo produto", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.black,))
                      ],),
                  ),
              
                  SizedBox(height: 8),
                        
                  Container(
                    width: 240,
                    child: Text("Adicione uma descrição.", style: TextStyle(color: Color(0xFF7f7f7f), fontSize: 14),)),
                        
                  SizedBox(height: 16),
                        
                  Container(
                    decoration: BoxDecoration(color: Colors.indigo[900], borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      child: Text("R\$0,00", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    )),
                        
                    SizedBox(height: 16),
                        
                    Column(
                      children: [
                        Container(
                        decoration: BoxDecoration(color: Color(0xFF0061BB), borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                          child: Text("Atualizar produto", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          
                        )),
                        SizedBox(height: 16,),
                        Text("Aperte no campo desejado para editá-lo", style: TextStyle(color: Color(0xFF7f7f7f), fontSize: 12),),
                      ],
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}