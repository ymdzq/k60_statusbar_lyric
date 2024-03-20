.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;


# static fields
.field public static CHANGE_ACTIVITY_SWITCH:I = 0x2

.field public static CHANGE_BOUNDS:I = 0x4

.field public static CHANGE_DKT_MODE:I = 0x80

.field public static CHANGE_FREEFORM_ADDED:I = 0x10

.field public static CHANGE_MODE:I = 0x8

.field public static CHANGE_NULL:I = 0x1

.field public static CHANGE_ORIENTATION:I = 0x40

.field public static CHANGE_SURFACEVIEW_TEXTUREVIEW:I = 0x20

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeTaskRepository"


# instance fields
.field private final fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

.field private mLastFocusedTaskInfo:Landroid/app/TaskInfo;

.field private mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

.field private mSplitScreenController:Ljava/util/Optional;

.field private final mTaskStateListener:Landroid/util/ArraySet;

.field private final mTaskStates:Landroid/util/SparseArray;

.field private final mTaskWrapperInfos:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$3wKKtj24Dd66ACZ2FsI6Tp5_LYs(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$updateTaskStrategicPolicy$3(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$A4wDx_mUPMI5X2CNKi8jdWXi-sw(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$dump$5(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$DV1VGCaz6t_wXyHIWMExH4iJayY(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$onTaskAppeared$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$GZQHOMHbKoMUpwRbNzBBjyO1v-Y(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$Xtqv38V-aMsgtPET7WgD87DHRoY(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$onTaskAppeared$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_GyxCpD8z3an_O3Giy4GRm4RK_k(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->lambda$onTaskVanished$4(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    .line 31
    return-void
    .line 33
.end method

.method private isFullscreenOfMultiWindowTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 9
    move-result p0

    .line 12
    const/4 p1, 0x6

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    return v0
    .line 19
.end method

.method private isFullscreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    return p1

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
    .line 11
.end method

.method private static synthetic lambda$dump$5(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo p1, "taskStateListener="

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    return-void
    .line 26
.end method

.method private static synthetic lambda$onTaskAppeared$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskAppeared$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskVanished$4(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$updateTaskStrategicPolicy$3(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onTaskSizeLevelChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method private updateTaskStrategicPolicy(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 2
    and-int/2addr v0, p3

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityRecordName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setPreActivityRecordName(Ljava/lang/String;)V

    .line 19
    :cond_0
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    .line 22
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 24
    or-int/2addr v0, v1

    .line 26
    and-int/2addr v0, p3

    .line 27
    if-eqz v0, :cond_1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    if-eqz p2, :cond_1

    .line 32
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setRequestedOrientation(I)V

    .line 36
    :cond_1
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_FREEFORM_ADDED:I

    .line 39
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    .line 41
    or-int/2addr v0, v1

    .line 43
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 44
    or-int/2addr v0, v1

    .line 46
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_DKT_MODE:I

    .line 47
    or-int/2addr v0, v1

    .line 49
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ORIENTATION:I

    .line 50
    or-int/2addr v0, v1

    .line 52
    and-int/2addr v0, p3

    .line 53
    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 56
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->detectSizeLevelChanges(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    .line 64
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 66
    or-int/2addr v0, v1

    .line 68
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ORIENTATION:I

    .line 69
    or-int/2addr v0, v1

    .line 71
    and-int/2addr v0, p3

    .line 72
    if-eqz v0, :cond_2

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 75
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;

    .line 77
    const/4 v1, 0x1

    .line 79
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 80
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    :cond_2
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_NULL:I

    .line 86
    if-eq p3, p0, :cond_3

    .line 88
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 90
    :cond_3
    return-void
    .line 93
.end method


# virtual methods
.method public addOrMoveTaskToTop(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method

.method public addTaskStateListener(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "  "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "mLastFocusedTaskInfo="

    .line 35
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mLastFocusedTaskInfo:Landroid/app/TaskInfo;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "TaskWrapperInfo List:"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 75
    move-result v1

    .line 78
    const/4 v2, 0x1

    .line 79
    sub-int/2addr v1, v2

    .line 80
    :goto_0
    if-ltz v1, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 83
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 89
    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 96
    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string p2, "TaskStateListener List:"

    .line 107
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 119
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda0;

    .line 121
    invoke-direct {p2, v2, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 126
    return-void
    .line 129
.end method

.method public findActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v5

    .line 13
    const-string v6, "findActiveMiuiFreeformTask error, taskWrapperInfo is null!"

    .line 14
    if-ge v2, v5, :cond_6

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 21
    check-cast v5, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v5

    .line 27
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 28
    move-result-object v7

    .line 31
    if-eqz v7, :cond_5

    .line 32
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 34
    move-result-object v8

    .line 37
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 40
    move-result v8

    .line 43
    if-eqz v8, :cond_5

    .line 44
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 46
    move-result v8

    .line 49
    if-nez v8, :cond_6

    .line 50
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 52
    move-result v8

    .line 55
    if-nez v8, :cond_6

    .line 56
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 58
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 62
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 64
    move-result v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    goto :goto_4

    .line 70
    :cond_0
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v8

    .line 74
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 75
    move-result v9

    .line 78
    invoke-static {v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 79
    move-result-object v8

    .line 82
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 83
    move-result v9

    .line 86
    if-eqz v9, :cond_3

    .line 87
    float-to-int v9, p1

    .line 89
    float-to-int v10, p2

    .line 90
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 91
    move-result v11

    .line 94
    if-eqz v11, :cond_2

    .line 95
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 97
    invoke-virtual {v7, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 100
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 108
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 109
    if-eqz p1, :cond_1

    .line 111
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxBounds(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Landroid/graphics/Rect;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {p1, v7, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setFreeformAllParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 119
    goto :goto_1

    .line 122
    :cond_1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 123
    invoke-static {p0, v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    return-object v7

    .line 128
    :cond_2
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 129
    move-result v5

    .line 132
    if-eqz v5, :cond_5

    .line 133
    return-object v1

    .line 135
    :cond_3
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 136
    move-result v6

    .line 139
    if-eqz v6, :cond_5

    .line 140
    if-nez v3, :cond_5

    .line 142
    float-to-int v6, p1

    .line 144
    float-to-int v9, p2

    .line 145
    invoke-virtual {v7, v8, v6, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 146
    move-result v10

    .line 149
    const/4 v11, 0x1

    .line 150
    if-eqz v10, :cond_4

    .line 151
    new-instance v4, Landroid/util/Pair;

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v3

    .line 158
    invoke-direct {v4, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    :goto_2
    move v3, v11

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-virtual {v8, v6, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 164
    move-result v5

    .line 167
    if-eqz v5, :cond_5

    .line 168
    goto :goto_2

    .line 170
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_6
    :goto_4
    if-eqz v4, :cond_8

    .line 175
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 177
    move-object v1, v0

    .line 179
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 180
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 182
    float-to-int p1, p1

    .line 185
    float-to-int p2, p2

    .line 186
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 187
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 190
    iget-object p2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 192
    check-cast p2, Ljava/lang/Integer;

    .line 194
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 196
    move-result p2

    .line 199
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object p1

    .line 203
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 204
    if-eqz p1, :cond_7

    .line 206
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxBounds(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Landroid/graphics/Rect;

    .line 210
    move-result-object p0

    .line 213
    invoke-virtual {p1, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setFreeformAllParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 214
    goto :goto_5

    .line 217
    :cond_7
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 218
    invoke-static {p0, v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_8
    :goto_5
    return-object v1
    .line 223
.end method

.method public findFreeformSurface(I)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 8
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "findFreeformSurface error:"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 p0, 0x0

    .line 39
    return-object p0
    .line 40
.end method

.method public findMiuiFreeformTaskByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "findFreeformSurface error:"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "findFreeformSurface error:"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 p0, 0x0

    .line 39
    return-object p0
    .line 40
.end method

.method public findTaskWrapperInfoByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "findFreeformSurface error:"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 p0, 0x0

    .line 35
    return-object p0
    .line 36
.end method

.method public findTopDraggableFullscreenTaskInfo()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "findTopDraggableFullscreenTaskInfo start"

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mSplitScreenController:Ljava/util/Optional;

    .line 20
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mSplitScreenController:Ljava/util/Optional;

    .line 28
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 34
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const-string p0, "In split screen state, return \uff01"

    .line 42
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v2

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    return-object v2

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    move-result v3

    .line 61
    if-ge v1, v3, :cond_a

    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v4

    .line 75
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 80
    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v4

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object v4, v2

    .line 89
    :goto_1
    if-nez v4, :cond_3

    .line 90
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 93
    move-result v5

    .line 96
    if-eqz v5, :cond_4

    .line 97
    return-object v2

    .line 99
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isSplitScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 100
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    return-object v2

    .line 106
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isMiuiMagicWindows(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 107
    move-result v5

    .line 110
    if-nez v5, :cond_6

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFixOrientation(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 113
    move-result v5

    .line 116
    if-nez v5, :cond_6

    .line 117
    invoke-direct {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFullscreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 119
    move-result v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    :cond_6
    sget-object v5, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    const-string v7, "findTopDraggableFullscreenTaskInfo taskInfo:"

    .line 129
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugTaskTopActivityInfo()Ljava/lang/String;

    .line 134
    move-result-object v7

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v6

    .line 144
    invoke-static {v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 148
    move-result v5

    .line 151
    if-nez v5, :cond_8

    .line 152
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_0

    .line 156
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 157
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isForbiddenWindow(Landroid/app/TaskInfo;)Z

    .line 159
    move-result v0

    .line 162
    if-eqz v0, :cond_9

    .line 163
    return-object v2

    .line 165
    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxBounds(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Landroid/graphics/Rect;

    .line 168
    move-result-object p0

    .line 171
    invoke-virtual {v3, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setFullscreenAllParams(Landroid/graphics/Rect;)V

    .line 172
    return-object v3

    .line 175
    :cond_a
    return-object v2
    .line 176
.end method

.method public getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getFreeformTasksInZOrder()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getFullscreenOrMultiWindowTasksInZOrder()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getTaskChangingType(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/TaskInfo;)I
    .locals 7

    .line 1
    const-string v0, "isNeedUpdate changeType:"

    .line 2
    const-string v1, "isNeedUpdate e:"

    .line 4
    sget v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_NULL:I

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v3

    .line 11
    invoke-virtual {p0, v3, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTopActivityChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    .line 12
    move-result v4

    .line 15
    invoke-virtual {p0, v3, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTaskBoundsChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    .line 16
    move-result v5

    .line 19
    invoke-virtual {p0, v3, p3, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTaskModeChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z

    .line 20
    move-result v6

    .line 23
    invoke-virtual {p0, v3, p3, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTaskScaleChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z

    .line 24
    move-result p1

    .line 27
    invoke-virtual {p0, v3, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isSurfaceViewOrTextureViewChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    .line 28
    move-result p2

    .line 31
    invoke-virtual {p0, v3, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isTaskOrientationChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    .line 32
    if-eqz v4, :cond_0

    .line 35
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 37
    or-int/2addr v2, p0

    .line 39
    :cond_0
    if-nez v5, :cond_1

    .line 40
    if-eqz p1, :cond_2

    .line 42
    :cond_1
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_BOUNDS:I

    .line 44
    or-int/2addr p0, v2

    .line 46
    move v2, p0

    .line 47
    :cond_2
    if-eqz v6, :cond_3

    .line 48
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_MODE:I

    .line 50
    or-int/2addr p0, v2

    .line 52
    move v2, p0

    .line 53
    :cond_3
    if-eqz p2, :cond_4

    .line 54
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    .line 56
    or-int/2addr p0, v2

    .line 58
    move v2, p0

    .line 59
    :cond_4
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_NULL:I

    .line 60
    if-eq v2, p0, :cond_5

    .line 62
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_5
    return v2

    .line 81
    :catch_0
    move-exception p0

    .line 82
    :try_start_1
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :catchall_0
    return v2
    .line 100
.end method

.method public getTaskCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public hasTaskDragResizing(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isDragResizing()Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method

.method public isFixOrientation(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 2
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 6
    move-result p0

    .line 9
    const/4 p1, 0x2

    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public isInFreeformMode(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 3
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 5
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 7
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v0, 0x5

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    :catch_0
    :cond_0
    return p0
    .line 15
.end method

.method public isInPipMode(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 3
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 5
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 7
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    :catch_0
    :cond_0
    return p0
    .line 15
.end method

.method public isMiuiMagicWindows(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 2
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    const-string p1, "miui-magic-windows"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public isSplitScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    const/4 p1, 0x6

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public isSurfaceViewOrTextureViewChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/TaskInfo;->mTopActivityMediaSize:Landroid/graphics/Rect;

    .line 2
    const/4 p1, 0x1

    .line 4
    if-nez p0, :cond_1

    .line 5
    if-eqz p0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1

    .line 11
    :cond_1
    iget-object p2, p2, Landroid/app/TaskInfo;->mTopActivityMediaSize:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    xor-int/2addr p0, p1

    .line 18
    return p0
    .line 19
.end method

.method public isTaskBoundsChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 2
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p0

    .line 9
    iget-object p1, p2, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 10
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    return p0
    .line 24
.end method

.method public isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public isTaskModeChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p2}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 6
    move-result p1

    .line 9
    const/4 p2, 0x1

    .line 10
    if-eq p0, p1, :cond_0

    .line 11
    move p0, p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p4, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSameWindowMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 18
    move-result p1

    .line 21
    xor-int/2addr p1, p2

    .line 22
    or-int/2addr p0, p1

    .line 23
    :cond_1
    return p0
    .line 24
.end method

.method public isTaskOrientationChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 6
    invoke-virtual {p2}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 11
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    if-eq p0, p1, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public isTaskScaleChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p4, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSameWindowMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    const/4 p3, 0x1

    .line 6
    xor-int/2addr p0, p3

    .line 7
    if-nez p0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 10
    move-result p4

    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne p4, v0, :cond_0

    .line 15
    invoke-virtual {p2}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 17
    move-result p4

    .line 20
    if-ne p4, v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 23
    move-result-object p1

    .line 26
    iget p1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 27
    invoke-virtual {p2}, Landroid/app/TaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 29
    move-result-object p2

    .line 32
    iget p2, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 33
    cmpl-float p1, p1, p2

    .line 35
    if-eqz p1, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    move p3, p0

    .line 40
    :goto_0
    return p3
    .line 41
.end method

.method public isTopActivityChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p1, p2, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public onAppOrientationChanged(II)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 12
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 19
    move-result v0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    sget-object v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    const-string v4, "onAppOrientationChanged  requestedOrientation:"

    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setRequestedOrientation(I)V

    .line 50
    sget p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ORIENTATION:I

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->updateTaskStrategicPolicy(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 55
    :cond_0
    return v1
    .line 58
.end method

.method public onAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

    .line 18
    invoke-interface {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onAppTransition(Landroid/window/TransitionInfo;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
    .line 29
.end method

.method public onDesktopModeChange(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onDesktopModeChange  isDesktop:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    :goto_0
    if-ltz v0, :cond_1

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 37
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v2

    .line 44
    sget v3, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_DKT_MODE:I

    .line 45
    invoke-direct {p0, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->updateTaskStrategicPolicy(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 50
    invoke-virtual {v2, p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->policyUpdateByDesktopModeChanged(ZLcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 52
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    return-void
    .line 58
.end method

.method public onNotifyTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V

    .line 4
    return-void
    .line 7
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 5

    .line 9
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTaskAppeared taskInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFullscreenOfMultiWindowTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->addOrMoveTaskToTop(I)V

    .line 12
    :cond_0
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

    invoke-direct {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugTaskTopActivityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget v4, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_FREEFORM_ADDED:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->updateTaskStrategicPolicy(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 6
    invoke-virtual {v2, v0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->policyUpdateByFreeformAddIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 7
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTaskAppeared  taskinfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugTaskTopActivityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFullscreenOfMultiWindowTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->addOrMoveTaskToTop(I)V

    .line 25
    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 29
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFullscreenOfMultiWindowTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 43
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->removeTask(I)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 55
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 60
    if-eqz v0, :cond_2

    .line 62
    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v0, v2

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mLastFocusedTaskInfo:Landroid/app/TaskInfo;

    .line 67
    if-eqz v3, :cond_3

    .line 69
    iget v4, v3, Landroid/app/TaskInfo;->taskId:I

    .line 71
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 73
    if-ne v4, v5, :cond_3

    .line 75
    invoke-virtual {v3}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 77
    move-result v3

    .line 80
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 81
    move-result v4

    .line 84
    if-eq v3, v4, :cond_4

    .line 85
    :cond_3
    if-eqz v0, :cond_4

    .line 87
    move v2, v1

    .line 89
    :cond_4
    if-eqz v2, :cond_5

    .line 90
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->addOrMoveTaskToTop(I)V

    .line 94
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mLastFocusedTaskInfo:Landroid/app/TaskInfo;

    .line 97
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    .line 99
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 101
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

    .line 107
    iput-object p1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 109
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 111
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v2

    .line 118
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 119
    if-eqz v2, :cond_6

    .line 121
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 123
    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getTaskChangingType(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/TaskInfo;)I

    .line 131
    move-result v0

    .line 134
    invoke-direct {p0, v2, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->updateTaskStrategicPolicy(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 135
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 138
    invoke-virtual {v3, v2, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->policyUpdateByByTaskChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 140
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    const-string v4, "onTaskInfoChanged  taskinfo:"

    .line 147
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugTaskTopActivityInfo()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 162
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    goto :goto_2

    .line 166
    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 167
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 169
    move-result-object v0

    .line 172
    if-eqz v0, :cond_7

    .line 173
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 175
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 177
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 182
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda1;

    .line 184
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 186
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    return-void
    .line 192
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTaskVanished  taskinfo:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isFullscreenOfMultiWindowTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->removeTask(I)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    .line 32
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 39
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 46
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda1;

    .line 48
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 54
    return-void
    .line 57
.end method

.method public removeTask(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->fullscreenOrMultiWindowTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public removeTaskStateListener(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStateListener:Landroid/util/ArraySet;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public setDynamicStrategy(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result p1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    :goto_0
    if-ltz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskStates:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiInfinityModeDynamicStrategy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 24
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mTaskWrapperInfos:Landroid/util/SparseArray;

    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 34
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    return-void
    .line 42
.end method

.method public setMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    return-void
    .line 4
.end method

.method public setSplitScreenController(Ljava/util/Optional;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mSplitScreenController:Ljava/util/Optional;

    .line 2
    return-void
    .line 4
.end method

.method public setTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 4
    return-void
    .line 7
.end method
