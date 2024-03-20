.class public final Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

.field public final mPendingTransitionTokens:Ljava/util/List;

.field public mPosition:Landroid/graphics/Point;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 22
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 24
    move-result v2

    .line 27
    and-int/lit8 v2, v2, 0x2

    .line 28
    if-eqz v2, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 39
    const/4 v3, -0x1

    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 45
    move-result v2

    .line 48
    const/4 v3, 0x6

    .line 49
    if-ne v2, v3, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 52
    move-result v5

    .line 55
    move-object v3, p0

    .line 56
    move-object v4, p1

    .line 57
    move-object v7, p3

    .line 58
    move-object v8, p4

    .line 59
    move-object v9, p5

    .line 60
    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 61
    move-result v2

    .line 64
    or-int/2addr v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 67
    check-cast p0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return v1
    .line 74
.end method

.method public startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object p1

    .line 17
    const/16 v1, 0x3f4

    .line 18
    if-ne p2, v1, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 22
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    move-result-object p1

    .line 38
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 43
    move-result-object v6

    .line 46
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {p4, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 51
    move-result-object p4

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result v2

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result v1

    .line 62
    invoke-virtual {p4, v6, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 63
    move-result-object p4

    .line 66
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 67
    new-instance p4, Landroid/animation/ValueAnimator;

    .line 70
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 72
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [F

    .line 76
    fill-array-data v1, :array_0

    .line 78
    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 81
    const-wide/16 v1, 0x150

    .line 84
    invoke-virtual {p4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object p3

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 93
    move-result v1

    .line 96
    int-to-float v1, v1

    .line 97
    int-to-float v0, v0

    .line 98
    div-float v3, v1, v0

    .line 99
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 101
    move-result p3

    .line 104
    int-to-float p3, p3

    .line 105
    int-to-float p1, p1

    .line 106
    div-float v4, p3, p1

    .line 107
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 109
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    move-object v5, p1

    .line 115
    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    .line 116
    new-instance p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    .line 118
    move-object v1, p1

    .line 120
    move-object v2, p0

    .line 121
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 122
    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    new-instance p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;

    .line 128
    invoke-direct {p1, p0, p5, p6}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 130
    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    .line 136
    return p2

    .line 139
    :cond_1
    return v0

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 142
.end method
