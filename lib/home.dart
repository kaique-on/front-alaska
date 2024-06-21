import 'package:flutter/material.dart';
import 'package:testes/editar.dart';
import 'package:testes/field.dart';

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
                onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Editar() ));},
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
                          ),const Icon(Icons.tune),
                        ],
                                  ),
                      ),
              ),
            ),

          // Categorias
          SizedBox(
            height: 32,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.indigo[900]!), borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Todos", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),),
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
                        child: Text("Cervejas Lata", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
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
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Cervejas Long-Neck", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey,), borderRadius: BorderRadius.circular(25)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Whiski", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
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
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Refrigerantes e Energéticos", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
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
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Text("Outros", style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ),
                ),             
                ],
              ),
          ),

          

            const SizedBox(height: 16,),

          // Lista de produtos
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Todos", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8,),
              Container(
                decoration: const BoxDecoration(
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
                          const Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
                                    icon: const Icon(Icons.remove)),
                                  const Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: const Padding(
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
              const SizedBox(height: 24,),

              Container(
                decoration: const BoxDecoration(
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
                          const Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
                                    icon: const Icon(Icons.remove)),
                                  const Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: const Padding(
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
              const SizedBox(height: 24,),

              Container(
                decoration: const BoxDecoration(
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
                          const Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
                                    icon: const Icon(Icons.remove)),
                                  const Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: const Padding(
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
              const SizedBox(height: 24,),

              Container(
                decoration: const BoxDecoration(
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
                          const Text("Heineken 350ml", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
                                    icon: const Icon(Icons.remove)),
                                  const Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.add)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Container( decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(16)),
                                  child: const Padding(
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
              const SizedBox(height: 24,),
            ],
          ),
        ),
      ]));
  }
}

        
         
/*
Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(imageUrl, height: 75, width: 75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        price,
                        style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove),
                        ),
                        Text(
                          quantity,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[900],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            "Editar",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
return Column(
                      children: [
                        //categorias
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Row(
                            children: categories.map((category) {
                              return GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    if (category == "geral") {
                                      productsFuture = productController.getAllProducts(); // Carrega todos os produtos
                                    } else {
                                      productsFuture = productController.getAllProducts(categoryFilter: category);
                                    }
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    category,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),


 */