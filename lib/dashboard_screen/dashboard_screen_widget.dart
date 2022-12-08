import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_list_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_swipeable_stack.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class DashboardScreenWidget extends StatefulWidget {
  const DashboardScreenWidget({Key? key}) : super(key: key);

  @override
  _DashboardScreenWidgetState createState() => _DashboardScreenWidgetState();
}

class _DashboardScreenWidgetState extends State<DashboardScreenWidget> {
  String? dropDownValue;
  late SwipeableCardSectionController swipeableStackController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    swipeableStackController = SwipeableCardSectionController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Color(0xFF4FCAFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 10, 0, 0),
                      child: Text(
                        'Actions',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: InkWell(
                onTap: () async {
                  context.pushNamed('allChatPage');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: Icon(
                        Icons.chat,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                      child: Text(
                        'Chats',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: InkWell(
                onTap: () async {
                  context.pushNamed('editProfile');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                      child: Text(
                        'Profile',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF4FCAFF),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.dehaze,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          'Dashboard',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthUserStreamWidget(
                    child: FlutterFlowDropDown<String>(
                      initialOption: dropDownValue ??= valueOrDefault(
                          currentUserDocument?.enrolledClasses, ''),
                      options: ['CIS 350', 'CIS 353', 'CIS 365', 'CIS 241'],
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: 110,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      hintText: 'Please select...',
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Class#',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: AuthUserStreamWidget(
                    child: FutureBuilder<List<UsersRecord>>(
                      future: queryUsersRecordOnce(
                        queryBuilder: (usersRecord) => usersRecord.whereNotIn(
                            'uid',
                            functions.combineLists(
                                        (currentUserDocument?.matches
                                                    ?.toList() ??
                                                [])
                                            .toList(),
                                        (currentUserDocument?.rejects
                                                    ?.toList() ??
                                                [])
                                            .toList()) !=
                                    ''
                                ? functions.combineLists(
                                    (currentUserDocument?.matches?.toList() ??
                                            [])
                                        .toList(),
                                    (currentUserDocument?.rejects?.toList() ??
                                            [])
                                        .toList())
                                : null),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> swipeableStackUsersRecordList =
                            snapshot.data!
                                .where((u) => u.uid != currentUserUid)
                                .toList();
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final swipeableStackUsersRecord =
                            swipeableStackUsersRecordList.isNotEmpty
                                ? swipeableStackUsersRecordList.first
                                : null;
                        return FlutterFlowSwipeableStack(
                          topCardHeightFraction: 0.72,
                          middleCardHeightFraction: 0.68,
                          botttomCardHeightFraction: 0.75,
                          topCardWidthFraction: 0.95,
                          middleCardWidthFraction: 0.85,
                          botttomCardWidthFraction: 0.8,
                          onSwipeFn: (index) {},
                          onLeftSwipe: (index) async {
                            final usersUpdateData = {
                              'Rejects': FieldValue.arrayUnion(
                                  [swipeableStackUsersRecord!.uid]),
                            };
                            await currentUserReference!.update(usersUpdateData);

                            context.pushNamed('DashboardScreen');
                          },
                          onRightSwipe: (index) async {
                            final usersUpdateData = {
                              'Matches': FieldValue.arrayUnion(
                                  [swipeableStackUsersRecord!.uid]),
                            };
                            await currentUserReference!.update(usersUpdateData);
                            if (swipeableStackUsersRecord!.matches!
                                .toList()
                                .contains(swipeableStackUsersRecord!.uid)) {
                              final chatsCreateData = {
                                ...createChatsRecordData(
                                  userA: swipeableStackUsersRecord!.reference,
                                  userB: currentUserReference,
                                  lastMessage: '\"\"',
                                  lastMessageTime: getCurrentTimestamp,
                                ),
                                'users': functions.createChatUserList(
                                    swipeableStackUsersRecord!.reference,
                                    currentUserReference!),
                              };
                              await ChatsRecord.collection
                                  .doc()
                                  .set(chatsCreateData);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'You have a match',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x00000000),
                                ),
                              );
                              await Future.delayed(
                                  const Duration(milliseconds: 3000));
                            }

                            context.goNamed(
                              'DashboardScreen',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          onUpSwipe: (index) {},
                          onDownSwipe: (index) {},
                          itemBuilder: (context, index) {
                            return [
                              () => Visibility(
                                    visible:
                                        !(swipeableStackUsersRecord != null),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: EmptyListWidget(),
                                      ),
                                    ),
                                  ),
                              () => Visibility(
                                    visible: swipeableStackUsersRecord != null,
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            swipeableStackUsersRecord!
                                                .displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          ),
                                          Text(
                                            swipeableStackUsersRecord!
                                                .projectIdea!,
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          ),
                                          Text(
                                            swipeableStackUsersRecord!
                                                .enrolledClasses!,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          ),
                                          Text(
                                            swipeableStackUsersRecord!
                                                .description!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          ),
                                          Text(
                                            swipeableStackUsersRecord!
                                                .previousProjects!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            ][index]();
                          },
                          itemCount: 2,
                          controller: swipeableStackController,
                          enableSwipeUp: false,
                          enableSwipeDown: false,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () async {
                        swipeableStackController.triggerSwipeLeft();
                      },
                      child: Icon(
                        Icons.cancel,
                        color: Color(0xFFFF0004),
                        size: 60,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        swipeableStackController.triggerSwipeUp();
                      },
                      child: Icon(
                        Icons.star_rounded,
                        color: Color(0xBDFFD04C),
                        size: 70,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        swipeableStackController.triggerSwipeRight();
                      },
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFF00FF0D),
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
