.class public final Lcom/android/wm/shell/pip/phone/PipController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 2

    .line 1
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 9
    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    const p4, 0x61c00ec4

    .line 16
    const/4 v0, 0x0

    .line 19
    const-string v1, "onActivityPinned: %s"

    .line 20
    invoke-static {p3, p4, v0, v1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 25
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 27
    iget-object p3, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 29
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->createOrUpdateDismissTarget()V

    .line 31
    iget-object p3, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 34
    const/4 p4, 0x1

    .line 36
    iput-boolean p4, p3, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 37
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    .line 39
    iget-object p3, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 42
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 44
    invoke-virtual {p2}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->updateContentBounds()V

    .line 46
    iget-object p4, p2, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    .line 49
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    .line 51
    move-result-object v0

    .line 54
    check-cast p4, Ljava/util/HashMap;

    .line 55
    invoke-virtual {p4, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->maybeMoveConflictingContent(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 60
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 68
    iget-object p4, p2, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 70
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p4, v0, p3}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 73
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    .line 77
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 80
    iget-object p3, p2, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 82
    const/16 p4, 0x43

    .line 84
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 86
    invoke-virtual {p3, p4, p1, p2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V

    .line 93
    return-void
    .line 96
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 3

    .line 1
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 p4, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 18
    const v1, 0x313d7faa

    .line 19
    const-string v2, "onActivityRestartAttempt: %s"

    .line 22
    invoke-static {v0, v1, p4, v2, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 27
    move-result p2

    .line 30
    const/4 v0, 0x2

    .line 31
    if-eq p2, v0, :cond_1

    .line 32
    return-void

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 35
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 46
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz v0, :cond_2

    .line 51
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 53
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 64
    check-cast p2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 65
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    .line 67
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 74
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 86
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    .line 88
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    :goto_0
    move p1, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move p1, p4

    .line 96
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 97
    if-eqz p1, :cond_4

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 101
    invoke-virtual {p0, p4, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(ZZ)V

    .line 103
    goto :goto_2

    .line 106
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 107
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(ZZ)V

    .line 109
    :goto_2
    return-void
    .line 112
.end method

.method public final onActivityUnpinned()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    .line 6
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    check-cast v0, Landroid/content/ComponentName;

    .line 12
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 14
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 23
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    const v4, -0x2d6a2d63

    .line 29
    const-string v5, "onActivityUnpinned: %s"

    .line 32
    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 37
    if-nez v0, :cond_2

    .line 39
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 41
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 43
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 45
    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 53
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 55
    :cond_1
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 58
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 60
    iget-object v3, v3, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    .line 62
    check-cast v3, Ljava/util/HashMap;

    .line 64
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 69
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 71
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 75
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 81
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 83
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    .line 92
    if-nez v0, :cond_3

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    .line 97
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mName:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 106
    if-eqz v1, :cond_4

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 114
    const-string v3, "PipInputConsumer"

    .line 116
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 121
    const v3, -0x5d3ea9d

    .line 122
    const-string v4, "%s: Failed to destroy input consumer, %s"

    .line 125
    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    .line 130
    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 132
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    .line 136
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    .line 138
    const/4 v1, 0x1

    .line 140
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 144
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 148
    :goto_1
    return-void
    .line 151
.end method
