.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $entries:Ljava/util/List;

.field public final synthetic $sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->$sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->$entries:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->$sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;->$entries:Ljava/util/List;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    move-result v4

    .line 21
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageClassName()Ljava/lang/CharSequence;

    .line 24
    move-result-object v3

    .line 27
    const-string v5, ""

    .line 28
    if-nez v3, :cond_0

    .line 30
    move-object v3, v5

    .line 32
    :cond_0
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->canShowBadge(Ljava/lang/String;)Z

    .line 33
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v6, :cond_6

    .line 38
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 40
    move-result-object p0

    .line 43
    new-instance v8, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;

    .line 44
    const/4 v9, 0x1

    .line 46
    invoke-direct {v8, v9, v1}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;-><init>(ILjava/lang/Object;)V

    .line 47
    invoke-interface {p0, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 50
    move-result-object p0

    .line 53
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 54
    move-result-object v8

    .line 57
    invoke-interface {p0, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Ljava/util/List;

    .line 62
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p0

    .line 73
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 84
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 86
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 88
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 94
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 96
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 102
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageCount()I

    .line 104
    move-result v1

    .line 107
    add-int/2addr v7, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string p0, "com.android.contacts"

    .line 110
    const-string v1, ".activities.TwelveKeyDialer"

    .line 112
    move-object v2, v1

    .line 114
    move v3, v7

    .line 115
    move-object v1, p0

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object p0

    .line 121
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 131
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 132
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 134
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 136
    if-eqz v8, :cond_4

    .line 138
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    move-result v8

    .line 143
    if-eqz v8, :cond_4

    .line 144
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 146
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageClassName()Ljava/lang/CharSequence;

    .line 148
    move-result-object v8

    .line 151
    if-nez v8, :cond_5

    .line 152
    move-object v8, v5

    .line 154
    :cond_5
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 155
    move-result v8

    .line 158
    if-eqz v8, :cond_4

    .line 159
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 161
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 163
    move-result v8

    .line 166
    if-eqz v8, :cond_4

    .line 167
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 169
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageCount()I

    .line 171
    move-result v1

    .line 174
    add-int/2addr v7, v1

    .line 175
    goto :goto_1

    .line 176
    :cond_6
    move-object v1, v2

    .line 177
    move-object v2, v3

    .line 178
    move v3, v7

    .line 179
    :goto_2
    move v5, v6

    .line 180
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)V

    .line 181
    return-void
    .line 184
.end method
