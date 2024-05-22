.class public final Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mAppOpsItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field public mChoiceIndex:I

.field public final mContext:Landroid/content/Context;

.field public mInfoItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

.field public mMenuContainer:Landroid/view/ViewGroup;

.field public final mMenuItems:Ljava/util/ArrayList;

.field public mMenuMargin:I

.field public mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

.field public mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mChoiceIndex:I

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 20
    const v0, 0x7f070965    # @dimen/miui_notification_modal_menu_margin_left_right '22.2dp'

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuMargin:I

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final canBeDismissed()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object p1

    .line 19
    iget p1, p1, Landroid/app/Notification;->flags:I

    .line 20
    and-int/lit8 p1, p1, 0x40

    .line 22
    if-eqz p1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->createMenuViews(Z)V

    .line 29
    return-void
    .line 32
.end method

.method public final createMenuViews(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object v2

    .line 12
    const v3, 0x7f0d00b8    # @layout/feedback_info 'res/layout/feedback_info.xml'

    .line 13
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    .line 22
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 24
    const/4 v6, -0x1

    .line 26
    invoke-direct {v3, v1, v4, v2, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    .line 27
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 34
    move-result v3

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v3, :cond_1

    .line 39
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 41
    const-string v7, "com.android.incallui"

    .line 43
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v7

    .line 48
    if-nez v7, :cond_0

    .line 49
    const-string v7, "com.android.server.telecom"

    .line 51
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    move v3, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v3, v5

    .line 61
    :goto_0
    if-eqz v3, :cond_1

    .line 62
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 64
    const v2, 0x7f130777    # @string/miui_notification_menu_unfocus 'Turn off Notification spotlight'

    .line 66
    const v3, 0x7f081300    # @drawable/miui_notification_menu_ic_fold 'res/drawable/miui_notification_menu_ic_fold.xml'

    .line 69
    invoke-direct {p1, v1, v2, v4, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/notification/row/NotificationSnooze;I)V

    .line 72
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;

    .line 75
    invoke-direct {v2, p0, v1, p1, v6}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;I)V

    .line 77
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_2

    .line 88
    :cond_1
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 89
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    move-result v3

    .line 94
    if-eqz v3, :cond_2

    .line 95
    move v2, v5

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 99
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUidSystem(I)Z

    .line 101
    move-result v2

    .line 104
    xor-int/2addr v2, v6

    .line 105
    :goto_1
    if-eqz v2, :cond_3

    .line 106
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 108
    const v3, 0x7f130774    # @string/miui_notification_menu_title_not_allow 'Restrict'

    .line 110
    const v6, 0x7f0812ff    # @drawable/miui_notification_menu_ic_close 'res/drawable/miui_notification_menu_ic_close.xml'

    .line 113
    invoke-direct {v2, v1, v3, v4, v6}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/notification/row/NotificationSnooze;I)V

    .line 116
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;

    .line 119
    invoke-direct {v3, p0, v1, v2, v5}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;I)V

    .line 121
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 132
    if-nez p1, :cond_4

    .line 134
    if-eqz v2, :cond_4

    .line 136
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 138
    move-result-object p1

    .line 141
    const v2, 0x7f0d028e    # @layout/notification_snooze 'res/layout/notification_snooze.xml'

    .line 142
    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 148
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 149
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 151
    const v3, 0x7f130770    # @string/miui_notification_menu_snooze 'Snooze'

    .line 153
    const v5, 0x7f081302    # @drawable/miui_notification_menu_ic_snooze 'res/drawable/miui_notification_menu_ic_snooze.xml'

    .line 156
    invoke-direct {v2, v1, v3, p1, v5}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/notification/row/NotificationSnooze;I)V

    .line 159
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;

    .line 162
    const/4 v3, 0x3

    .line 164
    invoke-direct {p1, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;I)V

    .line 165
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_4
    :goto_2
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 178
    const v2, 0x7f13076a    # @string/miui_notification_menu_more_setting 'More'

    .line 180
    const v3, 0x7f081301    # @drawable/miui_notification_menu_ic_more_setting 'res/drawable/miui_notification_menu_ic_more_setting.xml'

    .line 183
    invoke-direct {p1, v1, v2, v4, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/notification/row/NotificationSnooze;I)V

    .line 186
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;

    .line 189
    const/4 v3, 0x2

    .line 191
    invoke-direct {v2, p0, v1, p1, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;I)V

    .line 192
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 195
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuContainer:Landroid/view/ViewGroup;

    .line 205
    if-eqz p1, :cond_5

    .line 207
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    goto :goto_3

    .line 212
    :cond_5
    new-instance p1, Landroid/widget/LinearLayout;

    .line 213
    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuContainer:Landroid/view/ViewGroup;

    .line 218
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 220
    move-result p1

    .line 223
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    move-result-object v2

    .line 227
    const v4, 0x7f070de1    # @dimen/notification_panel_width '@dimen/match_parent'

    .line 228
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 231
    move-result v2

    .line 234
    if-gtz v2, :cond_6

    .line 235
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 241
    move-result-object v1

    .line 244
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 245
    :cond_6
    div-int/2addr v2, p1

    .line 247
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuMargin:I

    .line 248
    mul-int/2addr p1, v3

    .line 250
    sub-int/2addr v2, p1

    .line 251
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda0;

    .line 252
    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;I)V

    .line 254
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 257
    return-void
    .line 260
.end method

.method public final getFeedbackMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMenuSnapTarget()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getMenuView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuContainer:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRevealAnimationOrigin()Landroid/graphics/Point;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isMenuVisible()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isSnappedAndOnSameSide()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isSwipedEnoughToShowMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isTowardsMenu(F)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isWithinSnapMenuThreshold()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final menuItemToExposeOnSnap()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onConfigurationChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 11
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 21
    move-result-object v1

    .line 24
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuContainer:Landroid/view/ViewGroup;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 60
    :cond_3
    :goto_1
    return-void
    .line 62
.end method

.method public final onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDismiss()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mMenuContainer:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 9
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 17
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/app/Notification;->flags:I

    .line 21
    and-int/lit8 p1, p1, 0x40

    .line 23
    if-eqz p1, :cond_1

    .line 25
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->createMenuViews(Z)V

    .line 30
    return-void
    .line 33
.end method

.method public final onParentHeightUpdate()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onParentTranslationUpdate(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSnapClosed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSnapOpen()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchEnd()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchMove(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchStart()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final resetMenu()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public final setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setMenuItems(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final shouldShowGutsOnSnapOpen()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldShowMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldSnapBack()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldUseDefaultMenuItems()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
