.class public final synthetic Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/ExpandedNotification;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 7
    iput p3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final updateUserState(Lcom/android/systemui/ForegroundServicesUserState;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 9
    invoke-static {v1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 11
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 18
    move-result-object p0

    .line 21
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 22
    if-eqz p0, :cond_9

    .line 24
    const-string v0, "android.foregroundApps"

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 32
    move-result-object v0

    .line 35
    iget-wide v0, v0, Landroid/app/Notification;->when:J

    .line 36
    if-eqz p0, :cond_0

    .line 38
    array-length v2, p0

    .line 40
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, [Ljava/lang/String;

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    iput-object p0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 49
    iput-wide v0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    .line 51
    goto/16 :goto_3

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 62
    iget-object v5, p1, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 63
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 68
    check-cast v6, Landroid/util/ArraySet;

    .line 69
    if-nez v6, :cond_2

    .line 71
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 77
    move-result v6

    .line 80
    if-nez v6, :cond_3

    .line 81
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/systemui/ForegroundServicesUserState;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    .line 86
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 91
    check-cast v6, Landroid/util/ArraySet;

    .line 92
    if-nez v6, :cond_4

    .line 94
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 100
    move-result v4

    .line 103
    if-nez v4, :cond_5

    .line 104
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 109
    move-result-object v2

    .line 112
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 113
    and-int/lit8 v2, v2, 0x40

    .line 115
    if-eqz v2, :cond_7

    .line 117
    iget p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;->f$2:I

    .line 119
    if-le p0, v3, :cond_7

    .line 121
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 126
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 130
    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 134
    if-nez v4, :cond_6

    .line 135
    new-instance v4, Landroid/util/ArraySet;

    .line 137
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 139
    invoke-virtual {v5, p0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_6
    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 148
    check-cast p0, Landroid/util/ArraySet;

    .line 149
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_7
    iget-object p0, v0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 156
    move-result-object v0

    .line 159
    invoke-static {p0, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 160
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    .line 164
    move-result p0

    .line 167
    if-eqz p0, :cond_9

    .line 168
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 173
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    new-instance v1, Landroid/util/ArraySet;

    .line 184
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 186
    invoke-virtual {p1, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_8
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object p0

    .line 195
    check-cast p0, Landroid/util/ArraySet;

    .line 196
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_9
    :goto_3
    return v3
    .line 201
.end method
