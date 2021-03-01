import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux/ui/home_page/home_page_bloc.dart';
import 'package:get/get.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Flux App'),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: controller.appService.getTesteDocuments(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done &&
                  snapshot.connectionState != ConnectionState.active) {
                return SliverFillRemaining(
                  child: CupertinoActivityIndicator(),
                );
              }
              return SliverToBoxAdapter(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (ctx, index) {
                    final snap = snapshot.data.docs[index];
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Card(
                        child: ListTile(
                          title: Text('${snap.data()['title']}'),
                          subtitle: Text('documentId: ${snap.id}'),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
