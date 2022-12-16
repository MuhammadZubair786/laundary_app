import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';


class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                      child: Text("Box"),
                      color: Colors.black,
                      height: 50,
                      width: 50,

                    ),
                    Container(
                      margin: EdgeInsets.only(top:20,left: 20),
                      child: Center(child: Text("Privacy and Policy",style: TextStyle(fontSize: 20),)))
                ],
              ),
              SizedBox(height: 80,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              
                Container(
                  child: BulletedList(
                        listOrder: ListOrder.unordered,
                        listItems: [
                          'The photos on your local cloud are viewable when you are on the local network pretty much everywhere - just upgrade to AcmePhoto.',
                          'You can view your media pretty much everywhere - just upgrade to AcmePhoto\'s Cloud service',
                          'You can also choose to use your own Amazon AWS or Google Cloud accounts',
                            'The photos on your local cloud are viewable when you are on the local network pretty much everywhere - just upgrade to AcmePhoto.',
                          'You can view your media pretty much everywhere - just upgrade to AcmePhoto\'s Cloud service',
                          'You can also choose to use your own Amazon AWS or Google Cloud accounts',
                            'You can also choose to use your own Amazon AWS or Google Cloud accounts',
                              'You can also choose to use your own Amazon AWS or Google Cloud accounts'
                        ],
                      ),
                  
                  // child: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.\n Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through  \the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.")
                  ),
                   SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                  child: ElevatedButton(
                    
                    
                                  onPressed: () {},
                                  child: Text("Decline"),
                                  style: ElevatedButton.styleFrom(
                                    
                                     primary: Color(0xff344047),
                                      shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    //border radius equal to or more than 50% of width
                                  )),
                                ),
                ),
                              SizedBox(width: 10,)
      ,          Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             primary: Color.fromARGB(255, 5, 45, 66),
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          )),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>BHRegistrationScreen()));
                          },
                          child: Text("Accept"),
                        ),
                      ),
                ],
              )
              ],
            ),
          ],
        ),
      ),
    );
  }
}