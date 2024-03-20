.class public final Lcom/android/systemui/animation/AnimatedDialog;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

.field public final callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

.field public final controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

.field public final decorView$delegate:Lkotlin/Lazy;

.field public decorViewLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$start$2;

.field public final dialog:Landroid/app/Dialog;

.field public dialogContentWithBackground:Landroid/view/ViewGroup;

.field public dismissRequested:Z

.field public exitAnimationDisabled:Z

.field public final featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

.field public hasInstrumentedJank:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public isDismissing:Z

.field public isLaunching:Z

.field public isOriginalDialogViewLaidOut:Z

.field public isSourceDrawnInDialog:Z

.field public final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final onDialogDismissed:Lkotlin/jvm/functions/Function1;

.field public originalDialogBackgroundColor:I

.field public final parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog;->callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 15
    iput-object p8, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    .line 17
    iput-object p9, p0, Lcom/android/systemui/animation/AnimatedDialog;->featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    .line 19
    new-instance p1, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;

    .line 21
    invoke-direct {p1, p0}, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 23
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    .line 30
    const/high16 p1, -0x1000000

    .line 32
    iput p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    .line 34
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    .line 37
    if-eqz p7, :cond_0

    .line 39
    new-instance p1, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 41
    invoke-direct {p1}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;-><init>()V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 48
    return-void
    .line 50
.end method

.method public static final access$maybeStartLaunchAnimation(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isSourceDrawnInDialog:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isOriginalDialogViewLaidOut:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 18
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 23
    sget-object v1, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;

    .line 26
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 32
.end method

.method public static findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 27
    invoke-static {v3}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 28
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    return-object v3

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    return-object v1
    .line 38
.end method


# virtual methods
.method public final getDecorView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    return-object p0
    .line 10
.end method

.method public final moveSourceDrawingToDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 13
    move-result-object v0

    .line 16
    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$start$3;

    .line 17
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/animation/AnimatedDialog$start$3;-><init>(Lcom/android/systemui/animation/AnimatedDialog;I)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 26
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 30
    check-cast v2, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 32
    iget-object v2, v2, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 34
    instance-of v3, v2, Lcom/android/systemui/animation/LaunchableView;

    .line 36
    if-eqz v3, :cond_1

    .line 38
    move-object v3, v2

    .line 40
    check-cast v3, Lcom/android/systemui/animation/LaunchableView;

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-eqz v3, :cond_2

    .line 45
    invoke-interface {v3, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 47
    :cond_2
    invoke-static {v2, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    .line 50
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$2;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V

    .line 58
    return-void
    .line 61
.end method

.method public final onDialogDismissed()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 22
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$start$3;

    .line 26
    const/4 v2, 0x2

    .line 28
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/animation/AnimatedDialog$start$3;-><init>(Lcom/android/systemui/animation/AnimatedDialog;I)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    .line 36
    const/4 v2, 0x1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->dismissRequested:Z

    .line 41
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    .line 44
    if-eqz v0, :cond_2

    .line 46
    return-void

    .line 48
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    .line 49
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;

    .line 51
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 53
    iget-object v3, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 56
    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 60
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 64
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 66
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    .line 69
    const/4 v4, 0x4

    .line 71
    iget-object v5, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 72
    const/4 v6, 0x0

    .line 74
    if-nez v3, :cond_9

    .line 75
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    goto :goto_3

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$dreamManager:Landroid/service/dreams/IDreamManager;

    .line 89
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 91
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    const-string v3, "DialogLaunchAnimator.Callback"

    .line 97
    const-string v7, "dreamManager.isDreaming failed"

    .line 99
    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    move v1, v6

    .line 104
    :goto_0
    if-eqz v1, :cond_5

    .line 105
    goto :goto_3

    .line 107
    :cond_5
    move-object v1, v5

    .line 108
    check-cast v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 109
    iget-object v1, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 113
    move-result v3

    .line 116
    if-eq v3, v4, :cond_6

    .line 117
    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 120
    move-result v3

    .line 123
    if-eqz v3, :cond_9

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 126
    move-result-object v1

    .line 129
    instance-of v3, v1, Landroid/view/View;

    .line 130
    if-eqz v3, :cond_7

    .line 132
    check-cast v1, Landroid/view/View;

    .line 134
    goto :goto_1

    .line 136
    :cond_7
    const/4 v1, 0x0

    .line 137
    :goto_1
    if-eqz v1, :cond_8

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 140
    move-result v1

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v1, v2

    .line 145
    :goto_2
    if-eqz v1, :cond_9

    .line 146
    goto :goto_4

    .line 148
    :cond_9
    :goto_3
    move v2, v6

    .line 149
    :goto_4
    if-nez v2, :cond_c

    .line 150
    const-string v1, "DialogLaunchAnimator"

    .line 152
    const-string v2, "Skipping animation of dialog into the source"

    .line 154
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    check-cast v5, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 159
    iget-object v1, v5, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 161
    instance-of v2, v1, Lcom/android/systemui/animation/LaunchableView;

    .line 163
    if-eqz v2, :cond_a

    .line 165
    check-cast v1, Lcom/android/systemui/animation/LaunchableView;

    .line 167
    invoke-interface {v1, v6}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 169
    goto :goto_5

    .line 172
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 173
    move-result v2

    .line 176
    if-ne v2, v4, :cond_b

    .line 177
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_b
    :goto_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    .line 187
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    goto :goto_6

    .line 192
    :cond_c
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;

    .line 193
    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 195
    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;

    .line 198
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V

    .line 200
    invoke-virtual {p0, v6, v1, v2}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 203
    :goto_6
    return-void
    .line 206
.end method

.method public final prepareForStackDismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    return-void
    .line 23
.end method

.method public final startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    move-object v3, v2

    .line 8
    check-cast v3, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v4, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 14
    iget-object v5, v3, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 16
    invoke-direct {v4, v5, v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 18
    new-instance v5, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController$createLaunchController$1;

    .line 21
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController$createLaunchController$1;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;)V

    .line 23
    move-object v3, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 28
    iget-object v4, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 30
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    invoke-direct {v3, v4, v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 35
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    new-instance v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 40
    iget-object v4, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 42
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-direct {v2, v4, v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    check-cast v2, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance v4, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 56
    iget-object v2, v2, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 58
    invoke-direct {v4, v2, v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 60
    move-object v2, v4

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 64
    move-result-object v0

    .line 67
    invoke-interface {v3, v0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 71
    move-result-object v0

    .line 74
    iput-object v0, v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 77
    move-result-object v8

    .line 80
    new-instance v9, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;

    .line 81
    move-object v0, v9

    .line 83
    move-object v1, v3

    .line 84
    move-object v3, p2

    .line 85
    move-object v4, p0

    .line 86
    move-object v5, p3

    .line 87
    move-object v6, v8

    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 89
    iget-object v4, p0, Lcom/android/systemui/animation/AnimatedDialog;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 92
    iget v7, p0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    .line 94
    sget-object v0, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 96
    const/4 v0, 0x1

    .line 98
    const/4 v1, 0x0

    .line 99
    move-object v5, v9

    .line 100
    move v8, v0

    .line 101
    move v9, v1

    .line 102
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 103
    return-void
    .line 106
.end method

.method public final synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 2
    check-cast v0, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v0, v1, p1}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 40
    return-void
    .line 43
.end method
