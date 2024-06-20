import 'package:flutter/material.dart';
import 'package:testes/editar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Column( 
          children: [
            // Barra de pesquisa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: GestureDetector(
                onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder) => Editar() ));},
                child: Center(
                        child: Row(            
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(25)),
                            
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8, right: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 264,
                                    height: 36,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: Text("Pesquise aqui", style: TextStyle(color: Colors.grey, fontSize: 14),),
                                          ),
                                          Icon(Icons.search),
                                        ],
                                      ),
                                  ),
                                ],
                              ),
                            ),
                          ),Icon(Icons.tune),
                        ],
                                  ),
                      ),
              ),
            ),

          // Categorias
          Container(
            height: 32,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.indigo[900]!), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Cervejas Lata", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Cervejas Long-Neck", style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Whiski", style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Refrigerantes e Energéticos", style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Outros", style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ),
                ),             
                ],
              ),
          ),

          

            SizedBox(height: 16,),

          // Lista de produtos
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cervejas Lata", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network("https://www.kokoriko.com.co/wp-content/uploads/2021/05/504924_HeinekenLata330.png", height: 75, width: 75,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Text("R\$4,69", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.remove)),
                                  Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text("Editar", style: TextStyle(fontSize: 12, color: Colors.white),),
                                                          ),
                                ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),

              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network("https://www.kokoriko.com.co/wp-content/uploads/2021/05/504924_HeinekenLata330.png", height: 75, width: 75,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Text("R\$4,69", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.remove)),
                                  Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text("Editar", style: TextStyle(fontSize: 12, color: Colors.white),),
                                                          ),
                                ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),

              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network("https://www.kokoriko.com.co/wp-content/uploads/2021/05/504924_HeinekenLata330.png", height: 75, width: 75,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text("R\$4,69", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.remove)),
                                  Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text("Editar", style: TextStyle(fontSize: 12, color: Colors.white),),
                                                          ),
                                ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),

              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network("https://www.kokoriko.com.co/wp-content/uploads/2021/05/504924_HeinekenLata330.png", height: 75, width: 75,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text("R\$4,69", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.remove)),
                                  Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text("Editar", style: TextStyle(fontSize: 12, color: Colors.white),),
                                                          ),
                                ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
            ],
          ),
        ),
      ]));
  }
}

        
         