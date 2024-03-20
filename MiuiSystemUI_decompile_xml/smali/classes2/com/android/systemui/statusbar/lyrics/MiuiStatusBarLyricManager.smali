# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;
.super Ljava/lang/Object;
.source "MiuiStatusBarLyricManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# static fields
.field public static final FLAG_ALWAYS_SHOW_TICKER:I = 0x1000000

.field public static final FLAG_ONLY_UPDATE_TICKER:I = 0x2000000

.field private static final TAG:Ljava/lang/String; = "状态栏歌词"

.field public static appPackageName:Ljava/lang/String;

.field public static audioManager:Landroid/media/AudioManager;

.field public static isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static lastLyric:Ljava/lang/String;

.field public static lastLyricTime:J

.field private static mContext:Landroid/content/Context;

.field static final mHandler:Landroid/os/Handler;

.field public static miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public static notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public static showClock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static statusBarShowNetworkSpeed:I

.field public static statusBarShowNotificationIcon:I

.field public static systemStatusbarLyric:I


# direct methods
.method static bridge synthetic -$$Nest$smsendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->sendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->showClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLyricsByNotification(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 4

    .line 286
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 288
    iget v1, v0, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-lez v1, :cond_1f

    iget v1, v0, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-lez v1, :cond_1f

    .line 289
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 290
    iget-object p0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string v1, "com.miui.player"

    .line 294
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "com.miui.player:remote-notification"

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 295
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 296
    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handlerLyric()V
    .registers 5

    .line 96
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyricTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2ee0

    cmp-long v1, v1, v3

    if-lez v1, :cond_17

    .line 100
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->hideLyric()V

    return-void

    :cond_17
    if-eqz v0, :cond_2c

    .line 104
    sget v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 105
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2f

    .line 107
    :cond_2c
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->hideLyric()V

    :goto_2f
    return-void
.end method

.method public static hideLyric()V
    .registers 4

    const-string/jumbo v0, "状态栏歌词"

    const-string v1, "showLyric: 取消显示歌词"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "status_bar_show_network_speed"

    sget v3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->statusBarShowNetworkSpeed:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "status_bar_show_notification_icon"

    sget v3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->statusBarShowNotificationIcon:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "icon_blacklist"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_47

    .line 213
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->showClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 217
    :cond_47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action"

    const-string v2, "hideLyric"

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "liming.lyric"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static initMediaSessionManager(Landroid/content/Context;)V
    .registers 5

    .line 117
    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->audioManager:Landroid/media/AudioManager;

    .line 120
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 123
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricNotificationListener;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/lyrics/MiuiLyricNotificationListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    .line 125
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->setCallbackManager(Landroid/os/Handler;Landroid/media/AudioManager;)V

    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;-><init>()V

    const-string v2, "media_session"

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    .line 131
    new-instance v3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 146
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "system_statusbar_lyric"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/lyrics/observer/MiuiLyricContentObserver;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/lyrics/observer/MiuiLyricContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic lambda$initMediaSessionManager$0(Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;Ljava/util/List;)V
    .registers 6

    if-eqz p1, :cond_5d

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5d

    .line 133
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricConstant;->BLACK_APP_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 134
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 136
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 137
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MiuiStatusBarLyricManager onActiveSessionsChanged mediaController.getPackageName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "状态栏歌词"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/android/systemui/statusbar/lyrics/MiuiLyricConstant;->BLACK_APP_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 140
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_2c

    :cond_5d
    :goto_5d
    return-void
.end method

.method public static onNotificationLyric(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 228
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->getLyricsByNotification(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->sendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 241
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "收到歌词通知: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "状态栏歌词"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    if-nez v0, :cond_22

    return-void

    .line 248
    :cond_22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p0, "sendToStatusbarLyric: 包名不存在 不发送"

    .line 249
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_2e
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricConstant;->BLACK_APP_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p0, "sendToStatusbarLyric: 黑名单APP 不发送"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_3c
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_47

    .line 259
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->showLyric()V

    .line 263
    :cond_47
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 265
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    return-void

    .line 269
    :cond_58
    sput-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyric:Ljava/lang/String;

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyricTime:J

    .line 271
    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action"

    const-string v2, "lyric"

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 275
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "liming.lyric"

    .line 276
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_80
    return-void
.end method

.method public static setMiuiClock(Lcom/android/systemui/statusbar/views/MiuiClock;)V
    .registers 1

    .line 92
    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    return-void
.end method

.method public static setMiuiClockVisibility(I)I
    .registers 2

    .line 307
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->showClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 p0, 0x8

    :cond_a
    return p0
.end method

.method public static showLyric()V
    .registers 7

    const-string v0, "showLyric: 显示歌词"

    const-string/jumbo v1, "状态栏歌词"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->isShowLyrics:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v3, 0x0

    .line 163
    sput-wide v3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyricTime:J

    const/4 v0, 0x0

    .line 164
    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lastLyric:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "status_bar_show_network_speed"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->statusBarShowNetworkSpeed:I

    .line 168
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "status_bar_show_notification_icon"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->statusBarShowNotificationIcon:I

    .line 171
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "system_statusbar_lyric_notification_icon"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4e

    const-string v0, "showLyric: 隐藏通知图标"

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    :cond_4e
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "system_statusbar_lyric_icon_black_list"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, "showLyric: 隐藏黑名单图标"

    .line 180
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v5, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "icon_blacklist"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    :cond_70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    sget-object v5, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v5, :cond_9b

    const-string v5, ","

    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, "clock"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "showLyric: 隐藏时钟"

    .line 187
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->showClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->miuiClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 193
    :cond_9b
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "system_statusbar_lyric_network_speed_icon"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b7

    const-string v0, "showLyric: 隐藏网速"

    .line 195
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_b7
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onNotificationPosted: 收到onNotificationPosted通知:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "状态栏歌词"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->onNotificationLyric(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 4

    return-void
.end method

.method public onNotificationsInitialized()V
    .registers 1

    return-void
.end method
