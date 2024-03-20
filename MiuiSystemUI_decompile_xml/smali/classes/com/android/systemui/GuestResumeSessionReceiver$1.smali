.class public final Lcom/android/systemui/GuestResumeSessionReceiver$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/GuestResumeSessionReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/GuestResumeSessionReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$1;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    move-object/from16 v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/systemui/GuestResumeSessionReceiver$1;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver;

    .line 6
    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    .line 19
    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 21
    iput-object v3, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    .line 24
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 26
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 34
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    iget-object v4, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 41
    const/4 v5, 0x0

    .line 43
    const-string/jumbo v6, "systemui.guest_has_logged_in"

    .line 44
    invoke-interface {v4, v5, v0, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 47
    move-result v4

    .line 50
    const/4 v7, 0x1

    .line 51
    if-nez v4, :cond_2

    .line 52
    iget-object v4, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 54
    invoke-interface {v4, v7, v0, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 56
    move v4, v7

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-ne v4, v7, :cond_3

    .line 61
    iget-object v4, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 63
    const/4 v8, 0x2

    .line 65
    invoke-interface {v4, v8, v0, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 66
    move v4, v8

    .line 69
    :cond_3
    :goto_0
    iget-object v6, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mGuestSessionNotification:Lcom/android/systemui/GuestSessionNotification;

    .line 70
    if-gt v4, v7, :cond_4

    .line 72
    move v8, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v8, v5

    .line 76
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 80
    move-result v9

    .line 83
    if-nez v9, :cond_5

    .line 84
    goto/16 :goto_3

    .line 86
    :cond_5
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 88
    move-result v9

    .line 91
    iget-object v10, v6, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    .line 92
    if-eqz v9, :cond_6

    .line 94
    const v9, 0x7f1304cf    # @string/guest_notification_ephemeral 'All activity will be deleted on exit'

    .line 96
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v9

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    if-eqz v8, :cond_7

    .line 104
    const v9, 0x7f1304d0    # @string/guest_notification_non_ephemeral 'You can save or delete your activity on exit'

    .line 106
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v9

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    const v9, 0x7f1304d1    # @string/guest_notification_non_ephemeral_non_first_login 'Reset to delete session activity now, or you can save or delete activity on exit'

    .line 114
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v9

    .line 120
    :goto_2
    new-instance v11, Landroid/content/Intent;

    .line 121
    const-string v12, "android.intent.action.GUEST_EXIT"

    .line 123
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v15, Landroid/content/Intent;

    .line 128
    const-string v12, "android.settings.USER_SETTINGS"

    .line 130
    invoke-direct {v15, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 135
    const/high16 v14, 0x4000000

    .line 137
    invoke-static {v10, v5, v11, v14, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 139
    move-result-object v11

    .line 142
    iget-object v13, v6, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    .line 143
    const/4 v12, 0x0

    .line 145
    const/high16 v16, 0x14000000

    .line 146
    const/16 v17, 0x0

    .line 148
    iget v14, v2, Landroid/content/pm/UserInfo;->id:I

    .line 150
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 152
    move-result-object v18

    .line 155
    const/high16 v3, 0x4000000

    .line 156
    move v14, v12

    .line 158
    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 159
    move-result-object v12

    .line 162
    new-instance v13, Landroid/app/Notification$Builder;

    .line 163
    const-string v14, "ALR"

    .line 165
    invoke-direct {v13, v10, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    const v14, 0x7f080ed9    # @drawable/ic_account_circle 'res/drawable/ic_account_circle.xml'

    .line 170
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 173
    move-result-object v13

    .line 176
    const v14, 0x7f1304d2    # @string/guest_notification_session_active 'You are in guest mode'

    .line 177
    invoke-virtual {v10, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object v14

    .line 183
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 184
    move-result-object v13

    .line 187
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 188
    move-result-object v9

    .line 191
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 192
    move-result-object v9

    .line 195
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 196
    move-result-object v9

    .line 199
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 200
    move-result-object v9

    .line 203
    const v12, 0x7f0811cb    # @drawable/ic_sysbar_home 'res/drawable/ic_sysbar_home.xml'

    .line 204
    if-nez v8, :cond_8

    .line 207
    new-instance v8, Landroid/content/Intent;

    .line 209
    const-string v13, "android.intent.action.GUEST_RESET"

    .line 211
    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 216
    invoke-static {v10, v5, v8, v3, v13}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 218
    move-result-object v3

    .line 221
    const v5, 0x7f1304d9    # @string/guest_reset_guest_confirm_button 'Reset'

    .line 222
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    move-result-object v5

    .line 228
    invoke-virtual {v9, v12, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 229
    :cond_8
    const v3, 0x7f1304c2    # @string/guest_exit_button 'Exit guest mode'

    .line 232
    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 238
    invoke-virtual {v9, v12, v3, v11}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 239
    new-instance v3, Landroid/os/Bundle;

    .line 242
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 244
    const v5, 0x7f1304ce    # @string/guest_notification_app_name 'Guest mode'

    .line 247
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    move-result-object v5

    .line 253
    const-string v8, "android.substName"

    .line 254
    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 259
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 262
    move-result-object v3

    .line 265
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 266
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 268
    move-result-object v2

    .line 271
    iget-object v5, v6, Lcom/android/systemui/GuestSessionNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 272
    const/16 v6, 0x46

    .line 274
    const/4 v8, 0x0

    .line 276
    invoke-virtual {v5, v8, v6, v3, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 277
    :goto_3
    if-le v4, v7, :cond_9

    .line 280
    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$Factory;

    .line 282
    invoke-interface {v2, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$Factory;->create(I)Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    .line 284
    move-result-object v0

    .line 287
    iput-object v0, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    .line 288
    iget-object v0, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 292
    :cond_9
    return-void
    .line 295
.end method
