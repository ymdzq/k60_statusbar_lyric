.class public final Lcom/android/wm/shell/pip/tv/TvPipNotificationController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;


# instance fields
.field public mActivityIcon:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public mDefaultTitle:Ljava/lang/String;

.field public mIsNotificationShown:Z

.field public mMediaSessionToken:Landroid/media/session/MediaSession$Token;

.field public final mNotificationBuilder:Landroid/app/Notification$Builder;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageName:Ljava/lang/String;

.field public mPipActions:[Landroid/app/Notification$Action;

.field public mPipSubtitle:Ljava/lang/String;

.field public mPipTitle:Ljava/lang/String;

.field public mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    const-class v0, Landroid/app/NotificationManager;

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/NotificationManager;

    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 21
    const/4 v0, 0x0

    .line 23
    new-array v1, v0, [Landroid/app/Notification$Action;

    .line 24
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipActions:[Landroid/app/Notification$Action;

    .line 26
    new-instance v1, Landroid/app/Notification$Builder;

    .line 28
    const-string v2, "TVPIP"

    .line 30
    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 40
    move-result-object v1

    .line 43
    const-string/jumbo v3, "sys"

    .line 44
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 51
    move-result-object v1

    .line 54
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 55
    move-result-object v1

    .line 58
    const v2, 0x7f0816f4    # @drawable/pip_icon 'res/drawable/pip_icon.xml'

    .line 59
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 66
    move-result-object v0

    .line 69
    const-string v1, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    .line 70
    invoke-static {p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 76
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 80
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;

    .line 82
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    .line 84
    iget-object v1, p2, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 92
    if-nez v2, :cond_1

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 98
    if-nez p2, :cond_0

    .line 100
    const/4 p2, 0x0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 104
    move-result-object p2

    .line 107
    :goto_0
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    .line 108
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 110
    :cond_1
    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;

    .line 113
    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    .line 115
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->addListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object p1

    .line 124
    const p2, 0x7f1308ed    # @string/pip_notification_unknown_title '(No title program)'

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDefaultTitle:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 134
    return-void
    .line 137
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 14
    const/high16 v0, 0xc000000

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method


# virtual methods
.method public final onActionsChanged(III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result p2

    .line 11
    new-array p2, p2, [Landroid/app/Notification$Action;

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipActions:[Landroid/app/Notification$Action;

    .line 14
    const/4 p2, 0x0

    .line 16
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipActions:[Landroid/app/Notification$Action;

    .line 17
    array-length v0, p3

    .line 19
    if-ge p2, v0, :cond_0

    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipAction;->toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;

    .line 30
    move-result-object v0

    .line 33
    aput-object v0, p3, p2

    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 39
    return-void
    .line 42
.end method

.method public final updateNotificationContent()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    if-eqz v0, :cond_7

    .line 4
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mIsNotificationShown:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto/16 :goto_5

    .line 10
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 12
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipTitle:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipTitle:Ljava/lang/String;

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageName:Ljava/lang/String;

    .line 29
    :try_start_0
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 35
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-object v1, v2

    .line 44
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v4

    .line 48
    if-nez v4, :cond_2

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDefaultTitle:Ljava/lang/String;

    .line 52
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipSubtitle:Ljava/lang/String;

    .line 58
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 63
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    .line 64
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 69
    iget-object v6, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipActions:[Landroid/app/Notification$Action;

    .line 70
    array-length v6, v6

    .line 72
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 76
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 77
    const-string v8, "TvPipNotificationController"

    .line 79
    filled-new-array {v8, v1, v4, v5, v6}, [Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    const v4, -0x4f28e7c8

    .line 85
    const-string v5, "%s: update(), title: %s, subtitle: %s, mediaSessionToken: %s, #actions: %s"

    .line 88
    invoke-static {v7, v4, v3, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v4

    .line 96
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 97
    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 99
    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipTitle:Ljava/lang/String;

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v5

    .line 108
    if-nez v5, :cond_4

    .line 109
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipTitle:Ljava/lang/String;

    .line 111
    goto :goto_3

    .line 113
    :cond_4
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageName:Ljava/lang/String;

    .line 114
    :try_start_1
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 116
    move-result-object v5

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 120
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 124
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    goto :goto_2

    .line 128
    :catch_1
    move-object v5, v2

    .line 129
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v6

    .line 133
    if-nez v6, :cond_5

    .line 134
    goto :goto_3

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDefaultTitle:Ljava/lang/String;

    .line 137
    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    move-result-object v4

    .line 142
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipSubtitle:Ljava/lang/String;

    .line 143
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 145
    move-result-object v4

    .line 148
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageName:Ljava/lang/String;

    .line 149
    :try_start_2
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 151
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 155
    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :catch_2
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 163
    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipActions:[Landroid/app/Notification$Action;

    .line 167
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 169
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mActivityIcon:Landroid/graphics/Bitmap;

    .line 172
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mContext:Landroid/content/Context;

    .line 174
    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 178
    goto :goto_4

    .line 181
    :cond_6
    const v0, 0x7f0816f4    # @drawable/pip_icon 'res/drawable/pip_icon.xml'

    .line 182
    invoke-static {v2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 185
    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 189
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    .line 192
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v3, "android.mediaSession"

    .line 197
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    .line 199
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 207
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 209
    const/4 v3, 0x1

    .line 211
    check-cast v0, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 217
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 218
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 220
    move-result-object v0

    .line 223
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 224
    new-instance v3, Landroid/app/Notification$TvExtender;

    .line 227
    invoke-direct {v3}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 229
    const-string v4, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    .line 232
    invoke-static {v2, v4}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 234
    move-result-object v2

    .line 237
    invoke-virtual {v3, v2}, Landroid/app/Notification$TvExtender;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    .line 238
    move-result-object v2

    .line 241
    invoke-virtual {v2, v0}, Landroid/app/Notification$TvExtender;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    .line 242
    move-result-object v0

    .line 245
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 246
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 249
    move-result-object v0

    .line 252
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 253
    const-string v1, "TvPip"

    .line 255
    const/16 v2, 0x44c

    .line 257
    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 259
    :cond_7
    :goto_5
    return-void
    .line 262
.end method
