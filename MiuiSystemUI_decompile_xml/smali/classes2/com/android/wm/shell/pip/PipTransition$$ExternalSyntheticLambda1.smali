.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic f$1:Landroid/app/TaskInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/window/WindowContainerToken;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$6:Landroid/view/SurfaceControl;

.field public final synthetic f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$1:Landroid/app/TaskInfo;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$3:Landroid/window/WindowContainerToken;

    .line 11
    iput-boolean p5, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$5:Landroid/view/SurfaceControl$Transaction;

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$6:Landroid/view/SurfaceControl;

    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$1:Landroid/app/TaskInfo;

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 8
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 11
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_2

    .line 15
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$2:Z

    .line 17
    if-nez v1, :cond_0

    .line 19
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 25
    const-string v4, "PipTransition"

    .line 27
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    const-string v5, "%s: startExitAnimation() not exiting to fullscreen"

    .line 33
    const v6, 0x43e59f20

    .line 35
    invoke-static {v1, v6, v2, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 44
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$3:Landroid/window/WindowContainerToken;

    .line 49
    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 51
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 54
    iget-object v4, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 56
    invoke-virtual {p1, v4, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 58
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 63
    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$4:Z

    .line 66
    if-eqz v1, :cond_5

    .line 68
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 70
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 72
    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 76
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    const/4 v2, 0x1

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 85
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 87
    :cond_4
    iput-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$5:Landroid/view/SurfaceControl$Transaction;

    .line 92
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$6:Landroid/view/SurfaceControl;

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 96
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 99
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 101
    return-void
    .line 104
.end method
