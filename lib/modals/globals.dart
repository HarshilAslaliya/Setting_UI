import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> Common = [
  {
    'icon': Icons.language_outlined,
    'name': 'Language',
    'sub': 'English',
  },
  {
    'icon': Icons.cloud_outlined,
    'name': 'Environment',
    'sub': 'Production',
  },
];
List<Map<String, dynamic>> IOSCommon = [
  {
    'icon': CupertinoIcons.globe,
    'name': 'Language',
    'sub': 'English',
  },
  {
    'icon': CupertinoIcons.cloud,
    'name': 'Environment',
    'sub': 'Production',
  },
];
List<Map<String, dynamic>> Account = [
  {
    'icon': Icons.phone,
    'name': 'Phone Number',
  },
  {
    'icon': Icons.email,
    'name': 'Email',
  },
  {
    'icon': Icons.exit_to_app,
    'name': 'Sign out',
  },
];
List<Map<String, dynamic>> IOSAccount = [
  {
    'icon': CupertinoIcons.phone,
    'name': 'Phone Number',
  },
  {
    'icon': CupertinoIcons.mail,
    'name': 'Email',
  },
  {
    'icon': Icons.exit_to_app,
    'name': 'Sign out',
  },
];
List<Map<String, dynamic>> Security = [
  {
    'icon': Icons.phonelink_lock,
    'name': 'Lock app in background',
    'value':true,
  },
  {
    'icon': Icons.fingerprint,
    'name': 'Use fingerprint',
    'value':false,
  },
  {
    'icon': Icons.lock,
    'name': 'Change password',
    'value':true,
  },
];
List<Map<String, dynamic>> Misc = [
  {
    'icon': Icons.file_open_outlined,
    'name': 'Terms of Service',
  },
  {
    'icon': Icons.collections_bookmark_sharp,
    'name': 'Open source licenses',
  },
];
