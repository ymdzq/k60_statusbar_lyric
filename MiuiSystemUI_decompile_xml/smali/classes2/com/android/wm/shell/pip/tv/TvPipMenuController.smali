.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentMenuMode:I

.field public mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMenuIsFocused:Z

.field public mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

.field public mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

.field public mPrevMenuMode:I

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 16
    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;

    .line 18
    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V

    .line 20
    new-instance v3, Landroid/content/IntentFilter;

    .line 23
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 25
    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x2

    .line 31
    move-object v1, p1

    .line 32
    move-object v5, p4

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 34
    return-void
    .line 37
.end method

.method public static getMenuModeString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "MODE_ALL_ACTIONS_MENU"

    return-object p0

    :cond_1
    const-string p0, "MODE_MOVE_MENU"

    return-object p0

    :cond_2
    const-string p0, "MODE_NO_MENU"

    return-object p0
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    if-eqz v0, :cond_5

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 8
    const/4 v0, 0x0

    .line 10
    const-string v1, "TvPipMenuController"

    .line 11
    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    const v3, -0x740327a3

    .line 21
    const-string v4, "%s: attachPipMenu()"

    .line 24
    invoke-static {p1, v3, v0, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 31
    if-eqz p1, :cond_2

    .line 33
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 38
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 43
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 47
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 56
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    .line 58
    const/4 v4, -0x1

    .line 60
    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 67
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 69
    const-string v4, "PipBackgroundView"

    .line 71
    invoke-static {v0, v0, v3, v4}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 73
    move-result-object v4

    .line 76
    const/4 v5, 0x0

    .line 77
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 78
    const/4 v6, 0x1

    .line 80
    invoke-virtual {v2, p1, v4, v6}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 81
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 84
    if-nez p1, :cond_3

    .line 86
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 88
    if-eqz p1, :cond_4

    .line 90
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 92
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 97
    const v2, 0x4b8c621

    .line 98
    const-string v4, "%s: Actions provider is not set"

    .line 101
    invoke-static {p1, v2, v0, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 107
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 111
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    .line 113
    invoke-direct {v1, p0, v6}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 121
    const-string v1, "PipMenuView"

    .line 123
    invoke-static {v0, v0, v3, v1}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 125
    move-result-object v1

    .line 128
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 129
    invoke-virtual {v2, p1, v1, v6}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 131
    :cond_4
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object p1

    .line 137
    const v1, 0x7f070e8d    # @dimen/pip_menu_edu_text_view_height '24.0dp'

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    move-result p1

    .line 144
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v1

    .line 148
    const v2, 0x7f070e89    # @dimen/pip_menu_border_width '4.0dp'

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    move-result v1

    .line 155
    neg-int v1, v1

    .line 156
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 157
    move-result-object v1

    .line 160
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 161
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 163
    neg-int p1, p1

    .line 165
    invoke-static {v0, v0, v0, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 166
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 170
    return-void

    .line 172
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 173
    const-string p1, "Delegate is not set."

    .line 175
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p0
    .line 180
.end method

.method public final calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    .line 12
    neg-int p1, p1

    .line 14
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 15
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 22
    move-result v1

    .line 25
    const/16 v2, 0x8

    .line 26
    if-ne v1, v2, :cond_0

    .line 28
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 32
    move-result p0

    .line 35
    :goto_0
    add-int/2addr p1, p0

    .line 36
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    return-object v0
    .line 39
.end method

.method public final closeMenu()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    const-string v2, "TvPipMenuController"

    .line 9
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    const v3, 0x36b65943

    .line 15
    const-string v4, "%s: closeMenu()"

    .line 18
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 23
    return-void
    .line 26
.end method

.method public createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v3, v1, p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public final detach()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 5
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 24
    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 26
    return-void
    .line 28
.end method

.method public getMenuModeString()Ljava/lang/String;
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInAllActionsMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public isInMoveMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public final isMenuAttached()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v1

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 32
    const-string v2, "TvPipMenuController"

    .line 34
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    const v3, -0x5b541edb

    .line 40
    const-string v4, "%s: the menu surfaces are not attached."

    .line 43
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_1
    return p0
    .line 48
.end method

.method public isMenuOpen()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isMenuVisible()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    const-string v1, "TvPipMenuController"

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 21
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    const v2, -0x6291ab78

    .line 27
    const-string v4, "%s: movePipMenu: %s, alpha %s"

    .line 30
    invoke-static {v3, v2, v0, v4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    if-nez p2, :cond_1

    .line 41
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 43
    if-eqz p0, :cond_1

    .line 45
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 47
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    const p2, -0x6f6ce73b

    .line 53
    const-string p3, "%s: no transaction given"

    .line 56
    invoke-static {p0, p2, v0, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 73
    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 83
    move-result-object v1

    .line 86
    if-nez p2, :cond_4

    .line 87
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 89
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 91
    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 94
    int-to-float v2, v2

    .line 96
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 97
    int-to-float v3, v3

    .line 99
    invoke-virtual {p2, p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 100
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 103
    int-to-float v2, v2

    .line 105
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 106
    int-to-float v1, v1

    .line 108
    invoke-virtual {p2, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 109
    const/high16 v1, -0x40800000    # -1.0f

    .line 112
    cmpl-float v1, p4, v1

    .line 114
    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 118
    invoke-virtual {p2, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 121
    :cond_5
    new-instance p1, Landroid/window/SurfaceSyncGroup;

    .line 124
    const-string p4, "TvPip"

    .line 126
    invoke-direct {p1, p4}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 131
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 133
    move-result-object p4

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p4, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 138
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 141
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 143
    move-result-object p4

    .line 146
    invoke-virtual {p1, p4, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 147
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 153
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 156
    return-void
    .line 159
.end method

.method public final onExitMoveMode()Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    const-string v3, "TvPipMenuController"

    .line 17
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    const v3, 0x13fa2744

    .line 23
    const-string v4, "%s: onExitMoveMode - mCurrentMenuMode=%s"

    .line 26
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 39
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 44
    if-ne v0, p0, :cond_2

    .line 45
    move v1, p0

    .line 47
    :cond_2
    return v1
    .line 48
.end method

.method public final onPipMovement(I)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    const-string v2, "TvPipMenuController"

    .line 16
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    const v2, -0x1d201924

    .line 22
    const/4 v3, 0x0

    .line 25
    const-string v4, "%s: onPipMovement - mCurrentMenuMode=%s"

    .line 26
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 42
    move-result p0

    .line 45
    return p0
    .line 46
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 13
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    const-string v1, "TvPipMenuController"

    .line 16
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 21
    const v1, 0x31c837a1

    .line 22
    const/4 v2, 0x0

    .line 25
    const-string v3, "%s: resizePipMenu: %s"

    .line 26
    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 38
    move-result p2

    .line 41
    if-nez p2, :cond_2

    .line 42
    return-void

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 47
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 49
    move-result-object p2

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 63
    move-result v2

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 67
    move-result v3

    .line 70
    invoke-virtual {p3, p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 74
    move-result p2

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 78
    move-result v1

    .line 81
    invoke-virtual {p3, v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 82
    new-instance p2, Landroid/window/SurfaceSyncGroup;

    .line 85
    const-string v0, "TvPip"

    .line 87
    invoke-direct {p2, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 92
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 94
    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 102
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p2, p3}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 114
    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 117
    return-void
    .line 120
.end method

.method public final switchToMenuMode(IZ)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 4
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 6
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 8
    const-string v0, "TvPipMenuController"

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 22
    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    const v1, -0x684963e5

    .line 34
    const-string v3, "%s: switchToMenuMode: setting mCurrentMenuMode=%s, mPrevMenuMode=%s"

    .line 37
    invoke-static {v2, v1, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 42
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_1b

    .line 46
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 48
    if-nez v3, :cond_1

    .line 50
    goto/16 :goto_6

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 54
    iget v3, v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 56
    iput v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 58
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 60
    if-ne v3, v1, :cond_2

    .line 62
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 67
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const/16 v4, 0xc

    .line 74
    const-string v5, "Unknown TV PiP menu mode: "

    .line 76
    const/4 v6, 0x2

    .line 78
    const/4 v7, 0x0

    .line 79
    const-string v8, "TvPipMenuView"

    .line 80
    if-eqz v3, :cond_e

    .line 82
    const/high16 v9, 0x3f800000    # 1.0f

    .line 84
    if-eq v3, v1, :cond_a

    .line 86
    if-ne v3, v6, :cond_9

    .line 88
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 90
    if-eqz v7, :cond_3

    .line 92
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v10

    .line 99
    filled-new-array {v8, v10}, [Ljava/lang/Object;

    .line 100
    move-result-object v8

    .line 103
    const-string v10, "%s: showAllActionsMenu(), resetMenu %b"

    .line 104
    const v11, 0x645b979c

    .line 106
    invoke-static {v7, v11, v4, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_3
    if-eqz p2, :cond_5

    .line 112
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    .line 116
    move-result-object p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 122
    :cond_4
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 125
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 127
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 130
    new-instance v7, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;

    .line 132
    invoke-direct {v7, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 134
    invoke-virtual {p2, v7}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_5
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 140
    if-ne p2, v6, :cond_6

    .line 142
    goto/16 :goto_2

    .line 144
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 146
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    .line 149
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 152
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 154
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 157
    invoke-virtual {p1, v9, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 159
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 162
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    .line 164
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 167
    if-ne p2, v1, :cond_11

    .line 169
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 171
    move v7, v2

    .line 173
    :goto_0
    iget-object v8, p2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 174
    check-cast v8, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 178
    move-result v9

    .line 181
    if-ge v7, v9, :cond_8

    .line 182
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object v8

    .line 187
    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 188
    iget v8, v8, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 190
    if-ne v8, v6, :cond_7

    .line 192
    goto :goto_1

    .line 194
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 195
    goto :goto_0

    .line 197
    :cond_8
    const/4 v7, -0x1

    .line 198
    :goto_1
    invoke-virtual {p1, v7}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusButton(I)V

    .line 199
    goto :goto_2

    .line 202
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 203
    iget p1, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 205
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 210
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    throw p0

    .line 218
    :cond_a
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 219
    if-eqz p2, :cond_b

    .line 221
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 223
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 225
    move-result-object v8

    .line 228
    const v10, -0x508b9a52

    .line 229
    const-string v11, "%s: showMoveMenu()"

    .line 232
    invoke-static {p2, v10, v2, v11, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_b
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 237
    if-ne p2, v1, :cond_c

    .line 239
    goto :goto_2

    .line 241
    :cond_c
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    .line 242
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 245
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 248
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 250
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 253
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 255
    move-result p2

    .line 258
    if-eqz p2, :cond_d

    .line 259
    move v7, v9

    .line 261
    :cond_d
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 262
    invoke-virtual {p1, v7, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 264
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 267
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    .line 269
    goto :goto_2

    .line 272
    :cond_e
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 273
    if-eqz p2, :cond_f

    .line 275
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 277
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 279
    move-result-object v8

    .line 282
    const v9, 0x7bc1b495

    .line 283
    const-string v10, "%s: hideAllUserControls()"

    .line 286
    invoke-static {p2, v9, v2, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_f
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 291
    if-nez p2, :cond_10

    .line 293
    goto :goto_2

    .line 295
    :cond_10
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 296
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    .line 299
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 302
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    .line 304
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 307
    invoke-virtual {p1, v7, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 309
    :cond_11
    :goto_2
    iput v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 312
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 314
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 321
    if-eqz v3, :cond_12

    .line 323
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 325
    invoke-static {v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 327
    move-result-object v3

    .line 330
    invoke-static {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 331
    move-result-object v7

    .line 334
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 335
    const-string v9, "TvPipBackgroundView"

    .line 337
    filled-new-array {v9, v3, v7}, [Ljava/lang/Object;

    .line 339
    move-result-object v3

    .line 342
    const v7, -0x7540f821

    .line 343
    const-string v9, "%s: transitionToMenuMode(), old menu mode = %s, new menu mode = %s"

    .line 346
    invoke-static {v8, v7, v2, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_12
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 351
    if-ne v3, p2, :cond_13

    .line 353
    goto :goto_4

    .line 355
    :cond_13
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationNoMenu:I

    .line 356
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 358
    if-eqz p2, :cond_16

    .line 360
    if-eq p2, v1, :cond_15

    .line 362
    if-ne p2, v6, :cond_14

    .line 364
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationAllActionsMenu:I

    .line 366
    if-ne v3, v1, :cond_17

    .line 368
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 370
    goto :goto_3

    .line 372
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 373
    invoke-static {v5, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 375
    move-result-object p1

    .line 378
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 379
    throw p0

    .line 382
    :cond_15
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationMoveMenu:I

    .line 383
    goto :goto_3

    .line 385
    :cond_16
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 386
    :cond_17
    :goto_3
    iget-object v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mBackgroundView:Landroid/view/View;

    .line 388
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 390
    move-result-object v3

    .line 393
    int-to-float v5, v7

    .line 394
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 395
    move-result-object v3

    .line 398
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 399
    move-result-object v3

    .line 402
    iget v5, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mPipMenuFadeAnimationDuration:I

    .line 403
    int-to-long v5, v5

    .line 405
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 406
    move-result-object v3

    .line 409
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 410
    iput p2, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 413
    :goto_4
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 415
    if-eqz p1, :cond_18

    .line 417
    move p1, v1

    .line 419
    goto :goto_5

    .line 420
    :cond_18
    move p1, v2

    .line 421
    :goto_5
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    .line 422
    if-ne p2, p1, :cond_19

    .line 424
    goto :goto_6

    .line 426
    :cond_19
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 427
    if-eqz p2, :cond_1a

    .line 429
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 431
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    move-result-object v3

    .line 436
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 437
    move-result-object v3

    .line 440
    const v5, 0x7db28179

    .line 441
    const-string v6, "%s: grantWindowFocus(%b)"

    .line 444
    invoke-static {p2, v5, v4, v6, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :cond_1a
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 449
    move-result-object p2

    .line 452
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 453
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 455
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    .line 457
    move-result-object v3

    .line 460
    const/4 v4, 0x0

    .line 461
    invoke-interface {p2, v4, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    goto :goto_6

    .line 465
    :catch_0
    move-exception p1

    .line 466
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 467
    if-eqz p2, :cond_1b

    .line 469
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    move-result-object p1

    .line 474
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 475
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 477
    move-result-object p1

    .line 480
    const v0, -0xea90bd1

    .line 481
    const-string v3, "%s: Unable to update focus, %s"

    .line 484
    invoke-static {p2, v0, v2, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 486
    :cond_1b
    :goto_6
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 489
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 491
    if-ne p1, p2, :cond_1c

    .line 493
    goto :goto_7

    .line 495
    :cond_1c
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 496
    if-nez p2, :cond_1d

    .line 498
    goto :goto_7

    .line 500
    :cond_1d
    if-eq p1, v1, :cond_1e

    .line 501
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 503
    move-result p1

    .line 506
    if-eqz p1, :cond_1f

    .line 507
    :cond_1e
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 509
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 511
    :cond_1f
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 514
    if-nez p1, :cond_21

    .line 516
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 523
    if-eqz p1, :cond_20

    .line 525
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 527
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 529
    move-result-object p1

    .line 532
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 533
    const-string v0, "TvPipController"

    .line 535
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 537
    move-result-object p1

    .line 540
    const v0, 0xa369699

    .line 541
    const-string v3, "%s: closeMenu(), state before=%s"

    .line 544
    invoke-static {p2, v0, v2, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 552
    :cond_21
    :goto_7
    return-void
    .line 555
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 9
    move-result-object v0

    .line 12
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    const-string v4, "TvPipMenuController"

    .line 28
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    const v4, 0x3322e85a

    .line 34
    const-string v5, "%s: updateMenuBounds: %s"

    .line 37
    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 44
    move-result v3

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v4

    .line 51
    const-string v5, "PipBackgroundView"

    .line 52
    iget-object v6, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {v3, v4, v6, v5}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 56
    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 60
    invoke-virtual {v4, v1, v3}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 67
    move-result v3

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 71
    move-result v0

    .line 74
    const-string v5, "PipMenuView"

    .line 75
    invoke-static {v3, v0, v6, v5}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v4, v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 84
    if-eqz p0, :cond_6

    .line 86
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 88
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    move-result v1

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 107
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 108
    const-string v4, "TvPipMenuView"

    .line 110
    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 115
    const v1, -0x185d60ca

    .line 116
    const-string v4, "%s: updateLayout, width: %s, height: %s"

    .line 119
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 140
    move-result p1

    .line 143
    if-nez p1, :cond_4

    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    move-result-object p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 156
    move-result v0

    .line 159
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 160
    mul-int/lit8 v1, v1, 0x2

    .line 162
    add-int/2addr v1, v0

    .line 164
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 169
    move-result v0

    .line 172
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 173
    mul-int/lit8 v1, v1, 0x2

    .line 175
    add-int/2addr v1, v0

    .line 177
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 180
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    move-result-object p1

    .line 190
    if-eqz p1, :cond_5

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 195
    move-result v0

    .line 198
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 203
    move-result v0

    .line 206
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 209
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    .line 216
    move-result-object p1

    .line 219
    if-eqz p1, :cond_6

    .line 220
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 224
    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 228
    :cond_6
    :goto_0
    return-void
    .line 231
.end method
