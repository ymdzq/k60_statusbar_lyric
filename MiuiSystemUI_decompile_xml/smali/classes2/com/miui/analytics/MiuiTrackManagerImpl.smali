.class public Lcom/miui/analytics/MiuiTrackManagerImpl;
.super Lcom/miui/analytics/MiuiTrackManagerStub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final FLAG_NON_ANONYMOUS:I = 0x2

.field private static final FLAG_NOT_LIMITED_BY_USER_EXPERIENCE_PLAN:I = 0x1

.field private static final SERVER_CLASS_NAME:Ljava/lang/String; = "com.miui.analytics.onetrack.TrackService"

.field private static final SERVER_PKG_NAME:Ljava/lang/String; = "com.miui.analytics"

.field private static final TAG:Ljava/lang/String; = "MiuiTrackManager"

.field private static volatile mTrackManager:Lcom/miui/analytics/MiuiTrackManagerImpl;


# instance fields
.field private mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mBindOneTrackService:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mITrackBinder:Lcom/miui/analytics/ITrackBinder;

.field private mInitComplete:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mTrackLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$bUeT1HcJNOuS8nLmA4oMdIkNzbc(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/analytics/MiuiTrackManagerImpl;->lambda$trackEvents$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$nnXPHlqnRYneg1u9TIdSYVaapZ8(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/analytics/MiuiTrackManagerImpl;->lambda$trackEvent$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmBgExecutor(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmBindOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBindOneTrackService:Ljava/lang/Runnable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmITrackBinder(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/miui/analytics/ITrackBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnection(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackLock(Lcom/miui/analytics/MiuiTrackManagerImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmITrackBinder(Lcom/miui/analytics/MiuiTrackManagerImpl;Lcom/miui/analytics/ITrackBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mbindOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->bindOneTrackService()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mcloseOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/MiuiTrackManagerImpl;->closeOneTrackService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiTrackManagerStub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/miui/analytics/MiuiTrackManagerImpl$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/analytics/MiuiTrackManagerImpl$1;-><init>(Lcom/miui/analytics/MiuiTrackManagerImpl;)V

    .line 14
    iput-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBindOneTrackService:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/analytics/MiuiTrackManagerImpl$3;-><init>(Lcom/miui/analytics/MiuiTrackManagerImpl;)V

    .line 21
    iput-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 24
    return-void
    .line 26
.end method

.method private bindOneTrackService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "MiuiTrackManager"

    .line 6
    const-string v0, "bind context is null."

    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    const-string p0, "MiuiTrackManager"

    .line 21
    const-string v1, "Track service already bind."

    .line 23
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 31
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string v1, "com.miui.analytics"

    .line 36
    const-string v2, "com.miui.analytics.onetrack.TrackService"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-instance v1, Lcom/miui/analytics/MiuiTrackManagerImpl$2;

    .line 43
    invoke-direct {v1, p0}, Lcom/miui/analytics/MiuiTrackManagerImpl$2;-><init>(Lcom/miui/analytics/MiuiTrackManagerImpl;)V

    .line 45
    iput-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 48
    const-string v1, "MiuiTrackManager"

    .line 50
    const-string v2, "Start Bind OneTrack Service"

    .line 52
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mContext:Landroid/content/Context;

    .line 57
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 59
    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const-string p0, "MiuiTrackManager"

    .line 70
    const-string v0, "Bind OneTrack Service Exception"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
    .line 80
.end method

.method private closeOneTrackService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-string p0, "MiuiTrackManager"

    .line 4
    const-string/jumbo p1, "unbind context is null."

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    if-eqz p2, :cond_1

    .line 20
    invoke-interface {v1}, Lcom/miui/analytics/ITrackBinder;->asBinder()Landroid/os/IBinder;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 26
    const/4 v3, 0x0

    .line 28
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    const-string p1, "MiuiTrackManager"

    .line 35
    const-string/jumbo p2, "unbind success."

    .line 37
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "MiuiTrackManager"

    .line 44
    const-string/jumbo p2, "unbind failed, connection is null"

    .line 46
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 53
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
    .line 59
.end method

.method private synthetic lambda$trackEvent$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-interface {p0, p1, p2, p3, v1}, Lcom/miui/analytics/ITrackBinder;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
    .line 23
.end method

.method private synthetic lambda$trackEvents$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mTrackLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mITrackBinder:Lcom/miui/analytics/ITrackBinder;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-interface {p0, p1, p2, p3, v1}, Lcom/miui/analytics/ITrackBinder;->trackEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
    .line 23
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    invoke-direct {p0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->bindOneTrackService()V

    .line 6
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mInitComplete:Z

    .line 10
    return-void
    .line 12
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mInitComplete:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 7
    new-instance v7, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;

    .line 9
    const/4 v6, 0x1

    .line 11
    move-object v1, v7

    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 17
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 20
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
    .line 25
.end method

.method public trackEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mInitComplete:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 7
    new-instance v7, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;

    .line 9
    const/4 v6, 0x0

    .line 11
    move-object v1, v7

    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 17
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 20
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
    .line 25
.end method
