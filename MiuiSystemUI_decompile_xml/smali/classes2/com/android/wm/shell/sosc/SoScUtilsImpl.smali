.class public Lcom/android/wm/shell/sosc/SoScUtilsImpl;
.super Lcom/android/wm/shell/sosc/SoScUtils;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field private static final IS_FOLD:Z

.field private static final IS_TABLET:Z

.field private static final TAG:Ljava/lang/String; = "SoScUtils"


# instance fields
.field private SOSC_ENABLE:Z

.field private mContext:Landroid/content/Context;

.field private mDeferredUpdate:Z

.field private mDividerOriginPosition:I

.field private mIsInMultiWinSwitch:Z

.field private mIsPairsStartedWithSingleCloseTransition:Z

.field private mIsRotationLockDefault:Z

.field private mKeyguardShow:Z

.field private mMainStartingTask:I

.field private mMixedHandler:Lcom/android/wm/shell/transition/SoScMixedHandler;

.field private mOrientationTransition:Landroid/os/IBinder;

.field private final mPausingTasks:Ljava/util/ArrayList;

.field private mReady:Z

.field mRecentTasksOptional:Ljava/util/Optional;

.field private mRecentsFinished:Z

.field private mRecentsStarted:Z

.field private mRequestCloseStageType:I

.field private mRequestCloseTaskTransition:Landroid/os/IBinder;

.field private mRequestCloseTransition:Landroid/os/IBinder;

.field private mRequestCloseTriggerTask:I

.field private mRequestOpenFullTaskTransition:Landroid/os/IBinder;

.field private mRequestOpenTransition:Landroid/os/IBinder;

.field private mRequestOpenTriggerTask:I

.field private mSideStartingTask:I

.field private mSingleCloseInFullMode:Z

.field private mSoScFullClose:Z

.field private mSpecialList:Ljava/util/HashSet;

.field private mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field private mStartTransition:Landroid/os/IBinder;

.field private mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public static synthetic $r8$lambda$HIwZ56P_mDTeDkAetqLQDnwTrSE(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->lambda$updateRecentsOnTaskInfoChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$XJa566-hewdeY6m251DfGRn0KoE(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->lambda$updateRecentsWhenExitPip$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetSOSC_ENABLE(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->SOSC_ENABLE:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMixedHandler(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/transition/SoScMixedHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMixedHandler:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmReady(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmStageCoordinator(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/sosc/SoScStageCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputSOSC_ENABLE(Lcom/android/wm/shell/sosc/SoScUtilsImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->SOSC_ENABLE:Z

    .line 2
    return-void
    .line 4
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "tablet"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 14
    sput-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 15
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 27
    :cond_0
    sput-boolean v1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_FOLD:Z

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScUtils;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSpecialList:Ljava/util/HashSet;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mPausingTasks:Ljava/util/ArrayList;

    .line 17
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 20
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 22
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseStageType:I

    .line 24
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 26
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 28
    return-void
    .line 30
.end method

.method public static getInstance()Lcom/android/wm/shell/sosc/SoScUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScUtils;->INSTANCE:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    return-object v0
    .line 4
.end method

.method private static synthetic lambda$updateRecentsOnTaskInfoChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method private static synthetic lambda$updateRecentsWhenExitPip$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method private registObserver(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;-><init>(Lcom/android/wm/shell/sosc/SoScUtilsImpl;Landroid/os/Handler;Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 11
    const-string/jumbo p1, "wmshell.sosc_enable"

    .line 12
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object p1

    .line 18
    const/4 v1, -0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->onChange(Z)V

    .line 24
    return-void
    .line 27
.end method


# virtual methods
.method public adjustSplitImePositionInSoSc(Landroid/window/TransitionInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 3
    move-result v1

    .line 6
    :goto_0
    if-ltz v1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v2

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 17
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    move-result-object v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 25
    move-result v3

    .line 28
    if-eq v3, v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 31
    move-result v3

    .line 34
    const/4 v4, 0x3

    .line 35
    if-ne v3, v4, :cond_2

    .line 36
    :cond_0
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 42
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 44
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSideStageRootTask(I)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 52
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 54
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isMainStageRootTask(I)Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 62
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->adjustSplitImePositionInSoSc()V

    .line 64
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    return-void
    .line 70
.end method

.method public adjustSurfaceForMinimizedMode(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->inSoScMinimizedMode()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 16
    move v0, v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 28
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    move v5, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v5, v1

    .line 39
    :goto_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 40
    move-result v6

    .line 43
    if-eqz v5, :cond_0

    .line 44
    const/4 v5, 0x6

    .line 46
    if-ne v6, v5, :cond_0

    .line 47
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 49
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isSoScRootTask(I)Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getMinimizedPoint()Landroid/graphics/Point;

    .line 61
    move-result-object v3

    .line 64
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 65
    int-to-float v3, v3

    .line 67
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getMinimizedPoint()Landroid/graphics/Point;

    .line 68
    move-result-object v5

    .line 71
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 72
    int-to-float v5, v5

    .line 74
    invoke-virtual {p2, v0, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 75
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getMinimizedPoint()Landroid/graphics/Point;

    .line 82
    move-result-object v2

    .line 85
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 86
    int-to-float v2, v2

    .line 88
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getMinimizedPoint()Landroid/graphics/Point;

    .line 89
    move-result-object v3

    .line 92
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 93
    int-to-float v3, v3

    .line 95
    invoke-virtual {p3, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 96
    move v0, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move v1, v0

    .line 101
    :cond_3
    return v1
    .line 102
.end method

.method public buildRequestHomeFocusWct(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->buildRequestHomeFocusWct(Landroid/window/WindowContainerTransaction;)V

    .line 9
    return-void
    .line 12
.end method

.method public canUpdateSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object p0

    .line 17
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    int-to-float p0, p0

    .line 20
    const v0, 0x3bcccccd    # 0.00625f

    .line 21
    mul-float/2addr p0, v0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 29
    move-result p1

    .line 32
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    div-float/2addr p1, p0

    .line 38
    const/high16 v0, 0x3f000000    # 0.5f

    .line 39
    add-float/2addr p1, v0

    .line 41
    float-to-int p1, p1

    .line 42
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 43
    move-result v2

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 47
    move-result p2

    .line 50
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result p2

    .line 54
    int-to-float p2, p2

    .line 55
    div-float/2addr p2, p0

    .line 56
    add-float/2addr p2, v0

    .line 57
    float-to-int p0, p2

    .line 58
    const/16 p2, 0x258

    .line 59
    if-ge p1, p2, :cond_1

    .line 61
    if-ge p0, p2, :cond_2

    .line 63
    :cond_1
    if-lt p1, p2, :cond_3

    .line 65
    if-ge p0, p2, :cond_3

    .line 67
    :cond_2
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_3
    return v1
    .line 71
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p2

    .line 11
    sget-object v1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "SOSC_ENABLE="

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->SOSC_ENABLE:Z

    .line 37
    const-string v2, "IS_FOLD="

    .line 39
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p2

    .line 44
    sget-boolean v1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_FOLD:Z

    .line 45
    const-string v2, "IS_TABLET="

    .line 47
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p2

    .line 52
    sget-boolean v1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 53
    const-string v2, "IsRotationLockDefault="

    .line 55
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p2

    .line 60
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsRotationLockDefault:Z

    .line 61
    const-string v2, "RecentsFinished="

    .line 63
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object p2

    .line 68
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsFinished:Z

    .line 69
    const-string v2, "RecentsStarted="

    .line 71
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object p2

    .line 76
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsStarted:Z

    .line 77
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 79
    return-void
    .line 82
.end method

.method public getDividerOriginPosition()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mKeyguardShow:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScVisible()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->inSoScSingleMode()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDividerOriginPosition:I

    .line 20
    return p0

    .line 22
    :cond_1
    const/4 p0, -0x1

    .line 23
    return p0
    .line 24
.end method

.method public getFullModeRunningDuration()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    if-nez p0, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getFullModeRunningDuration()F

    .line 13
    move-result v1

    .line 16
    :goto_0
    return v1
    .line 17
.end method

.method public getMinimizedPoint()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMinimizedPoint()Landroid/graphics/Point;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    .line 13
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 15
    return-object p0
    .line 18
.end method

.method public getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object p0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 22
    if-eqz p0, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_2
    const-string p0, ""

    .line 31
    return-object p0
    .line 33
.end method

.method public getSingleModeRunningDuration()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    if-nez p0, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSingleModeRunningDuration()F

    .line 13
    move-result v1

    .line 16
    :goto_0
    return v1
    .line 17
.end method

.method public getSoScState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getTaskFromRecentTasks(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 7
    move-result v1

    .line 10
    const v2, 0x7fffffff

    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 29
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 31
    if-ne v2, p1, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
    .line 40
.end method

.method public hideDimForIme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->SOSC_ENABLE:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    sget-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_FOLD:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isWideScreen()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->inSoScSingleMode()Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public inSoScFullMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public inSoScMinimizedMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public inSoScSingleMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->registObserver(Landroid/content/Context;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSpecialList:Ljava/util/HashSet;

    .line 7
    const-string p1, "com.android.camera"

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
    .line 14
.end method

.method public injectDependencies(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentTasksOptional:Ljava/util/Optional;

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 9
    return-void
    .line 11
.end method

.method public isDividerFixed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isDividerFixed()Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public isFold()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_FOLD:Z

    .line 2
    return p0
    .line 4
.end method

.method public isHome(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    .line 9
    move-result p0

    .line 12
    const/4 p1, 0x3

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public isInMultiWinSwitch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsInMultiWinSwitch:Z

    .line 2
    return p0
    .line 4
.end method

.method public isInPausingTask(Landroid/content/ComponentName;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mPausingTasks:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v2

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    if-eqz p1, :cond_1

    .line 38
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 40
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    return v1
    .line 54
.end method

.method public isLandscape()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isLandscape()Z

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method public isMonitoredTransitonFinsihed(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_8

    .line 4
    if-eq p1, v1, :cond_6

    .line 6
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_4

    .line 9
    const/4 v2, 0x3

    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    const/4 v2, 0x4

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenFullTaskTransition:Landroid/os/IBinder;

    .line 18
    if-nez p0, :cond_1

    .line 20
    move v0, v1

    .line 22
    :cond_1
    return v0

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_3

    .line 26
    move v0, v1

    .line 28
    :cond_3
    return v0

    .line 29
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_5

    .line 32
    move v0, v1

    .line 34
    :cond_5
    return v0

    .line 35
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_7

    .line 38
    move v0, v1

    .line 40
    :cond_7
    return v0

    .line 41
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_9

    .line 44
    move v0, v1

    .line 46
    :cond_9
    return v0
    .line 47
.end method

.method public isPad()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 2
    return p0
    .line 4
.end method

.method public isRecentsFinished()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsFinished:Z

    .line 2
    return p0
    .line 4
.end method

.method public isRecentsStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsStarted:Z

    .line 2
    return p0
    .line 4
.end method

.method public isRequestOpenTransition(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 2
    if-ne p1, p0, :cond_0

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

.method public isRotationLockDefault()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    .line 6
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsRotationLockDefault:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return v0

    .line 12
    :catch_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public isSingleCloseInFullMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 2
    return p0
    .line 4
.end method

.method public isSoScRootTask(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 13
    if-ne p0, p1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
    .line 18
.end method

.method public isSoScShownTask(I)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTaskId(I)I

    .line 9
    move-result v0

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTaskId(I)I

    .line 16
    move-result p0

    .line 19
    sget-object v3, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 20
    const-string v4, "isSoScShownTask taskId:"

    .line 22
    const-string v5, " lotTaskId:"

    .line 24
    const-string v6, " robTaskId:"

    .line 26
    invoke-static {v4, p1, v5, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v4

    .line 31
    invoke-static {v4, p0, v3}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    if-eq v0, p1, :cond_0

    .line 35
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    move v1, v2

    .line 39
    :cond_1
    return v1
    .line 40
.end method

.method public isSoScStageRootTask(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isMainStageRootTask(I)Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSideStageRootTask(I)Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1
    .line 24
.end method

.method public isSoScSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->SOSC_ENABLE:Z

    .line 2
    return p0
    .line 4
.end method

.method public isSoscActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isWideScreen()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 12
    const/16 v0, 0x258

    .line 14
    if-lt p0, v0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public monitorOrientarionTransitionStart(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScVisible()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->clearRequestResetMinimizedMode()V

    .line 16
    sget-object p1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "monitorOrientarionTransitionStart mOrientationTransition:"

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public monitorPairsOpenTransitionStart(Landroid/os/IBinder;II)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 v0, -0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    if-eq p3, v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 9
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 11
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 13
    sget-object p1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    const-string p3, "monitorPairsOpenTransitionStart mRequestTransition:"

    .line 19
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string p3, " mMainStartingTask:"

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p3, " mSideStartingTask:"

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
    .line 56
.end method

.method public monitorTransitionFinished(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "monitorTransitionFinished transition:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, " transaction: "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, " mRequestCloseTransition:"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, " mRequestOpenTransition:"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, " mStartTransition:"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, " mRequestOpenTriggerTask:"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, " mRequestCloseTriggerTask:"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, " mOrientationTransition: "

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, " mMainStartingTask:"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, " mSideStartingTask:"

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 97
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 102
    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x1

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, -0x1

    .line 107
    if-ne p1, v1, :cond_3

    .line 108
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 110
    if-eq v1, v5, :cond_3

    .line 112
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 114
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 116
    move-result p1

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "monitor open stageOfTask:"

    .line 122
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 133
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-ne p1, v5, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 139
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 141
    goto :goto_2

    .line 144
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 145
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->clearRequestResetMinimizedMode()V

    .line 147
    if-ne p1, v3, :cond_1

    .line 150
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 152
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStagePosition()I

    .line 154
    move-result p1

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 159
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStagePosition()I

    .line 161
    move-result p1

    .line 164
    :goto_0
    move v10, p1

    .line 165
    if-nez v10, :cond_2

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 168
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 170
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 179
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 181
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    :goto_1
    move-object v8, p1

    .line 189
    invoke-static {}, Lcom/miui/analytics/MiuiSoScTrackStub;->getInstance()Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 190
    move-result-object v6

    .line 193
    const-string v7, "action_enter_both"

    .line 194
    iget p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getTaskFromRecentTasks(I)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 198
    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 202
    move-result-object v9

    .line 205
    const/16 v11, 0xc

    .line 206
    invoke-virtual/range {v6 .. v11}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 208
    :goto_2
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 211
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 213
    goto/16 :goto_6

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 217
    const-string v6, " stageTypeSide:"

    .line 219
    const/4 v7, 0x2

    .line 221
    if-ne p1, v1, :cond_c

    .line 222
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 224
    if-eq v1, v5, :cond_c

    .line 226
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 228
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 230
    move-result p1

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "monitor close mSingleCloseInFullMode:"

    .line 236
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 241
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, " mSoScFullClose:"

    .line 246
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSoScFullClose:Z

    .line 251
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " stageType="

    .line 256
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object p2

    .line 267
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-boolean p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 271
    if-eqz p2, :cond_5

    .line 273
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 275
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->clearIngoreUpdateSoScVisibility()V

    .line 277
    if-ne p1, v5, :cond_4

    .line 280
    iget p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseStageType:I

    .line 282
    if-eq p1, v5, :cond_4

    .line 284
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 286
    invoke-virtual {p2, p1, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisible(IZ)V

    .line 288
    :cond_4
    iput-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 291
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSoScFullClose:Z

    .line 293
    if-eqz p1, :cond_6

    .line 295
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 297
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisibleOnly(Z)V

    .line 299
    iput-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSoScFullClose:Z

    .line 302
    :cond_6
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsPairsStartedWithSingleCloseTransition:Z

    .line 304
    if-eqz p1, :cond_a

    .line 306
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 308
    iget p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 310
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 312
    move-result p1

    .line 315
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 316
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 318
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 320
    move-result p2

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    const-string v8, "complex animation finished:stageTypeMain stageTypeMain:"

    .line 326
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v1

    .line 343
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-ne p1, v5, :cond_7

    .line 347
    if-ne p2, v5, :cond_7

    .line 349
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 351
    invoke-virtual {p1, v5, v7}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->exitSplitScreen(II)V

    .line 353
    goto :goto_3

    .line 356
    :cond_7
    if-ne p1, v5, :cond_8

    .line 357
    if-eq p2, v5, :cond_8

    .line 359
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 361
    invoke-virtual {p1, v4, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisible(IZ)V

    .line 363
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 366
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 368
    goto :goto_3

    .line 371
    :cond_8
    if-eq p1, v5, :cond_9

    .line 372
    if-ne p2, v5, :cond_9

    .line 374
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 376
    invoke-virtual {p1, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisible(IZ)V

    .line 378
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 381
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 383
    :cond_9
    :goto_3
    iput-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsPairsStartedWithSingleCloseTransition:Z

    .line 386
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 388
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 390
    goto :goto_4

    .line 392
    :cond_a
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 393
    if-nez p1, :cond_b

    .line 395
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 397
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->sendExitStateIfNeeded()V

    .line 399
    :cond_b
    :goto_4
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 402
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 404
    goto/16 :goto_6

    .line 406
    :cond_c
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 408
    if-ne p1, v1, :cond_11

    .line 410
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 412
    if-eq v1, v5, :cond_11

    .line 414
    iget v8, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 416
    if-eq v8, v5, :cond_11

    .line 418
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 420
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 422
    move-result p1

    .line 425
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 426
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 428
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 430
    move-result p2

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v8, "stageTypeMain stageTypeMain:"

    .line 436
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v1

    .line 454
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 458
    if-eqz v1, :cond_d

    .line 460
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 462
    if-eq v1, v5, :cond_d

    .line 464
    const-string v1, "It\'s a complex animation, pair starts while back exits."

    .line 466
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iput-boolean v3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsPairsStartedWithSingleCloseTransition:Z

    .line 471
    :cond_d
    if-ne p1, v5, :cond_e

    .line 473
    if-ne p2, v5, :cond_e

    .line 475
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 477
    invoke-virtual {p1, v5, v7}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->exitSplitScreen(II)V

    .line 479
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 482
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->sendExitStateIfNeeded()V

    .line 484
    goto :goto_5

    .line 487
    :cond_e
    if-ne p1, v5, :cond_f

    .line 488
    if-eq p2, v5, :cond_f

    .line 490
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 492
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 494
    move-result p1

    .line 497
    if-ne p1, v7, :cond_10

    .line 498
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 500
    invoke-virtual {p1, v4, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisible(IZ)V

    .line 502
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 505
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 507
    goto :goto_5

    .line 510
    :cond_f
    if-eq p1, v5, :cond_10

    .line 511
    if-ne p2, v5, :cond_10

    .line 513
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 515
    invoke-virtual {p1, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScVisible(IZ)V

    .line 517
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 520
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 522
    :cond_10
    :goto_5
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStartTransition:Landroid/os/IBinder;

    .line 525
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsPairsStartedWithSingleCloseTransition:Z

    .line 527
    if-nez p1, :cond_14

    .line 529
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMainStartingTask:I

    .line 531
    iput v5, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSideStartingTask:I

    .line 533
    goto :goto_6

    .line 535
    :cond_11
    if-eqz p2, :cond_13

    .line 536
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 538
    if-ne p1, v1, :cond_13

    .line 540
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 542
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetSplitLayoutForIme(Landroid/view/SurfaceControl$Transaction;)V

    .line 544
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 547
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 549
    move-result p1

    .line 552
    if-eqz p1, :cond_12

    .line 553
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 555
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMinimizedPoint()Landroid/graphics/Point;

    .line 557
    move-result-object p1

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v3, "set minimized position:"

    .line 563
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    move-result-object v1

    .line 575
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 579
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRootTaskLeash()Landroid/view/SurfaceControl;

    .line 581
    move-result-object v0

    .line 584
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 585
    int-to-float v1, v1

    .line 587
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 588
    int-to-float p1, p1

    .line 590
    invoke-virtual {p2, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 591
    :cond_12
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mOrientationTransition:Landroid/os/IBinder;

    .line 594
    goto :goto_6

    .line 596
    :cond_13
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTaskTransition:Landroid/os/IBinder;

    .line 597
    if-ne p1, p2, :cond_14

    .line 599
    iget p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 601
    if-eq p1, v5, :cond_14

    .line 603
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 605
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->clearIngoreUpdateSoScVisibility()V

    .line 607
    :cond_14
    :goto_6
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDeferredUpdate:Z

    .line 610
    if-eqz p1, :cond_15

    .line 612
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 614
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 616
    iput-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDeferredUpdate:Z

    .line 619
    :cond_15
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenFullTaskTransition:Landroid/os/IBinder;

    .line 621
    return-void
    .line 623
.end method

.method public monitorTransitionRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_6

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 22
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 29
    move-result p2

    .line 32
    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 39
    iget p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 43
    goto/16 :goto_1

    .line 45
    :cond_2
    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildCount()I

    .line 53
    move-result v3

    .line 56
    if-ne v3, v0, :cond_5

    .line 57
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 59
    if-eqz p2, :cond_3

    .line 61
    iget p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 63
    const/4 v2, -0x1

    .line 65
    if-eq p2, v2, :cond_3

    .line 66
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSoScFullClose:Z

    .line 68
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 70
    iget p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 72
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 74
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 76
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 78
    move-result p1

    .line 81
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseStageType:I

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 84
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 86
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setIngoreUpdateSoScVisibility()V

    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 97
    iget p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 99
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->deactivateCloseInFull(I)V

    .line 101
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSingleCloseInFullMode:Z

    .line 104
    :cond_4
    if-eqz p3, :cond_8

    .line 106
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDeferredUpdate:Z

    .line 108
    if-nez p1, :cond_8

    .line 110
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDeferredUpdate:Z

    .line 112
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 114
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->deferUpdateSoScState()V

    .line 116
    goto :goto_1

    .line 119
    :cond_5
    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 120
    move-result p2

    .line 123
    if-eqz p2, :cond_8

    .line 124
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildCount()I

    .line 126
    move-result p2

    .line 129
    if-le p2, v0, :cond_8

    .line 130
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTaskTransition:Landroid/os/IBinder;

    .line 132
    iget p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 134
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 136
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 138
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setIngoreUpdateSoScVisibility()V

    .line 140
    goto :goto_1

    .line 143
    :cond_6
    if-eqz p2, :cond_8

    .line 144
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    move-result-object p3

    .line 149
    if-eqz p3, :cond_8

    .line 150
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 152
    move-result p3

    .line 155
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    move-result-object p2

    .line 159
    invoke-static {p3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 160
    move-result p3

    .line 163
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 164
    move-result p2

    .line 167
    if-ne p2, v0, :cond_7

    .line 168
    goto :goto_0

    .line 170
    :cond_7
    const/4 v0, 0x0

    .line 171
    :goto_0
    if-eqz p3, :cond_8

    .line 172
    if-eqz v0, :cond_8

    .line 174
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenFullTaskTransition:Landroid/os/IBinder;

    .line 176
    :cond_8
    :goto_1
    sget-object p1, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->TAG:Ljava/lang/String;

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    const-string p3, "monitorTransitionRequest mRequestOpenTransition:"

    .line 182
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTransition:Landroid/os/IBinder;

    .line 187
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string p3, " mRequestOpenTriggerTask:"

    .line 192
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestOpenTriggerTask:I

    .line 197
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string p3, " mRequestCloseTransition:"

    .line 202
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTransition:Landroid/os/IBinder;

    .line 207
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    const-string p3, " mRequestCloseTriggerTask:"

    .line 212
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseTriggerTask:I

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string p3, " mRequestCloseStageType:"

    .line 222
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRequestCloseStageType:I

    .line 227
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 235
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
    .line 239
.end method

.method public needAdjustSurfaceForMinimizedMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 9
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 20
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    return v2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 28
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 32
    move-result p1

    .line 35
    const/4 v0, -0x1

    .line 36
    if-ne v0, p1, :cond_2

    .line 37
    return v1

    .line 39
    :cond_2
    if-nez p1, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 42
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSplitScreenSideStageActive()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    return v1

    .line 50
    :cond_3
    if-ne p1, v2, :cond_4

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 53
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSplitScreenMainStageActive()Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_4

    .line 59
    return v1

    .line 61
    :cond_4
    return v2

    .line 62
    :cond_5
    :goto_0
    return v1
    .line 63
.end method

.method public needResingToEnterSoSc()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isLandscape()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isPad()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    return v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isFold()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    move-result-object p0

    .line 37
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 38
    const/16 v0, 0x258

    .line 40
    if-lt p0, v0, :cond_1

    .line 42
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
    .line 46
.end method

.method public needSupportNavigationHandle()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_FOLD:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isWideScreen()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    :cond_0
    return v1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v0

    .line 23
    const-string v2, "navigation_mode"

    .line 24
    const/4 v3, -0x2

    .line 26
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    move-result v0

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p0

    .line 36
    const-string v2, "hide_gesture_line"

    .line 37
    const/4 v3, -0x1

    .line 39
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    move-result p0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    if-nez p0, :cond_2

    .line 46
    const/4 v1, 0x1

    .line 48
    :cond_2
    return v1
    .line 49
.end method

.method public needUnpaired(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isFold()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 24
    const/16 v2, 0x258

    .line 26
    if-lt v0, v2, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mSpecialList:Ljava/util/HashSet;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    :goto_0
    return v1
    .line 41
.end method

.method public offsetSurfaceInMinimizedMode()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->offsetSurfaceInMinimizedMode()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public onPreExitSoScState()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onPreExitSoScState()V

    .line 9
    return-void
    .line 12
.end method

.method public onPreSoScBoundsChanged(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onPreSoScBoundsChanged(I)V

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method public onRecentsTransitionFinished(ZZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    if-eqz p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-virtual {p3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateSoScSplitPair()V

    .line 12
    :cond_0
    const/4 p3, 0x0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-nez p2, :cond_4

    .line 17
    const-string p2, "action_exit_both"

    .line 19
    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getLeftOrTopStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 29
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRightOrBottomStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    move-result-object v1

    .line 34
    invoke-static {}, Lcom/miui/analytics/MiuiSoScTrackStub;->getInstance()Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->inSoScFullMode()Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const-string p2, "action_exit_single"

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->inSoScFullMode()Z

    .line 56
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    move v3, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v3, -0x1

    .line 64
    :goto_1
    invoke-virtual {v2, p2, p1, v1, v3}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    goto :goto_2

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mPausingTasks:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result p1

    .line 74
    if-le p1, v0, :cond_4

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 77
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getLeftOrTopStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 79
    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 83
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRightOrBottomStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    move-result-object v1

    .line 88
    invoke-static {}, Lcom/miui/analytics/MiuiSoScTrackStub;->getInstance()Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 89
    move-result-object v2

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    invoke-virtual {v2, p2, p1, v1, p3}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mPausingTasks:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsStarted:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsFinished:Z

    .line 111
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 113
    if-eqz p1, :cond_5

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 117
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->clearIngoreUpdateSoScVisibility()V

    .line 119
    :cond_5
    return-void
    .line 122
.end method

.method public onRecentsTransitionStart(Landroid/window/TransitionInfo;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 4
    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 14
    move-result-object v2

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 22
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 24
    move-result v3

    .line 27
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    move-result-object v2

    .line 43
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 44
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mPausingTasks:Ljava/util/ArrayList;

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsStarted:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentsFinished:Z

    .line 61
    return-void
    .line 63
.end method

.method public onRecentsTransitionStarting()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isWideScreen()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onRecentsTransitionStarting()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public setMixedHandler(Lcom/android/wm/shell/transition/SoScMixedHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mMixedHandler:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 2
    return-void
    .line 4
.end method

.method public setRotationLock(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, -0x1

    .line 8
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :goto_0
    return-void
    .line 16
.end method

.method public setSplitScreenResizing(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSplitScreenResizing(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public setTaskStackListener(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;-><init>(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 7
    return-void
    .line 10
.end method

.method public showSplitGuideIfNeed()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/16 p0, 0xb

    .line 6
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public supportSoScMinimizedMode()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->IS_TABLET:Z

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isLandscape()Z

    .line 15
    move-result p0

    .line 18
    xor-int/2addr p0, v2

    .line 19
    return p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isWideScreen()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isFold()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    return v1

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isWideScreen()Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    return v2

    .line 40
    :cond_3
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 41
    move-result-object v0

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_4

    .line 51
    return v1

    .line 53
    :cond_4
    return v2
    .line 54
.end method

.method public updateDividerOriPosition(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->isSoScSupported()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mDividerOriginPosition:I

    .line 8
    :cond_0
    return-void
    .line 10
.end method

.method public updateIsInMultiWinSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mIsInMultiWinSwitch:Z

    .line 2
    return-void
    .line 4
.end method

.method public updateKeyguardState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mKeyguardShow:Z

    .line 2
    return-void
    .line 4
.end method

.method public updateLaunchAdjacentRootWhenRecentFinished(ILandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateLaunchAdjacentRootWhenRecentFinished(ILandroid/window/WindowContainerTransaction;)V

    .line 9
    return-void
    .line 12
.end method

.method public updateRecentsOnTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentTasksOptional:Ljava/util/Optional;

    .line 7
    new-instance v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;

    .line 9
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 15
    return-void
    .line 18
.end method

.method public updateRecentsWhenExitPip(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mRecentTasksOptional:Ljava/util/Optional;

    .line 9
    new-instance v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    :cond_1
    :goto_0
    return-void
    .line 20
.end method

.method public updateSoScSurfaceForMultiWinSwitch()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mReady:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateSoScSurfaceForMultiWinSwitch()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
