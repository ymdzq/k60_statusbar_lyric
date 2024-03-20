.class public Lcom/android/systemui/dreams/DreamOverlayService;
.super Landroid/service/dreams/DreamOverlayService;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

.field public final mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

.field public mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayService$2;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLowLightDreamComponent:Landroid/content/ComponentName;

.field public mStarted:Z

.field public final mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mWindow:Landroid/view/Window;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DreamOverlayService"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/DreamOverlayLifecycleOwner;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/WindowManager;Lcom/android/systemui/complication/dagger/ComplicationComponent$Factory;Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent$Factory;Lcom/android/systemui/dreams/dagger/DreamOverlayComponent$Factory;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/touch/TouchInsetManager;Landroid/content/ComponentName;Lcom/android/systemui/dreams/DreamOverlayCallbackController;Ljava/lang/String;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move-object/from16 v3, p9

    .line 5
    move-object/from16 v4, p11

    .line 7
    invoke-direct {p0, p3}, Landroid/service/dreams/DreamOverlayService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 9
    const/4 v5, 0x0

    .line 12
    iput-boolean v5, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    .line 13
    iput-boolean v5, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    .line 15
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayService$1;

    .line 17
    invoke-direct {v5, p0}, Lcom/android/systemui/dreams/DreamOverlayService$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    .line 19
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 22
    new-instance v6, Lcom/android/systemui/dreams/DreamOverlayService$2;

    .line 24
    invoke-direct {v6, p0}, Lcom/android/systemui/dreams/DreamOverlayService$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    .line 26
    iput-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayService$2;

    .line 29
    move-object v6, p1

    .line 31
    iput-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    .line 32
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 34
    move-object v6, p4

    .line 36
    iput-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 39
    move-object/from16 v6, p12

    .line 41
    iput-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mLowLightDreamComponent:Landroid/content/ComponentName;

    .line 43
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 45
    move-object v3, p8

    .line 48
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 49
    move-object/from16 v3, p10

    .line 51
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 53
    move-object/from16 v3, p13

    .line 55
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    .line 57
    move-object/from16 v3, p14

    .line 59
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowTitle:Ljava/lang/String;

    .line 61
    new-instance v3, Landroidx/lifecycle/ViewModelStore;

    .line 63
    invoke-direct {v3}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 65
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda1;

    .line 68
    invoke-direct {v5}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda1;-><init>()V

    .line 70
    move-object v6, p5

    .line 73
    invoke-interface {p5, p2, v5, v3, v4}, Lcom/android/systemui/complication/dagger/ComplicationComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/Complication$Host;Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/touch/TouchInsetManager;)Lcom/android/systemui/complication/dagger/ComplicationComponent;

    .line 74
    move-result-object v3

    .line 77
    invoke-interface {v3}, Lcom/android/systemui/complication/dagger/ComplicationComponent;->getVisibilityController()Lcom/android/systemui/complication/ComplicationLayoutEngine;

    .line 78
    move-result-object v5

    .line 81
    move-object v6, p6

    .line 82
    invoke-interface {p6, v5, v4}, Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent$Factory;->create(Lcom/android/systemui/complication/Complication$VisibilityController;Lcom/android/systemui/touch/TouchInsetManager;)Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent;

    .line 83
    move-result-object v5

    .line 86
    invoke-interface {v3}, Lcom/android/systemui/complication/dagger/ComplicationComponent;->getComplicationHostViewController()Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 87
    move-result-object v3

    .line 90
    new-instance v6, Ljava/util/HashSet;

    .line 91
    invoke-interface {v5}, Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent;->getHideComplicationTouchHandler()Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 93
    move-result-object v5

    .line 96
    filled-new-array {v5}, [Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 97
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    move-result-object v5

    .line 104
    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    move-object v5, p7

    .line 108
    invoke-interface {p7, p2, v3, v4, v6}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/Set;)Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    .line 109
    move-result-object v3

    .line 112
    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    .line 113
    iget-object v1, v1, Lcom/android/systemui/dreams/DreamOverlayLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 115
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 117
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    .line 119
    const/4 v3, 0x1

    .line 121
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;I)V

    .line 122
    move-object v0, v2

    .line 125
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
    .line 131
.end method


# virtual methods
.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 9
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;I)V

    .line 14
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 19
    invoke-super {p0}, Landroid/service/dreams/DreamOverlayService;->onDestroy()V

    .line 22
    return-void
    .line 25
.end method

.method public final onEndDream()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartDream(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    sget-object v1, Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;->DREAM_OVERLAY_ENTER_START:Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;

    .line 11
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    .line 28
    invoke-interface {v0}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;->getDreamOverlayContainerViewController()Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    .line 36
    invoke-interface {v0}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;->getDreamOverlayTouchMonitor()Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 38
    move-result-object v0

    .line 41
    iget-object v1, v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 44
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 49
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->shouldShowComplications()Z

    .line 51
    move-result v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;

    .line 58
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Z)V

    .line 60
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 63
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowTitle:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 87
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 89
    const/4 v2, 0x0

    .line 91
    const-string v3, "DreamOverlay"

    .line 92
    const/4 v4, 0x1

    .line 94
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 98
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 100
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 109
    const/high16 v1, -0x80000000

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 116
    const/16 v1, 0x8

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 123
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 128
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 134
    move-result-object v0

    .line 137
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 138
    move-result v1

    .line 141
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 147
    sget-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    .line 150
    const-string v1, "DreamOverlayService"

    .line 152
    if-eqz v0, :cond_2

    .line 154
    const-string v0, "adding overlay window to dream"

    .line 156
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 166
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 168
    if-nez v0, :cond_3

    .line 170
    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    move-result-object v3

    .line 176
    check-cast v3, Landroid/view/ViewGroup;

    .line 177
    if-nez v3, :cond_4

    .line 179
    goto :goto_0

    .line 181
    :cond_4
    const-string v5, "Removing dream overlay container view parent!"

    .line 182
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 192
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 194
    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    .line 199
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 201
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 203
    move-result-object v3

    .line 206
    iget-object v5, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 207
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 209
    move-result-object v5

    .line 212
    invoke-interface {v0, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    move p1, v4

    .line 216
    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    const-string v5, "Dream activity window invalid: "

    .line 221
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 234
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    move p1, v2

    .line 238
    :goto_1
    if-nez p1, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    .line 241
    return-void

    .line 244
    :cond_5
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 247
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    const/4 v0, 0x2

    .line 257
    invoke-virtual {p1, v0, v4}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 258
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->getDreamComponent()Landroid/content/ComponentName;

    .line 261
    move-result-object p1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 265
    if-eqz p1, :cond_6

    .line 267
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLowLightDreamComponent:Landroid/content/ComponentName;

    .line 269
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result p1

    .line 274
    if-eqz p1, :cond_6

    .line 275
    move v2, v4

    .line 277
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setLowLightActive(Z)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 281
    sget-object v0, Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;->DREAM_OVERLAY_COMPLETE_START:Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;

    .line 283
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    .line 288
    iput-boolean v4, p1, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->isDreaming:Z

    .line 290
    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->callbacks:Ljava/util/Set;

    .line 292
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 294
    move-result-object p1

    .line 297
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    move-result v0

    .line 301
    if-eqz v0, :cond_8

    .line 302
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    move-result-object v0

    .line 307
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;

    .line 308
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 310
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 312
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 314
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 319
    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 320
    if-eqz v1, :cond_7

    .line 322
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 324
    move-result-object v0

    .line 327
    const-string v1, "Failed to send updated isDreamingWithOverlay - downstream canceled or failed."

    .line 328
    const-string v2, "KeyguardRepositoryImpl"

    .line 330
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    goto :goto_2

    .line 335
    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    .line 336
    return-void
    .line 338
.end method

.method public final onWakeUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->isDreaming:Z

    .line 9
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->callbacks:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;

    .line 27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 31
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 33
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    instance-of v2, v1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 39
    if-eqz v2, :cond_0

    .line 41
    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    move-result-object v1

    .line 46
    const-string v2, "Failed to send updated isDreamingWithOverlay - downstream canceled or failed."

    .line 47
    const-string v3, "KeyguardRepositoryImpl"

    .line 49
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mWakingUpFromSwipe:Z

    .line 57
    if-eqz v0, :cond_2

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 64
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    const/4 v0, 0x2

    .line 79
    const/16 v1, 0x8

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 82
    :cond_4
    :goto_1
    return-void
    .line 85
.end method

.method public final resetCurrentDreamOverlayLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayService$2;

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 16
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "DreamOverlayService"

    .line 39
    const-string v2, "Error removing decor view when resetting overlay"

    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 55
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setLowLightActive(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 67
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    .line 73
    iput-boolean v2, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    .line 75
    return-void
    .line 77
.end method
