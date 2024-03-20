.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

.field public final mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/dump/DumpHandler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/LogBufferFreezer;Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    array-length v0, p3

    .line 2
    if-nez v0, :cond_0

    .line 3
    const-string p3, "--dump-priority"

    .line 5
    const-string v0, "CRITICAL"

    .line 7
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 9
    move-result-object p3

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v2, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;

    .line 21
    invoke-direct {v2, v0}, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    .line 23
    new-instance v3, Landroid/content/IntentFilter;

    .line 26
    const-string v4, "com.android.internal.intent.action.BUGREPORT_STARTED"

    .line 28
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v4, v0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 33
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 35
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/16 v8, 0x30

    .line 39
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v1, Lcom/android/systemui/dump/DumpHandler$init$1;

    .line 49
    invoke-direct {v1, v0}, Lcom/android/systemui/dump/DumpHandler$init$1;-><init>(Lcom/android/systemui/dump/DumpHandler;)V

    .line 51
    iget-object v0, v0, Lcom/android/systemui/dump/DumpHandler;->uncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v0

    .line 62
    const v1, 0x7f050056    # @bool/config_showNotificationForUnknownBatteryState 'false'

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    .line 72
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;->controller:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 74
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 76
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 79
    if-eqz v0, :cond_2

    .line 81
    const-string v0, "debug.crash_sysui"

    .line 83
    const/4 v1, 0x0

    .line 85
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 93
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 95
    throw p0

    .line 98
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 99
    if-eqz v0, :cond_3

    .line 101
    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    .line 104
    const/16 v0, 0x3e8

    .line 107
    const/16 v1, 0x384

    .line 109
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 111
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    .line 114
    invoke-direct {v0}, Lcom/android/systemui/SystemUIService$1;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    .line 119
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 121
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 126
    move-result-object v1

    .line 129
    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    .line 130
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 135
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 137
    return-void
    .line 140
.end method
