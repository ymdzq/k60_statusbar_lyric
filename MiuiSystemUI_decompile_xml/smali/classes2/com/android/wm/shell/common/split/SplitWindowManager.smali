.class public final Lcom/android/wm/shell/common/split/SplitWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field public mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mWindowName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p3, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 3
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    .line 2
    new-instance p2, Landroid/view/SurfaceSession;

    .line 4
    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    .line 6
    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object p1

    .line 15
    const-string p2, "SplitWindowManager"

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 18
    move-result-object p1

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 23
    move-result-object p1

    .line 26
    const-string p2, "SplitWindowManager#attachToParentSurface"

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 29
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    .line 33
    invoke-interface {p2, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;->attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 42
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    .line 44
    invoke-interface {p2, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;->onLeashReady(Landroid/view/SurfaceControl;)V

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 49
    return-object p0
    .line 51
.end method

.method public final getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 6
    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "SplitWindowManager"

    .line 18
    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    move-result-object v0

    .line 30
    const v1, 0x7f0d0350    # @layout/split_divider 'res/layout/split_divider.xml'

    .line 31
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    .line 39
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 41
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 43
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getDividerView(Landroid/content/Context;)Lcom/android/wm/shell/common/split/DividerView;

    .line 49
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    .line 60
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 62
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 64
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 69
    move-result v3

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 73
    move-result v4

    .line 76
    const/16 v5, 0x7f2

    .line 77
    const v6, 0x20840028

    .line 79
    const/4 v7, -0x3

    .line 82
    move-object v2, v1

    .line 83
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 84
    new-instance v0, Landroid/os/Binder;

    .line 87
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 89
    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 99
    const v2, 0x20000040

    .line 101
    or-int/2addr v0, v2

    .line 104
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 105
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v0

    .line 112
    const v2, 0x7f130077    # @string/accessibility_divider 'Split screen divider'

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 119
    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 122
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 129
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 131
    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/wm/shell/common/split/DividerView;->setup(Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/common/split/SplitWindowManager;Landroid/view/SurfaceControlViewHost;Landroid/view/InsetsState;)V

    .line 133
    return-void

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 137
    const-string p1, "Try to inflate divider view again without release first"

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0
    .line 144
.end method

.method public final release(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 32
    return-void

    .line 34
    :cond_2
    if-nez p1, :cond_3

    .line 35
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 37
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 48
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 54
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 57
    :cond_4
    return-void
    .line 59
.end method

.method public final removeSurface(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 10
    :goto_0
    return-void
    .line 13
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 11
    return-void
    .line 13
.end method

.method public final setInteractive(Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    .line 7
    if-ne p2, v0, :cond_1

    .line 9
    goto :goto_1

    .line 11
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    if-eqz p2, :cond_2

    .line 17
    const-string v0, "interactive"

    .line 19
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "non-interactive"

    .line 22
    :goto_0
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    const v0, 0x39de725b

    .line 30
    const-string v3, "Set divider bar %s from %s"

    .line 33
    invoke-static {v2, v0, v1, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_3
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    .line 38
    if-nez p2, :cond_4

    .line 40
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 42
    if-eqz p1, :cond_4

    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 46
    iget p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 48
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mLastDraggingPosition:I

    .line 50
    new-instance v2, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {v2, p0, p2}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    .line 54
    const/16 v3, 0x15e

    .line 57
    invoke-virtual {p1, v0, p2, v3, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 59
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->releaseTouching()V

    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 67
    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    .line 69
    if-nez p0, :cond_5

    .line 71
    if-eqz p3, :cond_5

    .line 73
    const/4 v1, 0x4

    .line 75
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_1
    return-void
    .line 79
.end method

.method public final setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 10
    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Region;

    .line 14
    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
