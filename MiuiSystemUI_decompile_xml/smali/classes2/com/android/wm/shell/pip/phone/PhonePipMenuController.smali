.class public final Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;


# instance fields
.field public mAppActions:Ljava/util/List;

.field public mCloseAction:Landroid/app/RemoteAction;

.field public final mContext:Landroid/content/Context;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

.field public mMediaActions:Ljava/util/List;

.field public final mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field public mMenuState:I

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public final mSoScSplitScreenController:Ljava/util/Optional;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    .line 37
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 41
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 43
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 45
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 49
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSplitScreenController:Ljava/util/Optional;

    .line 51
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSoScSplitScreenController:Ljava/util/Optional;

    .line 53
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 55
    return-void
    .line 57
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    .line 4
    return-void
    .line 7
.end method

.method public final attachPipMenuView()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 17
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 19
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 23
    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSplitScreenController:Ljava/util/Optional;

    .line 25
    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSoScSplitScreenController:Ljava/util/Optional;

    .line 27
    iget-object v10, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 29
    move-object v3, v0

    .line 31
    move-object v5, p0

    .line 32
    invoke-direct/range {v3 .. v10}, Lcom/android/wm/shell/pip/phone/PipMenuView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipUiEventLogger;)V

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 36
    new-instance v3, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    .line 38
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 46
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 48
    const-string v4, "PipMenuView"

    .line 50
    const/4 v5, 0x0

    .line 52
    invoke-static {v5, v5, v3, v4}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 53
    move-result-object v3

    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 58
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 61
    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 65
    iget-object v1, v2, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 73
    if-nez v1, :cond_2

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v1, v4, v0}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(ILandroid/view/View;)V

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, v2, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 88
    if-nez v0, :cond_4

    .line 90
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(ILandroid/view/View;)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    .line 96
    return-void
    .line 99
.end method

.method public final checkPipMenuState()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 15
    const/4 v0, 0x0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    const-string v1, "PhonePipMenuController"

    .line 22
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    const v2, -0x612c634

    .line 28
    const-string v3, "%s: Not going to move PiP, either menu or its parent is not created."

    .line 31
    invoke-static {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_2
    return v0
    .line 36
.end method

.method public final detach()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 11
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 13
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 16
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 18
    return-void
    .line 20
.end method

.method public final hideMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    :cond_0
    return-void
.end method

.method public final hideMenu(I)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;ZZI)V

    :cond_0
    return-void
.end method

.method public final isMenuVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 20
    :cond_2
    return-void
    .line 23
.end method

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    if-eqz p0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    .line 6
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    .line 16
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 22
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 24
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v1

    .line 40
    :goto_0
    if-nez v0, :cond_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSoScSplitScreenControllerOptional:Ljava/util/Optional;

    .line 43
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSoScSplitScreenControllerOptional:Ljava/util/Optional;

    .line 51
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 57
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 59
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSplitScreenForeground(I)Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    :cond_2
    move v0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v0, v1

    .line 69
    :goto_1
    if-nez v0, :cond_4

    .line 70
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 72
    move-result v0

    .line 75
    if-ne v0, v2, :cond_5

    .line 76
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 78
    if-eqz v0, :cond_5

    .line 80
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 82
    const/4 v0, 0x2

    .line 84
    if-eq p1, v0, :cond_5

    .line 85
    :cond_4
    move v1, v2

    .line 87
    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mFocusedTaskAllowSplitScreen:Z

    .line 88
    :cond_6
    return-void
    .line 90
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 18
    :cond_2
    return-void
    .line 21
.end method

.method public final showMenu(Landroid/graphics/Rect;IZZ)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    .line 3
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 19
    move v1, p2

    .line 21
    move-object v2, p1

    .line 22
    move v3, p3

    .line 23
    move v4, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 25
    :goto_0
    return-void
    .line 28
.end method

.method public final updateMenuActions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 6
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    .line 12
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 20
    if-lez v2, :cond_0

    .line 21
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Ljava/util/List;

    .line 31
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    .line 33
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 35
    check-cast v4, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 39
    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 50
    check-cast v4, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_2
    iput-object p0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    .line 57
    iget p0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 59
    if-ne p0, v3, :cond_3

    .line 61
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    .line 63
    :cond_3
    return-void
    .line 66
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 8
    move-result p1

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 12
    const-string v3, "PipMenuView"

    .line 14
    invoke-static {v1, p1, v2, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 16
    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 20
    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :cond_0
    return-void
    .line 38
.end method
