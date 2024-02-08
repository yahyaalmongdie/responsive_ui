import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/all_expenses_item_model.dart';
import 'package:responcive_dashboard/utils/app_images.dart';
import 'package:responcive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({
    super.key,
  });

    

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int currentIndex = 0;
List<AllExpensesItemModel> allExpensesItem = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: r'$20,129',
        title: "Balance"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: r'$20,129',
        title: "Income"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: r'$20,129',
        title: "Expenses"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

         Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 0 ? true : false,
              allExpensesItemModel:allExpensesItem[0],
            ),

          ),
        )
        , const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 1 ? true : false,
              allExpensesItemModel: allExpensesItem[1],
            ),
          ),
        ),

                 const SizedBox(width: 8,),
                   Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 2 ? true : false,
              allExpensesItemModel: allExpensesItem[2],
            ),
          ),
        ),

      ],
    );

    // return Row(
    //     //way one
    //     children:
    //         AllExpensesItemListView.allExpensesItem.asMap().entries.map((e) {
    //   int index = e.key;
    //   var item = e.value;

    //   return Expanded(
    //     child: Container(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 1),
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               currentIndex = index;
    //             });
    //           },
    //           child: AllExpensesItem(
    //             isSelected: currentIndex == index ? true : false,
    //             allExpensesItemModel: item,
    //           ),
    //         )),
    //   );
    // }).toList()

//way Tow
        //  List.generate(
        //     allExpensesItem.length,
        //     (index) => Expanded(
        //           child: Container(
        //               margin: index == 1
        //                   ? const EdgeInsets.symmetric(horizontal: 12)
        //                   : null,
        //               // padding: const EdgeInsets.symmetric(
        //               //     horizontal: 20, vertical: 16),
        //               // decoration: ShapeDecoration(
        //               //   color: Colors.white,
        //               //   shape: RoundedRectangleBorder(
        //               //     side: const BorderSide(
        //               //         width: 1, color: Color(0xFFF1F1F1)),
        //               //     borderRadius: BorderRadius.circular(12),
        //               // ),
        //               // ),
        //               child: AllExpensesItem(
        //                 allExpensesItemModel: allExpensesItem[index],
        //               )),
        //         )

        //         )

        // );
  }
}
