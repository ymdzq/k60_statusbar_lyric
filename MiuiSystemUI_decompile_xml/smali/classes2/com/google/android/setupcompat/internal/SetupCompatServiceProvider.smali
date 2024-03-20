.class public final Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final COMPAT_SERVICE_INTENT:Landroid/content/Intent;

.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;

.field static disableLooperCheckForTesting:Z

.field public static volatile instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;


# instance fields
.field public final connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final context:Landroid/content/Context;

.field final serviceConnection:Landroid/content/ServiceConnection;

.field public volatile serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    .line 2
    const-string v1, "SetupCompatServiceProvider"

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    const-string v1, "com.google.android.setupwizard"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "com.google.android.setupcompat.SetupCompatService.BIND"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    .line 28
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    .line 31
    return-void
    .line 33
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V

    .line 7
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 10
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 12
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    .line 32
    return-void
    .line 34
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    .locals 2

    .line 1
    const-string v0, "Context object cannot be null."

    .line 2
    if-eqz p0, :cond_2

    .line 4
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 6
    if-nez v0, :cond_1

    .line 8
    const-class v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;-><init>(Landroid/content/Context;)V

    .line 23
    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 26
    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 30
    :cond_0
    monitor-exit v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    return-object v0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
    .line 44
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 2
    return-void
    .line 4
.end method


# virtual methods
.method public createCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    return-object p0
    .line 8
.end method

.method public getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 2
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 4
    return-object p0
    .line 6
.end method

.method public getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 20
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 25
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    const-string p2, "Unknown state = "

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object p2, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    .line 61
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_1
    iget-object p0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    .line 66
    return-object p0

    .line 68
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    .line 69
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_3
    return-object v2

    .line 74
    :pswitch_4
    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 75
    const-string p1, "NOT_STARTED state only possible before instance is created."

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 79
    return-object v2

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    .line 84
    throw p1

    .line 85
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 86
    const-string p1, "getService blocks and should not be called from the main thread."

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
    .line 94
.end method

.method public final declared-synchronized requestServiceBind()V
    .locals 5

    .line 1
    const-string v0, "Unable to bind to compat service. "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    monitor-exit p0

    .line 8
    iget-object v1, v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 9
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 11
    if-ne v1, v2, :cond_0

    .line 13
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 15
    const-string v1, "Refusing to rebind since current state is already connected"

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_3
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 24
    if-eq v1, v2, :cond_1

    .line 26
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 28
    const-string v2, "Unbinding existing service connection."

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    .line 35
    iget-object v2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    .line 42
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    .line 44
    iget-object v3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 46
    const/4 v4, 0x1

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 49
    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    :try_start_5
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_0
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 75
    move-result-object v0

    .line 78
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 79
    if-eq v0, v1, :cond_3

    .line 81
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 83
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 85
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    .line 90
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 93
    const-string v1, "Context#bindService went through, now waiting for service connection"

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 97
    goto :goto_1

    .line 100
    :cond_2
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 101
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 103
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    .line 108
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 111
    const-string v1, "Context#bindService did not succeed."

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    :cond_3
    :goto_1
    monitor-exit p0

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    :try_start_6
    monitor-exit p0

    .line 123
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 124
    :goto_2
    monitor-exit p0

    .line 125
    throw v0
.end method

.method public swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 2
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 4
    iget-object v1, v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 6
    iget-object v2, p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "State changed: %s -> %s"

    .line 14
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 23
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 32
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public final waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    .line 5
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 6
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    iget-object p0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    .line 12
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->createCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    .line 26
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    :goto_0
    const-string v0, "Waiting for service to get connected"

    .line 37
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 39
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    .line 53
    iget-object p0, p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    const-string p2, "Finished waiting for service to get connected. Current state = %s"

    .line 60
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 66
    iget-object p0, p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    .line 69
    return-object p0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
    throw p1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 75
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object p1

    .line 83
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    const-string p2, "Failed to acquire connection after [%s %s]"

    .line 88
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    monitor-exit p0

    .line 99
    throw p1
    .line 100
.end method
