.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:[Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$1:[Landroid/service/notification/StatusBarNotification;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$1:[Landroid/service/notification/StatusBarNotification;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    array-length v4, v2

    .line 18
    const/4 v5, 0x0

    .line 19
    move v6, v5

    .line 20
    :goto_0
    if-ge v6, v4, :cond_1

    .line 21
    aget-object v7, v2, v6

    .line 23
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 25
    move-result-object v9

    .line 28
    new-instance v7, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 29
    invoke-direct {v7}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 31
    invoke-virtual {v0, v9, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 34
    move-result v8

    .line 37
    if-nez v8, :cond_0

    .line 38
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v15, 0x0

    .line 45
    const/16 v16, 0x0

    .line 46
    const/16 v17, 0x0

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    .line 50
    move-object/from16 v18, v8

    .line 52
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    .line 57
    move-object/from16 v19, v8

    .line 59
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const/16 v20, 0x0

    .line 64
    const/16 v21, 0x0

    .line 66
    const/16 v22, 0x0

    .line 68
    const-wide/16 v23, 0x0

    .line 70
    const/16 v25, 0x0

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    .line 74
    move-object/from16 v26, v8

    .line 76
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    move-object/from16 v27, v8

    .line 83
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const/16 v28, 0x0

    .line 88
    const/16 v29, 0x0

    .line 90
    const/16 v30, 0x0

    .line 92
    const/16 v31, 0x0

    .line 94
    const/16 v32, 0x0

    .line 96
    const/16 v33, 0x0

    .line 98
    const/16 v34, 0x0

    .line 100
    const/16 v35, 0x0

    .line 102
    move-object v8, v7

    .line 104
    invoke-virtual/range {v8 .. v35}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZ)V

    .line 105
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 114
    new-array v4, v5, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 116
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 121
    check-cast v3, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 122
    invoke-direct {v0, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 124
    array-length v3, v2

    .line 127
    :goto_1
    if-ge v5, v3, :cond_2

    .line 128
    aget-object v4, v2, v5

    .line 130
    invoke-virtual {v1, v4, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 135
    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 138
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v0

    .line 145
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v1

    .line 149
    if-eqz v1, :cond_3

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 156
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationsInitialized()V

    .line 158
    goto :goto_2

    .line 161
    :cond_3
    return-void
    .line 162
.end method
