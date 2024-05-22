.class Lcom/android/wm/shell/sosc/SoScStageTaskListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoScStageTaskListener"


# instance fields
.field private final mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

.field private final mChildrenLeashes:Landroid/util/SparseArray;

.field protected mChildrenTaskInfo:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;

.field protected mDimLayer:Landroid/view/SurfaceControl;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private mLocalTriConsumer:Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

.field private mMultiWindowSwitchOp:Z

.field protected mRootLeash:Landroid/view/SurfaceControl;

.field protected mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public static synthetic $r8$lambda$0JdgR9WdfEDJmCGu1xe0E5H0WXE(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$isFocused$4(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$6PvB58maHKQXaHCkRK47oa1f-nk(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$getTopVisibleChild$10(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$EjhtAjnvtAL3nAgdHXvIT13-ykg(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$onTaskInfoChanged$6(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$HSg2BGEE8w4nRcVBvD5j2llmnbs(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$onTaskVanished$7(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$P5WPXu9AfHur3TtXBi6iY8aRBc4(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$containsToken$0(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$PSIr9Tookw9MEf_nXlD1WuA3LE4(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$onTaskAppeared$5(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$UKJSxPL2oLqfmoKqxiVe2-I1Lx8(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$getTopVisibleChildTaskId$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$cmxv7ziuJkXU8jv8UD84bz5ngXw(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$updateChildTaskSurface$8(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$k-ktvCm_mzV8-TxyzTRkFP-i4Cs(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$getTopChildTaskInfo$9(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$mHFOryBxK72t351fgEbWofYDWm0(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$getTopChildTaskUid$3(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$mMDOuUG19PwYBvL4zQl7Y9VC_-g(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->lambda$containsContainer$1(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mupdateChildTaskSurface(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mContext:Landroid/content/Context;

    .line 19
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 21
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 23
    iput-object p6, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 25
    iput-object p7, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 27
    const/4 p1, 0x6

    .line 29
    invoke-virtual {p2, p3, p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 30
    return-void
    .line 33
.end method

.method private contains(Ljava/util/function/Predicate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
    .line 22
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 8
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/SurfaceControl;

    .line 25
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v0, "There is no surface for taskId="

    .line 30
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    .line 39
.end method

.method private getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
    .line 31
.end method

.method private static synthetic lambda$containsContainer$1(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object p1

    .line 7
    if-ne p1, p0, :cond_0

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

.method private static synthetic lambda$containsToken$0(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method private static synthetic lambda$getTopChildTaskInfo$9(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method private static synthetic lambda$getTopChildTaskUid$3(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

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

.method private static synthetic lambda$getTopVisibleChild$10(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

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

.method private static synthetic lambda$getTopVisibleChildTaskId$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

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

.method private static synthetic lambda$isFocused$4(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 2
    return p0
    .line 4
.end method

.method private synthetic lambda$onTaskAppeared$5(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/SurfaceUtils;->makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 10
    return-void
    .line 12
.end method

.method private synthetic lambda$onTaskInfoChanged$6(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onTaskVanished$7(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 9
    return-void
    .line 12
.end method

.method private static synthetic lambda$updateChildTaskSurface$8(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->TAG:Ljava/lang/String;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    const-string p3, "Skip updating invalid child task surface of task#"

    .line 12
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 31
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 34
    int-to-float p1, p1

    .line 36
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 37
    int-to-float p2, p2

    .line 39
    invoke-virtual {p4, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 40
    if-eqz p3, :cond_1

    .line 43
    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 47
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/high16 v5, 0x3f800000    # 1.0f

    .line 54
    move-object v0, p4

    .line 56
    move-object v1, p0

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-virtual {p4, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 61
    :cond_1
    return-void
    .line 64
.end method

.method private sendStatusChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result p0

    .line 13
    if-lez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onStatusChanged(ZZ)V

    .line 19
    return-void
    .line 22
.end method

.method private updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 12
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 19
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p2, p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 22
    return-void
    .line 25
.end method

.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 6
    return-void
    .line 9
.end method

.method public containsContainer(Landroid/os/IBinder;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public containsTask(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public containsToken(Landroid/window/WindowContainerToken;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "Children list:"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 42
    move-result v1

    .line 45
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 46
    if-ltz v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 55
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, "Task#"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v4, " taskID="

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, " baseActivity="

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "mMultiWindowSwitchOp:"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mMultiWindowSwitchOp:Z

    .line 133
    const-string v2, "mLocalTriConsumer:"

    .line 135
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    move-result-object p2

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mLocalTriConsumer:Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

    .line 141
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 149
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void
    .line 153
.end method

.method public evictAllChildren(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 20
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method

.method public evictChildren(Landroid/window/WindowContainerTransaction;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    const/4 p2, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p0, p2, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 20
    if-nez v2, :cond_0

    .line 22
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 24
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    aget-object v2, p1, v1

    .line 13
    iget v3, v2, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 15
    if-nez v3, :cond_0

    .line 17
    iget v2, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 19
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result p1

    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    :goto_1
    if-ltz p1, :cond_2

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 39
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 41
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p2, v1, v2, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    return-void
    .line 50
.end method

.method public evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    if-ne p2, v2, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 29
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    return-void
    .line 35
.end method

.method public fadeOutDecor(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->fadeOutDecor(Ljava/lang/Runnable;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    :goto_0
    return-void
    .line 13
.end method

.method public getChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTaskLeash(I)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControl;

    .line 8
    return-object p0
    .line 10
.end method

.method public getTopChildTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getTopChildTaskUid()I
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 14
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
    .line 22
.end method

.method public getTopVisibleChild()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getTopVisibleChildTaskId()I
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public isFocused()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public isRootTaskId(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    if-ne p0, p1, :cond_0

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

.method public bridge synthetic onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMultiWindowSwitchEnd()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mMultiWindowSwitchOp:Z

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mLocalTriConsumer:Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->accept()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mLocalTriConsumer:Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public onMultiWindowSwitchStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mMultiWindowSwitchOp:Z

    .line 3
    return-void
    .line 5
.end method

.method public onResized(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public onResizing(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    move v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public onSplitScreenListenerRegistered(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 26
    invoke-interface {p1, v1, p2, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;->onTaskStageChanged(IIZ)V

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTaskAppeared taskInfo isVisible:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " id:"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " isFocused():"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    if-nez v0, :cond_0

    .line 57
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    new-instance p1, Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 63
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 71
    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/common/split/SplitDecorManager;-><init>(Landroid/content/res/Configuration;Lcom/android/launcher3/icons/IconProvider;Landroid/view/SurfaceSession;)V

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 76
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 78
    invoke-interface {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onRootTaskAppeared()V

    .line 80
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->sendStatusChanged()V

    .line 83
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 86
    new-instance p2, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;

    .line 88
    const/4 v0, 0x2

    .line 90
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 94
    goto/16 :goto_2

    .line 97
    :cond_0
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 99
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 101
    if-ne v1, v0, :cond_8

    .line 103
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 107
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mMultiWindowSwitchOp:Z

    .line 117
    const/4 v2, 0x1

    .line 119
    if-nez v1, :cond_1

    .line 120
    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

    .line 126
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;-><init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 128
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mLocalTriConsumer:Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 133
    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 135
    const/4 v4, 0x0

    .line 137
    if-eqz v3, :cond_2

    .line 138
    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 140
    if-eqz v3, :cond_2

    .line 142
    move v3, v2

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move v3, v4

    .line 146
    :goto_1
    invoke-interface {v1, v0, v2, v3}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 147
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 150
    if-eqz v1, :cond_4

    .line 152
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 154
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 158
    iget-object v6, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 160
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 162
    move-result v6

    .line 165
    if-lez v6, :cond_3

    .line 166
    move v4, v2

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 169
    move-result v6

    .line 172
    invoke-interface {v3, v5, v4, v6}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onSoScStatusChanged(ZZZ)V

    .line 173
    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 176
    invoke-interface {v3, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 178
    if-eqz v1, :cond_7

    .line 181
    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 183
    if-eqz p2, :cond_5

    .line 185
    sget-object p2, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 187
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 189
    move-result v0

    .line 192
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 193
    move-result p2

    .line 196
    if-eqz p2, :cond_5

    .line 197
    sget-object p2, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    .line 199
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 201
    move-result p1

    .line 204
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 205
    move-result p1

    .line 208
    if-nez p1, :cond_6

    .line 209
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 211
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onNoLongerSupportMultiWindow()V

    .line 213
    :cond_6
    return-void

    .line 216
    :cond_7
    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 217
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 220
    invoke-interface {p1, v0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskAppeared(I)V

    .line 222
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->sendStatusChanged()V

    .line 225
    :goto_2
    return-void

    .line 228
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, "\n Unknown task: "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string p1, "\n mRootTaskInfo: "

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object p0

    .line 260
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    throw p2
    .line 264
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTaskInfoChanged taskInfo isVisible:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " id:"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " isFocused():"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 57
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 59
    const/4 v3, 0x1

    .line 61
    const/4 v4, 0x0

    .line 62
    if-ne v1, v2, :cond_2

    .line 63
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 65
    if-nez v1, :cond_1

    .line 67
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 69
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 71
    if-eq v0, v1, :cond_1

    .line 73
    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 77
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mContext:Landroid/content/Context;

    .line 79
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 81
    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 83
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 85
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 87
    move-result-object v5

    .line 90
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 91
    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 95
    new-instance v1, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;

    .line 97
    invoke-direct {v1, p0, v4}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 102
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 105
    move v0, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 109
    if-ne v0, v1, :cond_d

    .line 111
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 113
    if-eqz v0, :cond_c

    .line 115
    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 117
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 119
    move-result v1

    .line 122
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 123
    move-result v0

    .line 126
    if-eqz v0, :cond_c

    .line 127
    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    .line 129
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 131
    move-result v1

    .line 134
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 135
    move-result v0

    .line 138
    if-nez v0, :cond_3

    .line 139
    goto/16 :goto_6

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 143
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 150
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 152
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 154
    if-eqz v2, :cond_4

    .line 156
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 158
    if-eqz v2, :cond_4

    .line 160
    move v2, v3

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    move v2, v4

    .line 164
    :goto_1
    invoke-interface {v0, v1, v3, v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 165
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 168
    if-nez v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 172
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 174
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v0

    .line 179
    check-cast v0, Landroid/view/SurfaceControl;

    .line 180
    invoke-direct {p0, p1, v0, v4}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 182
    :cond_5
    move v0, v3

    .line 185
    :goto_2
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 186
    if-eqz v1, :cond_9

    .line 188
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 190
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 194
    if-nez v5, :cond_7

    .line 196
    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 198
    if-eqz v5, :cond_6

    .line 200
    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 202
    if-eqz v5, :cond_6

    .line 204
    goto :goto_3

    .line 206
    :cond_6
    move v5, v4

    .line 207
    goto :goto_4

    .line 208
    :cond_7
    :goto_3
    move v5, v3

    .line 209
    :goto_4
    iget-object v6, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 212
    move-result v6

    .line 215
    if-lez v6, :cond_8

    .line 216
    goto :goto_5

    .line 218
    :cond_8
    move v3, v4

    .line 219
    :goto_5
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 220
    move-result v4

    .line 223
    invoke-interface {v2, v5, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onSoScStatusChanged(ZZZ)V

    .line 224
    :cond_9
    if-eqz v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 229
    invoke-interface {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 231
    :cond_a
    if-eqz v1, :cond_b

    .line 234
    return-void

    .line 236
    :cond_b
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->sendStatusChanged()V

    .line 237
    return-void

    .line 240
    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 241
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onNoLongerSupportMultiWindow()V

    .line 243
    return-void

    .line 246
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    const-string v2, "\n Unknown task: "

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    const-string p1, "\n mRootTaskInfo: "

    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 278
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    throw v0
    .line 282
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTaskVanished taskInfo isVisible:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " id:"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " isFocused():"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 59
    const/4 v2, 0x1

    .line 61
    if-ne v1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 64
    invoke-interface {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onRootTaskVanished()V

    .line 66
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 72
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 74
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;

    .line 76
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 81
    goto :goto_1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 87
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 103
    invoke-interface {v1, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 108
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 112
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 116
    move-result v4

    .line 119
    const/4 v5, 0x0

    .line 120
    if-lez v4, :cond_1

    .line 121
    goto :goto_0

    .line 123
    :cond_1
    move v2, v5

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->isFocused()Z

    .line 125
    move-result v4

    .line 128
    invoke-interface {v1, v3, v2, v4}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onSoScStatusChanged(ZZZ)V

    .line 129
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mCallbacks:Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;

    .line 132
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 134
    invoke-interface {v1, v0, v5, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 136
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 139
    if-eqz p1, :cond_2

    .line 141
    return-void

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->sendStatusChanged()V

    .line 144
    :goto_1
    return-void

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, "\n Unknown task: "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string p1, "\n mRootTaskInfo: "

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 179
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    throw v0
    .line 183
.end method

.method public reorderChild(IZLandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->containsTask(I)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 17
    invoke-virtual {p3, p0, p2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 19
    return-void
    .line 22
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    return-void
    .line 9
.end method

.method public reparentTopTask(Landroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 5
    sget-object v3, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    .line 7
    sget-object v4, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 9
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    move-object v0, p1

    .line 13
    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    .line 14
    return-void
    .line 17
.end method

.method public resetBounds(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 22
    return-void
    .line 25
.end method

.method public screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public bridge synthetic supportCompatUI()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public updateChildTaskSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 6
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    sget-object p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skip updating invalid child task surface of task#"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 11
    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    move-object v4, v2

    .line 13
    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
