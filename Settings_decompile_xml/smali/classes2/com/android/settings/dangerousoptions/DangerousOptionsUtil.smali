.class public final Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;
.super Ljava/lang/Object;
.source "DangerousOptionsUtil.java"


# static fields
.field private static final NOTIFY_ID:I

.field private static final TITLE_IDS:Landroid/util/SparseIntArray;

.field private static highTextContrast:Z

.field private static switchAccessServiceOn:Z

.field private static switchSelectToSpeakServiceOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/R$string;->dangerous_option:I

    sput v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->NOTIFY_ID:I

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchAccessServiceOn:Z

    .line 41
    sput-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchSelectToSpeakServiceOn:Z

    .line 42
    sput-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->highTextContrast:Z

    .line 59
    new-instance v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil$1;

    invoke-direct {v0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil$1;-><init>()V

    sput-object v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->TITLE_IDS:Landroid/util/SparseIntArray;

    return-void
.end method

.method private static cancelNotification(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "notification"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 101
    sget v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->NOTIFY_ID:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static checkDangerousOptions(Landroid/content/Context;Z)V
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->isDangerousOptionsHintEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->sendNotificationIfNeeded(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static getResId(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_0

    .line 210
    sget-object p0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->TITLE_IDS:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getSelectToSpeakServiceState(Landroid/content/Context;)Z
    .locals 3

    .line 217
    invoke-static {p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static getShowScreenUpdatesState()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SurfaceFlinger"

    .line 231
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v4, "android.ui.ISurfaceComposer"

    .line 235
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v4, 0x3f2

    .line 236
    invoke-interface {v1, v4, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 237
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 238
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 239
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 241
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 242
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShowScreenUpdatesState err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DangerousOptionsUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private static getSwitchAccessServiceState(Landroid/content/Context;)Z
    .locals 3

    .line 223
    invoke-static {p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.accessibility.switchaccess"

    const-string v2, "com.android.switchaccess.SwitchAccessService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDangerousOptionsHintEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dangerous_option_hint"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static sendNotificationIfNeeded(Landroid/content/Context;)V
    .locals 7

    const-string v0, "DangerousOptionsHintChannel"

    .line 111
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->isDangerousOptionsHintEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "notification"

    .line 116
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 118
    new-instance v2, Landroid/app/NotificationChannel;

    sget v3, Lcom/android/settings/R$string;->dangerous_option:I

    .line 119
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 122
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 123
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 124
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 129
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->tryBuildContentMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    sget v0, Lcom/android/settings/R$string;->dangerous_option_hint_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 138
    sget v0, Lcom/android/settings/R$drawable;->ic_warning_smallicon:I

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->shouldJumpToAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 141
    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    .line 142
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 143
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 147
    sget p0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->NOTIFY_ID:I

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 150
    :cond_2
    sget p0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->NOTIFY_ID:I

    invoke-virtual {v1, p0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "DangerousOptionsUtil"

    const-string/jumbo v1, "sendNotificationIfNeeded: "

    .line 153
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private static shouldJumpToAccessibility()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchAccessServiceOn:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchSelectToSpeakServiceOn:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->highTextContrast:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static stopDangerousOptionsHint(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->cancelNotification(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private static tryBuildContentMsg(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 167
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_layout()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    .line 168
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "persist.sys.strictmode.visual"

    .line 170
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "always_finish_activities"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    .line 177
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_text_contrast_enabled"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    sput-boolean v6, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->highTextContrast:Z

    .line 179
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->getSwitchAccessServiceState(Landroid/content/Context;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchAccessServiceOn:Z

    .line 180
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->getSelectToSpeakServiceState(Landroid/content/Context;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchSelectToSpeakServiceOn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    or-int/2addr v0, v2

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    if-eqz v3, :cond_4

    const/16 v1, 0x1000

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    or-int/2addr v0, v1

    if-eqz v4, :cond_5

    const/16 v1, 0x2000

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    or-int/2addr v0, v1

    .line 187
    invoke-static {}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->getShowScreenUpdatesState()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x4000

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    or-int/2addr v0, v1

    .line 188
    sget-boolean v1, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchSelectToSpeakServiceOn:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x40

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    or-int/2addr v0, v1

    .line 189
    sget-boolean v1, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->switchAccessServiceOn:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x20

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    or-int/2addr v0, v1

    .line 190
    sget-boolean v1, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->highTextContrast:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x80

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    or-int/2addr v0, v1

    .line 192
    invoke-static {v0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->getResId(I)I

    move-result v1

    if-lez v1, :cond_c

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    move v2, v5

    :cond_a
    if-eqz v2, :cond_b

    .line 196
    sget v0, Lcom/android/settings/R$string;->more_dangerous_option_hint:I

    goto :goto_a

    :cond_b
    sget v0, Lcom/android/settings/R$string;->dangerous_option_hint:I

    .line 197
    :goto_a
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 195
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, ""

    return-object p0
.end method
