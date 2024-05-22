.class public final Lcom/android/systemui/wmshell/WMShell;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeOptional:Ljava/util/Optional;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

.field public final mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

.field public final mOneHandedOptional:Ljava/util/Optional;

.field public final mPipOptional:Ljava/util/Optional;

.field public final mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mShell:Lcom/android/wm/shell/sysui/ShellInterface;

.field public final mSoScSplitScreenOptional:Ljava/util/Optional;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public final mSysUiMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWakefulnessObserver:Lcom/android/systemui/wmshell/WMShell$13;

.field public final mWindowDecorRectDispatcher:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInterface;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/notetask/NoteTaskInitializer;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/android/systemui/wmshell/WMShell$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$1;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

    .line 3
    new-instance v1, Lcom/android/systemui/wmshell/WMShell$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$2;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

    .line 4
    new-instance v1, Lcom/android/systemui/wmshell/WMShell$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$3;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 5
    new-instance v1, Lcom/android/systemui/wmshell/WMShell$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$4;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 7
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    move-object v1, p5

    .line 16
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    move-object v1, p6

    .line 17
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mDesktopModeOptional:Ljava/util/Optional;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p13

    .line 19
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    move-object/from16 v1, p15

    .line 20
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v1, p17

    .line 22
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

    move-object/from16 v1, p19

    .line 23
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p18

    .line 24
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSoScSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v1, p21

    .line 25
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    move-object/from16 v1, p20

    .line 26
    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mWindowDecorRectDispatcher:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellInterface;->handleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    .line 4
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sysui/ShellInterface;->dump(Ljava/io/PrintWriter;)V

    .line 11
    return-void
    .line 14
.end method

.method public initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$11;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$11;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 7
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$12;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$12;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    .line 12
    invoke-interface {p1, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    .line 15
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$13;

    .line 18
    invoke-direct {v0, p1}, Lcom/android/systemui/wmshell/WMShell$13;-><init>(Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessObserver:Lcom/android/systemui/wmshell/WMShell$13;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$14;

    .line 32
    invoke-direct {v0, p1}, Lcom/android/systemui/wmshell/WMShell$14;-><init>(Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 34
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 37
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$15;

    .line 44
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$15;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 51
    return-void
    .line 54
.end method

.method public initPip(Lcom/android/wm/shell/pip/Pip;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$6;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/wmshell/WMShell$6;-><init>(Lcom/android/wm/shell/pip/Pip;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 9
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 17
    iget-object p1, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget p0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->onSystemUiStateChanged(I)V

    .line 28
    return-void
    .line 31
.end method

.method public initSplitScreen(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$7;-><init>(Ljava/lang/Object;I)V

    .line 5
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 8
    iget-object v2, v2, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$8;

    .line 15
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$8;-><init>(Ljava/lang/Object;I)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 22
    return-void
    .line 25
.end method

.method public final start()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    .line 12
    invoke-interface {v2, v1}, Lcom/android/wm/shell/sysui/ShellInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 19
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 21
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 44
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 48
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/tracing/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 57
    iget-object v1, v0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    .line 59
    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceables:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 68
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 70
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 73
    const/4 v1, 0x0

    .line 75
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 81
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 84
    const/4 v1, 0x1

    .line 86
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    .line 90
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 92
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 95
    const/4 v2, 0x2

    .line 97
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 101
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 103
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 106
    const/4 v2, 0x3

    .line 108
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    .line 112
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 117
    const/4 v2, 0x4

    .line 119
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mDesktopModeOptional:Ljava/util/Optional;

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

    .line 128
    iget-boolean v2, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->isEnabled:Z

    .line 130
    if-eqz v2, :cond_2

    .line 132
    iget-object v2, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->optionalBubbles:Ljava/util/Optional;

    .line 134
    invoke-virtual {v2}, Ljava/util/Optional;->isEmpty()Z

    .line 136
    move-result v2

    .line 139
    if-eqz v2, :cond_0

    .line 140
    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeHandleSystemKey$callbacks$1;

    .line 143
    invoke-direct {v2, v0}, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeHandleSystemKey$callbacks$1;-><init>(Lcom/android/systemui/notetask/NoteTaskInitializer;)V

    .line 145
    iget-object v3, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 148
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 150
    new-instance v2, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeOnRoleHoldersChanged$1;

    .line 153
    iget-object v3, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 155
    invoke-direct {v2, v3}, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeOnRoleHoldersChanged$1;-><init>(Lcom/android/systemui/notetask/NoteTaskController;)V

    .line 157
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 160
    iget-object v5, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->roleManager:Landroid/app/role/RoleManager;

    .line 162
    iget-object v6, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 164
    invoke-virtual {v5, v6, v2, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 166
    iget-object v2, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 169
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 171
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 173
    move-result v4

    .line 176
    iget-object v5, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 177
    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 179
    move-result v4

    .line 182
    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 185
    move-result-object v0

    .line 188
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/notetask/NoteTaskController;->setNoteTaskShortcutEnabled(Landroid/os/UserHandle;Z)V

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->onUserUnlockedCallback:Lcom/android/systemui/notetask/NoteTaskInitializer$onUserUnlockedCallback$1;

    .line 193
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    .line 198
    const/4 v1, 0x5

    .line 200
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    .line 201
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mWindowDecorRectDispatcher:Ljava/util/Optional;

    .line 204
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 206
    return-void

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    throw p0
    .line 212
.end method

.method public final bridge synthetic writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
