import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                          child: Image.network(
                            'https://m.media-amazon.com/images/M/MV5BMjI2NTI0NjczM15BMl5BanBnXkFtZTgwMDc4NDI1NDM@._V1_.jpg',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Colors.yellow, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text('Nicholas Adams',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const Text(
                  'nicholasAdams@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(189, 50),
                        primary: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Upgrade to PRO',
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  height: 20,
                ),
                manageList(
                  icon: const Icon(
                    Icons.privacy_tip,
                    color: Colors.black,
                  ),
                  text: 'Privacy',
                ),
                manageList(
                  icon: const Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  text: 'Purchase History',
                ),
                manageList(
                  icon: const Icon(
                    Icons.help,
                    color: Colors.black,
                  ),
                  text: 'Help & Support',
                ),
                manageList(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  text: 'Settings',
                ),
                manageList(
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.black,
                  ),
                  text: 'Invite a Friend',
                ),
                manageList(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  text: 'LogOut',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget manageList({Icon? icon, String? text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.black12)),
        selected: true,
        selectedTileColor: Colors.white,
        leading: icon,
        title: Text(
          text!,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: const Icon(
          Icons.arrow_right,
          color: Colors.black,
        ),
      ),
    );
  }
}
