.class public final Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 20
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 22
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 34
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateLockscreenNotificationSetting()V

    .line 41
    :cond_0
    return-void

    .line 44
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 52
    move-result v0

    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, -0x1

    .line 58
    sparse-switch v0, :sswitch_data_0

    .line 59
    :goto_1
    move p1, v3

    .line 62
    goto :goto_2

    .line 63
    :sswitch_0
    const-string v0, "android.intent.action.USER_ADDED"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    const/4 p1, 0x5

    .line 73
    goto :goto_2

    .line 74
    :sswitch_1
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    const/4 p1, 0x4

    .line 84
    goto :goto_2

    .line 85
    :sswitch_2
    const-string v0, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p1

    .line 91
    if-nez p1, :cond_3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    const/4 p1, 0x3

    .line 95
    goto :goto_2

    .line 96
    :sswitch_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 103
    goto :goto_1

    .line 105
    :cond_4
    const/4 p1, 0x2

    .line 106
    goto :goto_2

    .line 107
    :sswitch_4
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 113
    if-nez p1, :cond_5

    .line 114
    goto :goto_1

    .line 116
    :cond_5
    move p1, v1

    .line 117
    goto :goto_2

    .line 118
    :sswitch_5
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p1

    .line 124
    if-nez p1, :cond_6

    .line 125
    goto :goto_1

    .line 127
    :cond_6
    move p1, v2

    .line 128
    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 129
    goto/16 :goto_5

    .line 132
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 134
    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mOverviewProxyServiceLazy:Ldagger/Lazy;

    .line 136
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 142
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 144
    if-nez p1, :cond_a

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 148
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mOverviewProxyServiceLazy:Ldagger/Lazy;

    .line 150
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 152
    move-result-object p0

    .line 155
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 158
    goto/16 :goto_5

    .line 161
    :pswitch_2
    const-string p1, "android.intent.extra.INTENT"

    .line 163
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 165
    move-result-object p1

    .line 168
    move-object v5, p1

    .line 169
    check-cast v5, Landroid/content/IntentSender;

    .line 170
    const-string p1, "android.intent.extra.INDEX"

    .line 172
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 177
    if-eqz v5, :cond_7

    .line 178
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 180
    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 182
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x0

    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v9, 0x0

    .line 187
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    :cond_7
    if-eqz p1, :cond_a

    .line 191
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 193
    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mVisibilityProviderLazy:Ldagger/Lazy;

    .line 195
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 197
    move-result-object p2

    .line 200
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 201
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 203
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 205
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 207
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 209
    move-result-object v0

    .line 212
    if-eqz v0, :cond_8

    .line 213
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 215
    move-result-object p2

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->notifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 220
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 222
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 224
    move-result-object p2

    .line 227
    check-cast p2, Ljava/lang/Number;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 230
    move-result p2

    .line 233
    invoke-static {p1, v3, p2, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 234
    move-result-object p2

    .line 237
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 242
    goto :goto_5

    .line 245
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    .line 248
    goto :goto_5

    .line 251
    :pswitch_4
    const-string p1, "android.intent.extra.user_handle"

    .line 252
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 254
    move-result p1

    .line 257
    if-eq p1, v3, :cond_9

    .line 258
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 260
    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    .line 262
    check-cast p2, Ljava/util/ArrayList;

    .line 264
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 266
    move-result-object p2

    .line 269
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    move-result v0

    .line 273
    if-eqz v0, :cond_9

    .line 274
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    move-result-object v0

    .line 279
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    .line 280
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;->onUserRemoved(I)V

    .line 282
    goto :goto_4

    .line 285
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    .line 288
    :cond_a
    :goto_5
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 292
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_5
        -0x49d08e2b -> :sswitch_4
        -0x33813a72 -> :sswitch_3
        -0x23a715d4 -> :sswitch_2
        0x31af1c32 -> :sswitch_1
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
    .line 324
.end method
