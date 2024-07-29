import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:navigenai/pages/home/models/productModel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class HomeController extends GetxController {
  late WebSocketChannel channel;
  late WebSocketChannel productchannel;
  Rx<TextEditingController> queryController = TextEditingController().obs;
  RxList<Tab> categories = <Tab>[].obs;
  RxString messages = "".obs;

  RxList<ProductModel> products = <ProductModel>[].obs;

  var isConnected = false.obs;

  @override
  void onInit() {
    super.onInit();
    connectToWebSocket();
    connectToProductWebSocket();
  }

  void connectToWebSocket() {
    channel = WebSocketChannel.connect(
      Uri.parse('wss://navigen.logitrix.in/query/'),
    );

    channel.stream.listen(
      (message) {
        Map<dynamic,dynamic> data = jsonDecode(message);
        
        if (data.containsKey("message")){
          messages.value = data["message"];

        }
        if(data.containsKey("category_list")){
          categories.clear();
          List<dynamic> category_list = data['category_list'];
          
          for (Map<dynamic,dynamic> category in category_list){
            categories.add(Tab(text: category['category']));
          }
          fetchProduct(categories.first.text!);
        }
      },
      onDone: () {
        isConnected.value = false;
        reconnect();
      },
      onError: (error) {
        isConnected.value = false;
        print('WebSocket Error: $error');
      },
    );

    isConnected.value = true;
  }

  void sendMessage(String message) {
    if (isConnected.value) {
      channel.sink.add(jsonEncode({
        'message': message,
      }));
    } else {
      print('WebSocket is not connected');
    }
  }

  void reconnect() {
    Future.delayed(Duration(seconds: 5), () {
      if (!isConnected.value) {
        connectToWebSocket();
      }
    });
  }




  void connectToProductWebSocket() {
    productchannel = WebSocketChannel.connect(
      Uri.parse('wss://navigen.logitrix.in/products/'),
    );

    productchannel.stream.listen(
      (message) {
        // print(message);
        Map<dynamic,dynamic> data = jsonDecode(message);
        if (data.containsKey("products")) {
          products.clear();
          List<dynamic> product_list = data['products'];
          for (Map<dynamic,dynamic> product in product_list){
            products.add(ProductModel.fromJson(product as Map<String, dynamic>));
          }
        }
      },
      onDone: () {
        isConnected.value = false;
        
      },
      onError: (error) {
        isConnected.value = false;
        print('WebSocket Error: $error');
      },
    );

    isConnected.value = true;
  }
  
  void fetchProduct(String categoryName){
    if (isConnected.value) {
      productchannel.sink.add(jsonEncode({
        'message': categoryName,
      }));

    } else {
      print('WebSocket is not connected');
    }
  }

  @override
  void onClose() {
    channel.sink.close();
    super.onClose();
    
  }
}
