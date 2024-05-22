.class public final Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $exitMode:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$exitMode:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/modal/ModalController;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$exitMode:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$r8$classId:I

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 11
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$exitMode:Ljava/lang/Object;

    .line 13
    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->exitModal(Ljava/lang/String;)V

    .line 17
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 20
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mIsMiPlayModal:Z

    .line 22
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 27
    if-nez v1, :cond_0

    .line 29
    move-object v1, v4

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 32
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 35
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeContentView()V

    .line 37
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 40
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 42
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 44
    if-nez v0, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    move-object v4, v0

    .line 49
    :goto_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeContentView()V

    .line 50
    return-void

    .line 53
    :goto_1
    const-class v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 54
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 60
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->$exitMode:Ljava/lang/Object;

    .line 62
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 64
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 66
    move-result-object v3

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    new-instance v15, Lcom/miui/systemui/events/MenuOpenEvent;

    .line 73
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 75
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 80
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 81
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 83
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 85
    move-result-wide v7

    .line 88
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 89
    move-result-object v9

    .line 92
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 93
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 95
    move-result v10

    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 99
    move-result-object v11

    .line 102
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 103
    move-result v12

    .line 106
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsNotificationGrouped(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 107
    move-result-object v13

    .line 110
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 111
    move-result v14

    .line 114
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 115
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 120
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 121
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mImportantWhitelist:Ljava/util/List;

    .line 123
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 125
    move-result v2

    .line 128
    const/4 v0, 0x1

    .line 129
    if-eqz v2, :cond_3

    .line 130
    move v2, v0

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    const-string v2, "com.xiaomi.xmsf"

    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 142
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 144
    move-result-object v2

    .line 147
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 148
    const-string v4, "mipush_class"

    .line 150
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 152
    move-result v16

    .line 155
    if-eqz v16, :cond_5

    .line 156
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 158
    move-result v2

    .line 161
    if-lt v2, v0, :cond_4

    .line 162
    const/16 v4, 0x8

    .line 164
    if-gt v2, v4, :cond_4

    .line 166
    goto :goto_2

    .line 168
    :cond_4
    const/4 v2, 0x0

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const/4 v2, -0x1

    .line 171
    :goto_2
    move-object v4, v15

    .line 172
    move-object v0, v15

    .line 173
    move v15, v2

    .line 174
    invoke-direct/range {v4 .. v15}, Lcom/miui/systemui/events/MenuOpenEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V

    .line 175
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 178
    invoke-interface {v2, v0}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 180
    new-instance v2, Ljava/util/HashMap;

    .line 183
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {v0}, Lcom/miui/systemui/events/MenuOpenEvent;->getIndex()I

    .line 188
    move-result v4

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v4

    .line 195
    const-string v5, "index"

    .line 196
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 201
    const-string/jumbo v4, "sbn"

    .line 203
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v3, "source"

    .line 209
    invoke-virtual {v0}, Lcom/miui/systemui/events/MenuOpenEvent;->getSource()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 215
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 219
    const-string v3, "notification_open_menu"

    .line 221
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 223
    const/4 v1, 0x1

    .line 226
    move-object/from16 v0, p0

    .line 227
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 229
    const/4 v2, 0x0

    .line 231
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 232
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->onModalChangeListeners:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    move-result-object v0

    .line 239
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    move-result v2

    .line 243
    if-eqz v2, :cond_6

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    move-result-object v2

    .line 249
    check-cast v2, Lcom/android/systemui/statusbar/notification/modal/ModalController$OnModalChangeListener;

    .line 250
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalController$OnModalChangeListener;->onChange(Z)V

    .line 252
    goto :goto_3

    .line 255
    :cond_6
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 258
.end method
