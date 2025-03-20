import 'package:movie/core/common/extensions/text_style_extension.dart';
import 'package:movie/di/dependency_injection.dart';
import 'package:movie/features/movie_detail/data/model/review_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/common/widgets/loading.dart';
import '../../core/common/widgets/svg_widget.dart';
import '../../core/config/network_constants.dart';

class PostCommentsScreen extends StatefulWidget {
  final String id;
  const PostCommentsScreen({super.key, required this.id});

  @override
  State<PostCommentsScreen> createState() => _PostCommentsScreenState();
}

class _PostCommentsScreenState extends State<PostCommentsScreen> {
  // late CommentBlocCubit cubit;
  // @override
  // void initState() {
  //   super.initState();
  //   cubit = CommentBlocCubit(getIt.get());
  //   cubit.getReviews(widget.id);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Reviews film',
            style: context.titleLarge,
          )),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text(
    //       'Reviews film',
    //       style: context.titleLarge,
    //     ),
    //   ),
    //   extendBody: true,
    //   resizeToAvoidBottomInset: true,
    //   body: BlocBuilder<CommentBlocCubit, CommentBlocState>(
    //     bloc: cubit,
    //     builder: (context, state) {
    //       if (state.status == BaseMovieStatus.loading) {
    //         return const Loading();
    //       } else if (state.status == BaseMovieStatus.success) {
    //         ReviewsResponse? data = state.data.reviewsResponse;
    //         return ListView.separated(
    //           padding: const EdgeInsets.symmetric(vertical: 20),
    //           separatorBuilder: (context, index) => const Divider(),
    //           shrinkWrap: true,
    //           itemBuilder: (context, index) {
    //             ReviewModel item = data!.reviews[index];
    //             return Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 horizontal: 16,
    //               ),
    //               child: Row(
    //                 children: [
    //                   CircleAvatar(
    //                     radius: 28, // Image radius
    //                     backgroundImage: NetworkImage('$baseUrlAvatar${item.authorDetail.avatarPath}'),
    //                   ),
    //                   const SizedBox(
    //                     width: 8,
    //                   ),
    //                   Expanded(
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(item.author, style: context.labelMedium),
    //                         Text(
    //                           item.content,
    //                           maxLines: 2,
    //                           style: context.bodyMedium.copyWith(overflow: TextOverflow.ellipsis, fontSize: 12),
    //                         ),
    //                         const SizedBox(
    //                           height: 4,
    //                         ),
    //                         Row(
    //                           children: [
    //                             SvgWidget(
    //                               ic: index % 2 == 0 ? "assets/icons/ic_love.svg" : 'assets/icons/ic_heart.svg',
    //                               color: Theme.of(context).primaryColor,
    //                             ),
    //                             const SizedBox(
    //                               width: 4,
    //                             ),
    //                             Text(
    //                               '200',
    //                               style: context.bodySmall.copyWith(fontSize: 12, color: Colors.grey),
    //                             ),
    //                             const SizedBox(
    //                               width: 20,
    //                             ),
    //                             Text(
    //                               '2 days ago',
    //                               style: context.bodySmall.copyWith(fontSize: 12, color: Colors.grey),
    //                             ),
    //                             const SizedBox(
    //                               width: 20,
    //                             ),
    //                             Text(
    //                               'Reply',
    //                               style: context.bodySmall.copyWith(fontSize: 12, color: Colors.grey),
    //                             ),
    //                           ],
    //                         )
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             );
    //           },
    //           itemCount: data?.reviews != null ? data!.reviews.length : 0,
    //         );
    //       }
    //       return const SizedBox.shrink();
    //     },
    //   ),
    //   bottomSheet: IntrinsicHeight(
    //     child: Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    //       decoration: BoxDecoration(
    //         borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
    //         color: Colors.white,
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.grey.withOpacity(0.5),
    //             blurRadius: 4,
    //             offset: const Offset(0, 2), // changes position of shadow
    //           ),
    //         ],
    //       ),
    //       child: Row(children: [
    //         Expanded(
    //           child: TextFormField(
    //             maxLines: null,
    //             decoration: InputDecoration(
    //               contentPadding: const EdgeInsets.only(left: 16),
    //                 border: InputBorder.none,
    //                 fillColor: Colors.grey.withOpacity(0.1),
    //                 filled: true,
    //                 suffixIcon: const Icon(Icons.emoji_emotions)
    //             ),
    //           ),
    //         ),
    //         const SizedBox(width: 12,),
    //         const SvgWidget(ic: 'assets/icons/ic_send.svg')
    //       ],),
    //     ),
    //   ),
    // );
  }
}
