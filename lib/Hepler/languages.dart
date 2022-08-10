import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'home': 'Home',
          'trips': 'Trips',
          'expenses': 'Expenses',
          'overview': 'Overview',
          'current_month': 'Current Month',
          'private': 'Private',
          'business': 'Business',
          'trip_history': 'Trip History',
          'from': 'From:',
          'to': 'To:',
          'your_split': 'Your Split',
          'total': 'Total',
          'monthly_history': 'Monthly History',
          'trip_details': 'Trip Details',
          'expense_details': 'Expense Details',
          'notifications': 'Notifications',

        },

        //Danish (denmark)
        'da_DK': {

          'home': 'Home',
          'trips': 'Trips',
          'expenses': 'Expenses',
          'overview': 'Overview',
          'current_month': 'Current Month',
          'private': 'Private',
          'business': 'Business',
          'trip_history': 'Trip History',
          'from': 'From:',
          'to': 'To:',
          'your_split': 'Your Split',
          'total': 'Total',
          'monthly_history': 'Monthly History',
          'trip_details': 'Trip Details',
          'expense_details': 'Expense Details',
          'notifications': 'Notifications',


        },
      };
}
