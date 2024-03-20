.class public final Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;


# instance fields
.field public final mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

.field public final mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public final mTvButtonFadeAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mMainHandler:Landroid/os/Handler;

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    .line 9
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p2

    .line 16
    const p3, 0x7f0b010c    # @integer/tv_window_menu_fade_animation_duration '500'

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    move-result p2

    .line 23
    iput p2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mTvButtonFadeAnimationDuration:I

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    move-result-object p1

    .line 29
    const p2, 0x7f0d03cf    # @layout/tv_split_menu_view 'res/layout/tv_split_menu_view.xml'

    .line 30
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 40
    iput-object p0, p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 42
    new-instance p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;)V

    .line 46
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    .line 49
    return-void
    .line 51
.end method


# virtual methods
.method public final onFocusStage(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    .line 6
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "activity_task"

    .line 13
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/app/IActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;

    .line 19
    move-result-object v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 27
    if-ne v2, p1, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 33
    move-result p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 40
    move-result p0

    .line 43
    :goto_0
    move v2, p0

    .line 44
    :goto_1
    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_2

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 50
    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 62
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 67
    const v1, -0x4db61527

    .line 68
    const-string v2, "Unable to update focus on the chosen stage: %s"

    .line 71
    invoke-static {p1, v1, v0, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_2
    :goto_2
    return-void
    .line 76
.end method

.method public final setMenuVisibility(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 10
    move-result v2

    .line 13
    cmpl-float v2, v2, v0

    .line 14
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object v2

    .line 27
    iget v4, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mTvButtonFadeAnimationDuration:I

    .line 28
    int-to-long v4, v4

    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    move-result-object v2

    .line 34
    new-instance v4, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v4, p0, v0, v3}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;FI)V

    .line 37
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 40
    move-result-object v2

    .line 43
    new-instance v4, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;

    .line 44
    const/4 v5, 0x1

    .line 46
    invoke-direct {v4, p0, v0, v5}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;FI)V

    .line 47
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 50
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 53
    move-result-object v0

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    .line 59
    move-result-object p0

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-interface {v0, v1, p0, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_2

    .line 67
    :catch_0
    move-exception p0

    .line 68
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 69
    if-eqz p1, :cond_2

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 77
    const-string v0, "TvSplitMenuController"

    .line 79
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 84
    const v0, -0xc22a39

    .line 85
    const-string v1, "%s: Unable to update focus, %s"

    .line 88
    invoke-static {p1, v0, v3, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_2
    :goto_2
    return-void
    .line 93
.end method
