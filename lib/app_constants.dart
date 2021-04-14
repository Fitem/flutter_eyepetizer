class Constants {
  static const String profile = "profile";
  static const String context = "context";

  /* 请求API */
  static const String BASE_URL = "http://baobab.kaiyanapp.com/";
  // 首页-推荐列表 http://baobab.kaiyanapp.com/api/v5/index/tab/allRec?page=0
  static const String HOMEPAGE_RECOMMEND_URL = "${BASE_URL}api/v5/index/tab/allRec?page=0";
  // 列表类型
  static const int UNKNOWN = -1;              //未知类型，使用EmptyViewHolder容错处理。
  static const int  CUSTOM_HEADER = 0;         //自定义头部类型。
  static const int  TEXT_CARD_HEADER1 = 1;
  static const int  TEXT_CARD_HEADER2 = 2;
  static const int  TEXT_CARD_HEADER3 = 3;
  static const int  TEXT_CARD_HEADER4 = 4;     //type:textCard -> dataType:TextCard,type:header4
  static const int  TEXT_CARD_HEADER5 = 5;     //type:textCard -> dataType:TextCard -> type:header5
  static const int  TEXT_CARD_HEADER6 = 6;
  static const int  TEXT_CARD_HEADER7 = 7;    //type:textCard -> dataType:TextCardWithRightAndLeftTitle,type:header7
  static const int  TEXT_CARD_HEADER8 = 8;    //type:textCard -> dataType:TextCardWithRightAndLeftTitle,type:header8
  static const int  TEXT_CARD_FOOTER1 = 9;
  static const int  TEXT_CARD_FOOTER2 = 10;    //type:textCard -> dataType:TextCard,type:footer2
  static const int  TEXT_CARD_FOOTER3 = 11;    //type:textCard -> dataType:TextCardWithTagId,type:footer3
  static const int  BANNER = 12;               //type:banner -> dataType:Banner
  static const int  BANNER3 = 13;              //type:banner3-> dataType:Banner
  static const int  FOLLOW_CARD = 14;          //type:followCard -> dataType:FollowCard -> type:video -> dataType:VideoBeanForClient
  static const int  TAG_BRIEFCARD = 15;        //type:briefCard -> dataType:TagBriefCard
  static const int  TOPIC_BRIEFCARD = 16;     //type:briefCard -> dataType:TopicBriefCard
  static const int  COLUMN_CARD_LIST = 17;      //type:columnCardList -> dataType:ItemCollection
  static const int  VIDEO_SMALL_CARD = 18;     //type:videoSmallCard -> dataType:VideoBeanForClient
  static const int  INFORMATION_CARD = 19;     //type:informationCard -> dataType:InformationCard
  static const int  AUTO_PLAY_VIDEO_AD = 20;   //type:autoPlayVideoAd -> dataType:AutoPlayVideoAdDetail
  static const int  HORIZONTAL_SCROLL_CARD = 21;    //type:horizontalScrollCard -> dataType:HorizontalScrollCard
  static const int  SPECIAL_SQUARE_CARD_COLLECTION = 22;   //type:specialSquareCardCollection -> dataType:ItemCollection
  static const int  UGC_SELECTED_CARD_COLLECTION = 23;   //type:ugcSelectedCardCollection -> dataType:ItemCollection
  static const int  MAX = 100;   //避免外部其他类型与此处包含的某个类型重复。


  /* restorationId */
  static const String HOME_ROUTE = "home_route";
  static const String HOME_PAGE = "home_page";

  /* registerRestorationId */
  static const String HOME_ROUTE_TABLE_INDEX = "home_route_tab_index";
  static const String HOME_PAGE_TABLE_INDEX = "home_page_tab_index";
}
