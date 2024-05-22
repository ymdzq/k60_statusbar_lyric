.class public final Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;
.super Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

.field public mChoreographer:Landroid/view/Choreographer;

.field public final mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;


# direct methods
.method public static -$$Nest$mremoveWindowInner(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;

    .line 14
    const-string v3, "ShellStartingWindow"

    .line 16
    invoke-direct {v2, v0, v1, v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZLjava/lang/String;I)V

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 21
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    const/16 p2, 0x8

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 42
    invoke-virtual {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 44
    :goto_0
    return-void
    .line 47
.end method

.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    const/4 p2, 0x1

    .line 7
    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;

    .line 13
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 19
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    move/from16 v2, p1

    .line 4
    move-object/from16 v3, p2

    .line 6
    move-object/from16 v10, p3

    .line 8
    iget-object v11, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 10
    const-string/jumbo v12, "view not successfully added to wm, removing view"

    .line 12
    const-string v13, "ShellStartingWindow"

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    const-wide/16 v14, 0x20

    .line 21
    const/4 v9, 0x1

    .line 23
    :try_start_0
    const-string v4, "addRootView"

    .line 24
    invoke-static {v14, v15, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 26
    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 29
    const/4 v8, 0x0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 32
    move-result v0

    .line 35
    move-object/from16 v5, p3

    .line 36
    move-object/from16 v6, p5

    .line 38
    move-object/from16 v7, p4

    .line 40
    move v9, v0

    .line 42
    invoke-virtual/range {v4 .. v9}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    goto :goto_2

    .line 55
    :cond_0
    const/4 v4, 0x1

    .line 56
    const/4 v9, 0x1

    .line 57
    goto :goto_4

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :goto_0
    const/4 v4, 0x1

    .line 61
    goto :goto_5

    .line 62
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, " already running, starting window not displayed. "

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 93
    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    :goto_2
    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v4, 0x1

    .line 102
    invoke-virtual {v11, v10, v4}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 103
    goto :goto_3

    .line 106
    :cond_1
    const/4 v4, 0x1

    .line 107
    :goto_3
    const/4 v9, 0x0

    .line 108
    :goto_4
    if-eqz v9, :cond_2

    .line 109
    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 111
    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    .line 113
    iput v2, v5, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 115
    invoke-virtual {v0, v5, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    .line 117
    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    .line 120
    move/from16 v5, p6

    .line 122
    invoke-direct {v4, v1, v3, v10, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V

    .line 124
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_2
    return v9

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto :goto_0

    .line 134
    :goto_5
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    move-result-object v1

    .line 141
    if-nez v1, :cond_3

    .line 142
    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v11, v10, v4}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 147
    :cond_3
    throw v0
    .line 150
.end method

.method public final onAppSplashScreenViewRemoved(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceControlViewHost;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 16
    if-eqz p0, :cond_2

    .line 18
    if-eqz p2, :cond_1

    .line 20
    const-string p0, "Server cleaned up"

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const-string p0, "App removed"

    .line 25
    :goto_0
    int-to-long p1, p1

    .line 27
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p1

    .line 33
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    const/4 p1, 0x4

    .line 38
    const/4 p2, 0x0

    .line 39
    const v2, -0x784558a6

    .line 40
    invoke-static {v1, v2, p1, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_2
    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    .line 46
    return-void
    .line 49
.end method
