import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../modals/globals.dart';

class SettingsComponent extends StatefulWidget {
  const SettingsComponent({Key? key}) : super(key: key);

  @override
  State<SettingsComponent> createState() => _SettingsComponentState();
}

class _SettingsComponentState extends State<SettingsComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Common',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (isIos == false) ? Colors.deepOrange : Colors.grey,
                fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          ...(isIos == false)
              ? Common.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                e['sub'],
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ).toList()
              : IOSCommon.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            e['sub'],
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ).toList(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Account',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (isIos == false) ? Colors.deepOrange : Colors.grey,
                fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          ...(isIos == false)
              ? Account.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ).toList()
              : IOSAccount.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ).toList(),
          Text(
            'Security',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (isIos == false) ? Colors.deepOrange : Colors.grey,
                fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          ...Security.map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      e['icon'],
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      e['name'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    (isIos == false)
                        ? Switch(
                            activeColor: Colors.deepOrange,
                            value: e['value'],
                            onChanged: (val) {
                              setState(() {
                                e['value'] = val;
                              });
                            })
                        : CupertinoSwitch(
                            activeColor: Colors.deepOrange,
                            value: e['value'],
                            onChanged: (val) {
                              setState(() {
                                e['value'] = val;
                              });
                            }),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ).toList(),
          Text(
            'Misc',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (isIos == false) ? Colors.deepOrange : Colors.grey,
                fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          ...Misc.map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      e['icon'],
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      e['name'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ).toList(),
        ],
      ),
    );
  }
}
