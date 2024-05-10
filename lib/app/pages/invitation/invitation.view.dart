import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:wedding/repositories.dart';

class Invitation extends StatelessWidget {
  const Invitation({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<InvitationViewModel>(
      view: () => const _View(),
      viewModel: InvitationViewModel(),
    );
  }
}

class _View extends StatelessView<InvitationViewModel> {
  const _View({key}) : super(key: key, reactive: true);

  @override
  Widget render(context, viewModel) {
    return Scaffold(
      backgroundColor: IColors.pinkBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsetsDirectional.all(20.0),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 16.0),
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: Image.asset(
                              'assets/images/2.png',
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: 40),
                          _buildSubtitleText(context),
                        ],
                      ),
                    ),
                    _buildTitleText(),
                    _buildBorder(context)
                  ],
                )),
            SelectionArea(
              child: SpGrid(
                margin: const EdgeInsets.only(top: 56),
                width: MediaQuery.of(context).size.width,
                children: [
                  SpGridItem(
                    xs: 0,
                    sm: 0,
                    md: 3,
                    lg: 3,
                    child: Image.asset('assets/images/component-3.png'),
                  ),
                  SpGridItem(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'The honor of  your presence is requested at the marriage of:',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                  color: IColors.pink50,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 16,
                                    sm: 16,
                                    md: 24,
                                    lg: 32,
                                    xl: 32,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Poornima',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                  color: Colors.black,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 35,
                                    sm: 35,
                                    md: 40,
                                    lg: 56,
                                    xl: 56,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'The daughter Lorem Ipsum is simply dummy text of th',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                  color: Colors.black,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 14,
                                    sm: 14,
                                    md: 18,
                                    lg: 22,
                                    xl: 22,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '&',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                  color: IColors.pink50,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 40,
                                    sm: 40,
                                    md: 45,
                                    lg: 56,
                                    xl: 56,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Manjunath',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                  color: Colors.black,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 35,
                                    sm: 35,
                                    md: 40,
                                    lg: 56,
                                    xl: 56,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'The son Lorem Ipsum is simply dummy text of th',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                  color: Colors.black,
                                  fontSize: edgeByWidth(
                                    context: context,
                                    xs: 14,
                                    sm: 14,
                                    md: 18,
                                    lg: 22,
                                    xl: 22,
                                  ),
                                  fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SpGridItem(
                    xs: 0,
                    sm: 0,
                    md: 3,
                    lg: 3,
                    child: Image.asset('assets/images/component-4.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 56),
            SelectionArea(
              child: SpGrid(
                spacing: 24,
                margin: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: edgeByWidth(
                    context: context,
                    xs: 16,
                    sm: 16,
                    md: 16,
                    lg: 120,
                    xl: 120,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                children: [
                  SpGridItem(
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 6,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Poornima - Manjunath / Marriage Ceremony',
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                    color: Colors.black,
                                    fontSize: edgeByWidth(
                                      context: context,
                                      xs: 20,
                                      sm: 20,
                                      md: 24,
                                      lg: 32,
                                      xl: 32,
                                    ),
                                    fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Sunday, 14 July  2024',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: Colors.black,
                                        fontSize: edgeByWidth(
                                          context: context,
                                          xs: 16,
                                          sm: 16,
                                          md: 18,
                                          lg: 22,
                                          xl: 22,
                                        ),
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled_rounded,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '08.00 - 10.00 AM',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: Colors.black,
                                        fontSize: edgeByWidth(
                                          context: context,
                                          xs: 16,
                                          sm: 16,
                                          md: 18,
                                          lg: 22,
                                          xl: 22,
                                        ),
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.location_on_rounded,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    viewModel.openMap(
                                        lat: -0.3287901,
                                        long: 100.3660321,
                                        label:
                                            'Shri Veerabhdreshwara Kalyana Mantapa,Neralagi . Hirekerur road, Shiralkoppa');
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  splashFactory: NoSplash.splashFactory,
                                  child: Text(
                                    'Shri Veerabhdreshwara Kalyana Mantapa,Neralagi . Hirekerur road, Shiralkoppa',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            color: Colors.black,
                                            fontSize: edgeByWidth(
                                              context: context,
                                              xs: 16,
                                              sm: 16,
                                              md: 18,
                                              lg: 22,
                                              xl: 22,
                                            ),
                                            fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          AspectRatio(
                            aspectRatio: edgeByWidth(
                              context: context,
                              xs: 1 / 1,
                              sm: 1 / 1,
                              md: 16 / 9,
                              lg: 16 / 9,
                              xl: 16 / 9,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: const CameraPosition(
                                    target: LatLng(14.37766, 75.26824),
                                    zoom: 16),
                                markers: {
                                  maps.Marker(
                                    markerId: maps.MarkerId('$UniqueKey'),
                                    position: const maps.LatLng(
                                        14.37766, 75.26824),
                                    draggable: false,
                                    onDragEnd: (value) {
                                      // value is the new position
                                    },
                                  )
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SpGridItem(
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 6,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Poornima - Manjunath / Marriage Reception',
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                    color: Colors.white,
                                    fontSize: edgeByWidth(
                                      context: context,
                                      xs: 20,
                                      sm: 20,
                                      md: 24,
                                      lg: 32,
                                      xl: 32,
                                    ),
                                    fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Sunday, 12 March 2023',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontSize: edgeByWidth(
                                          context: context,
                                          xs: 16,
                                          sm: 16,
                                          md: 18,
                                          lg: 22,
                                          xl: 22,
                                        ),
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '15.00 - 17.00 PM',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontSize: edgeByWidth(
                                          context: context,
                                          xs: 16,
                                          sm: 16,
                                          md: 18,
                                          lg: 22,
                                          xl: 22,
                                        ),
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.location_on_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    viewModel.openMap(
                                        lat: -0.3070926,
                                        long: 100.3689357,
                                        label:
                                            'Shri Veerabhdreshwara Kalyana Mantapa,Neralagi . Hirekerur road, Shiralkopp');
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  splashFactory: NoSplash.splashFactory,
                                  child: Text(
                                    'Shri Veerabhdreshwara Kalyana Mantapa,Neralagi . Hirekerur road, Shiralkoppa',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            color: Colors.white,
                                            fontSize: edgeByWidth(
                                              context: context,
                                              xs: 16,
                                              sm: 16,
                                              md: 18,
                                              lg: 22,
                                              xl: 22,
                                            ),
                                            fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          AspectRatio(
                            aspectRatio: edgeByWidth(
                              context: context,
                              xs: 1 / 1,
                              sm: 1 / 1,
                              md: 16 / 9,
                              lg: 16 / 9,
                              xl: 16 / 9,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: const CameraPosition(
                                    target: LatLng(14.37766, 75.26824),
                                    zoom: 16),
                                markers: {
                                  maps.Marker(
                                    markerId: maps.MarkerId('$UniqueKey'),
                                    position: const maps.LatLng(14.37766, 75.26824),
                                    draggable: false,
                                  )
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // SpGridItem(
                  //   xs: 12,
                  //   sm: 12,
                  //   md: 6,
                  //   lg: 6,
                  //   child: Container(
                  //     margin: const EdgeInsets.only(bottom: 16),
                  //     padding: const EdgeInsets.symmetric(
                  //       horizontal: 20,
                  //       vertical: 16,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: IColors.pink50,
                  //       borderRadius: BorderRadius.circular(16),
                  //     ),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text(
                  //           'Pesta Resepsi/Wedding Reception in Jakarta',
                  //           style:
                  //               Theme.of(context).textTheme.headline2!.copyWith(
                  //                   color: Colors.white,
                  //                   fontSize: edgeByWidth(
                  //                     context: context,
                  //                     xs: 20,
                  //                     sm: 20,
                  //                     md: 24,
                  //                     lg: 32,
                  //                     xl: 32,
                  //                   ),
                  //                   fontWeight: FontWeight.w400),
                  //         ),
                  //         const SizedBox(height: 24),
                  //         Row(
                  //           children: [
                  //             const Icon(
                  //               Icons.calendar_month_rounded,
                  //               color: Colors.white,
                  //             ),
                  //             const SizedBox(width: 8),
                  //             Text(
                  //               'Sunday, 12 March 2023',
                  //               style: Theme.of(context)
                  //                   .textTheme
                  //                   .headline2!
                  //                   .copyWith(
                  //                       color: Colors.white,
                  //                       fontSize: edgeByWidth(
                  //                         context: context,
                  //                         xs: 16,
                  //                         sm: 16,
                  //                         md: 18,
                  //                         lg: 22,
                  //                         xl: 22,
                  //                       ),
                  //                       fontWeight: FontWeight.w400),
                  //             ),
                  //           ],
                  //         ),
                  //         Visibility(
                  //           visible: viewModel.userSession.isNotEmpty,
                  //           child: const SizedBox(height: 24),
                  //         ),
                  //         Visibility(
                  //           visible: viewModel.userSession.isNotEmpty,
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               const Icon(
                  //                 Icons.alarm,
                  //                 color: Colors.white,
                  //               ),
                  //               const SizedBox(width: 8),
                  //               Expanded(
                  //                 child: Text(
                  //                   viewModel.userSession,
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .headline2!
                  //                       .copyWith(
                  //                           color: Colors.white,
                  //                           fontSize: edgeByWidth(
                  //                             context: context,
                  //                             xs: 16,
                  //                             sm: 16,
                  //                             md: 18,
                  //                             lg: 22,
                  //                             xl: 22,
                  //                           ),
                  //                           fontWeight: FontWeight.w400),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         const SizedBox(height: 24),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             const Icon(
                  //               Icons.location_on_rounded,
                  //               color: Colors.white,
                  //             ),
                  //             const SizedBox(width: 8),
                  //             Expanded(
                  //               child: InkWell(
                  //                 onTap: () {
                  //                   viewModel.openMap(
                  //                       lat: -6.2277417,
                  //                       long: 106.8338776,
                  //                       label:
                  //                           'Jl. H.Agus Salim no 1A, Bukittinggi, Sumatera Barat.');
                  //                 },
                  //                 splashColor: Colors.transparent,
                  //                 highlightColor: Colors.transparent,
                  //                 hoverColor: Colors.transparent,
                  //                 splashFactory: NoSplash.splashFactory,
                  //                 child: Text(
                  //                   'Palma One Grand Ballroom, Jl.HR Rasuna Said Kav. X-2 No. 4 Kuningan Jakarta Selatan, 12940',
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .headline2!
                  //                       .copyWith(
                  //                           color: Colors.white,
                  //                           fontSize: edgeByWidth(
                  //                             context: context,
                  //                             xs: 16,
                  //                             sm: 16,
                  //                             md: 18,
                  //                             lg: 22,
                  //                             xl: 22,
                  //                           ),
                  //                           fontWeight: FontWeight.w400),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SpGridItem(
                  //   xs: 12,
                  //   sm: 12,
                  //   md: 6,
                  //   lg: 6,
                  //   child: AspectRatio(
                  //     aspectRatio: edgeByWidth(
                  //       context: context,
                  //       xs: 1 / 1,
                  //       sm: 1 / 1,
                  //       md: 16 / 9,
                  //       lg: 16 / 9,
                  //       xl: 16 / 9,
                  //     ),
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(8),
                  //       child: GoogleMap(
                  //         mapType: MapType.normal,
                  //         initialCameraPosition: const CameraPosition(
                  //             target: LatLng(-6.2277417, 106.8338776),
                  //             zoom: 16),
                  //         markers: {
                  //           maps.Marker(
                  //             markerId: maps.MarkerId('$UniqueKey'),
                  //             position:
                  //                 const maps.LatLng(-6.2277417, 106.8338776),
                  //             draggable: false,
                  //           )
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 56),
            SpGrid(
              alignment: WrapAlignment.center,
              crossAlignment: WrapCrossAlignment.center,
              width: MediaQuery.of(context).size.width,
              children: [
                SpGridItem(
                  xs: 12,
                  sm: 12,
                  md: 6,
                  lg: 6,
                  child: Container(),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Center(
              child: Text(
                'Make A Wish',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.black,
                    fontSize: edgeByWidth(
                      context: context,
                      xs: 24,
                      sm: 24,
                      md: 35,
                      lg: 40,
                      xl: 40,
                    ),
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: edgeByWidth(
                  context: context,
                  xs: 16,
                  sm: 16,
                  md: 16,
                  lg: 120,
                  xl: 120,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black,
                        fontSize: edgeByWidth(
                          context: context,
                          xs: 16,
                          sm: 16,
                          md: 20,
                          lg: 20,
                          xl: 20,
                        ),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 8),
                  InputFormText(
                    controller: viewModel.nameController,
                    hintText: 'Your Full Name',
                    onChanged: (value) => viewModel.fullName = value,
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Your Wish',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black,
                        fontSize: edgeByWidth(
                          context: context,
                          xs: 16,
                          sm: 16,
                          md: 20,
                          lg: 20,
                          xl: 20,
                        ),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 100,
                    child: InputFormText(
                      controller: viewModel.commentController,
                      hintText: 'Write Your Wish',
                      onChanged: (value) => viewModel.comment = value,
                      maxLines: 10,
                      maxLength: 300,
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 46,
                        child: ButtonPrimary(
                          text: 'Submit',
                          onPressed: () => viewModel.sendComment(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: edgeByWidth(
                  context: context,
                  xs: 16,
                  sm: 16,
                  md: 16,
                  lg: 120,
                  xl: 120,
                ),
              ),
              child: StaggeredGrid.count(
                mainAxisSpacing: edgeByWidth(
                  context: context,
                  xs: 8,
                  sm: 8,
                  md: 8,
                  lg: 12,
                  xl: 12,
                ),
                crossAxisSpacing: edgeByWidth(
                  context: context,
                  xs: 8,
                  sm: 8,
                  md: 8,
                  lg: 12,
                  xl: 12,
                ),
                crossAxisCount: edgeByWidth(
                  context: context,
                  xs: 1,
                  sm: 1,
                  md: 2,
                  lg: 3,
                  xl: 4,
                ).toInt(),
                children: [
                  for (var i = 0; i < viewModel.showedComments.length; i++)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  color: IColors.black10,
                                  child: Center(
                                    child: Text(
                                      viewModel.showedComments[i].commentName!
                                          .substring(0, 2),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      viewModel.showedComments[i].commentName!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      viewModel.showedComments[i].commenyTime ==
                                              null
                                          ? '-'
                                          : viewModel
                                              .showedComments[i].commenyTime!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .overline!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                Text(
                                  viewModel.showedComments[i].commentContent!,
                                  maxLines: 3,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Visibility(
              visible:
                  viewModel.showedComments.length != viewModel.comments.length,
              child: const SizedBox(height: 24),
            ),
            Visibility(
              visible:
                  viewModel.showedComments.length != viewModel.comments.length,
              child: Center(
                child: SizedBox(
                  width: 100,
                  height: 46,
                  child: ButtonPrimary(
                    text: 'Load More',
                    onPressed: () => viewModel.showMoreComment(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 56),
            SpGrid(
              margin: EdgeInsets.symmetric(
                horizontal: edgeByWidth(
                  context: context,
                  xs: 16,
                  sm: 16,
                  md: 16,
                  lg: 120,
                  xl: 120,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: WrapAlignment.center,
              crossAlignment: WrapCrossAlignment.center,
              width: MediaQuery.of(context).size.width,
              children: [
                SpGridItem(
                  xs: 0,
                  sm: 0,
                  md: 3,
                  lg: 3,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset('assets/images/component-5.png'),
                  ),
                ),
                SpGridItem(
                  xs: 12,
                  sm: 12,
                  md: 6,
                  lg: 6,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Best Regards,',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  color: IColors.pink50,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 16),
                        Visibility(
                          visible: viewModel.inviter.isNotEmpty,
                          child: Text(
                            capitalize(viewModel.inviter),
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Colors.black,
                                    fontSize: edgeByWidth(
                                      context: context,
                                      xs: 30,
                                      sm: 30,
                                      md: 36,
                                      lg: 40,
                                      xl: 40,
                                    ),
                                    fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SpGridItem(
                  xs: 0,
                  sm: 0,
                  md: 3,
                  lg: 3,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset('assets/images/component-6.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 56),
          ],
        ),
      ),
    );
  }
  Widget _buildSubtitleText(BuildContext context) {
    final dday = DateTime(2021, 6, 19);
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;

    var ddayText = difference > 0 ? 'Days D-$difference' : '';

    return Column(
      children: [
        Text(
          'Sunday, 14 July 2024',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          ddayText,
          style: TextStyle(fontSize: 15, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget _buildTitleText() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: AutoSizeText(
          'Poornima\n &\n Manjunath',
          style: GoogleFonts.dancingScript(
            textStyle: const TextStyle(color: Colors.blue, fontSize: 100, fontWeight: FontWeight.bold),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildSubtitleText1(BuildContext context) {
    final dday = DateTime(2021, 6, 19);
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;

    var ddayText = difference > 0 ? '그 날까지 D-$difference' : '';

    return Column(
      children: [
        Text(
          'Welcome',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          ddayText,
          style: TextStyle(fontSize: 15, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildBorder(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
    );
  }

}
