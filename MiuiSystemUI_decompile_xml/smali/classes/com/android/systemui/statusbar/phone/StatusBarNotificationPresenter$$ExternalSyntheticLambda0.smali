.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;I)V

    .line 14
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifShadeEventSource:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;

    .line 17
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    .line 19
    const/4 v5, 0x1

    .line 21
    if-nez v4, :cond_0

    .line 22
    move v4, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v2

    .line 26
    :goto_0
    if-eqz v4, :cond_3

    .line 27
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v1, v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;I)V

    .line 33
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    .line 36
    if-nez v4, :cond_1

    .line 38
    move v4, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v2

    .line 42
    :goto_1
    if-eqz v4, :cond_2

    .line 43
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mInterruptSuppressor:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 51
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 56
    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 62
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 64
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;I)V

    .line 66
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 71
    invoke-direct {v1, p0, v3, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;I)V

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object v4

    .line 83
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 84
    check-cast v6, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    const-string v6, "lock_screen_show_notifications"

    .line 91
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 97
    const/4 v8, -0x1

    .line 99
    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    move-result-object v4

    .line 106
    const-string v6, "lock_screen_allow_private_notifications"

    .line 107
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    move-result-object v6

    .line 112
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 113
    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    move-result-object v1

    .line 121
    const-string/jumbo v4, "zen_mode"

    .line 122
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    move-result-object v4

    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 129
    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    .line 134
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 136
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 141
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 143
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 145
    const/4 v7, 0x0

    .line 147
    invoke-virtual {v5, v6, v1, v7, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 148
    new-instance v1, Landroid/content/IntentFilter;

    .line 151
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v4, "android.intent.action.USER_ADDED"

    .line 156
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 161
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 166
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 171
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 176
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 181
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 183
    invoke-virtual {v5, v9, v1, v7, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 185
    new-instance v10, Landroid/content/IntentFilter;

    .line 188
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    const-string v1, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 193
    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 198
    const-string v11, "com.android.systemui.permission.SELF"

    .line 200
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x2

    .line 203
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 204
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 207
    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 212
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 214
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserChangedCallback:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    .line 216
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 218
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 221
    move-result v1

    .line 224
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->onChange(Z)V

    .line 232
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 235
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 237
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 239
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 241
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    .line 243
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    .line 245
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 247
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onUserSwitched(I)V

    .line 249
    return-void

    .line 252
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 253
    const-string v0, "mNotifRemovedByUserCallback already set"

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    throw p0

    .line 264
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 265
    const-string v0, "mShadeEmptiedCallback already set"

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    throw p0
    .line 276
.end method
