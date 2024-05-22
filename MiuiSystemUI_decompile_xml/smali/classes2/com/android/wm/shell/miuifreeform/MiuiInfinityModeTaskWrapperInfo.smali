.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeTaskWrapperInfo"


# instance fields
.field private mBaseBounds:Landroid/graphics/Rect;

.field private mBaseLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

.field private mBaseScale:F

.field private mBaseVisualBounds:Landroid/graphics/Rect;

.field private mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

.field private mDestinationBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

.field private mDestinationBounds:Landroid/graphics/Rect;

.field private mDestinationMaxBounds:Landroid/graphics/Rect;

.field private mDestinationMiniBounds:Landroid/graphics/Rect;

.field private mDestinationMiniScale:F

.field private mDestinationNormalScale:F

.field private mDestinationVisualBounds:Landroid/graphics/Rect;

.field private mDestinationWindowMode:I

.field private mIsAbnormalPortrait:Z

.field private mIsFixedRatio:Z

.field private mIsInDragTaskResizeAnim:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreActivityRecordName:Ljava/lang/String;

.field private mRequestedOrientation:I

.field private final mResizeState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

.field private mStrategicPolicy:I

.field private mSupportGesture:Z

.field private mSupportLevels:Ljava/util/ArrayList;

.field private mTaskActualBounds:Landroid/graphics/Rect;

.field private mTaskId:I

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskScale:F

.field private mTaskState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

.field private mTaskVisualBounds:Landroid/graphics/Rect;

.field private mTaskWindowMode:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportGesture:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsFixedRatio:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsAbnormalPortrait:Z

    .line 10
    const/4 v1, -0x2

    .line 12
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniBounds:Landroid/graphics/Rect;

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    .line 36
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    .line 50
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    .line 57
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    .line 64
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseVisualBounds:Landroid/graphics/Rect;

    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 73
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 75
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 77
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseScale:F

    .line 79
    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 82
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 84
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mStrategicPolicy:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 95
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 97
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mResizeState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 100
    return-void
    .line 102
.end method


# virtual methods
.method public varargs addSupportSizeLevels([Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSingleLevel()Z

    .line 15
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setIsFixedRatio(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->sortLevels()V

    .line 22
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "addSupportSizeLevels  size:"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " windowmode:"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugWindowModeToString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-object p0
    .line 62
.end method

.method public asResizeOp()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 6
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;-><init>(ILandroid/graphics/Rect;FLandroid/window/WindowContainerToken;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public varargs calculateDestMaxBounds([Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    aget-object v3, p1, v2

    .line 18
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getWidth()F

    .line 20
    move-result v3

    .line 23
    float-to-int v3, v3

    .line 24
    aget-object v4, p1, v2

    .line 25
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getHeight()F

    .line 27
    move-result v4

    .line 30
    float-to-int v4, v4

    .line 31
    if-le v3, v0, :cond_0

    .line 32
    move v0, v3

    .line 34
    :cond_0
    if-le v4, v1, :cond_1

    .line 35
    move v1, v4

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 43
    move-result p1

    .line 46
    if-ge v0, p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result p1

    .line 54
    if-lt v1, p1, :cond_4

    .line 55
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    .line 57
    const/4 v2, 0x0

    .line 59
    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMaxBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 63
    :cond_4
    return-void
    .line 66
.end method

.method public debugTaskTopActivityInfo()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "taskId:"

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 31
    if-eqz v2, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    const-string v3, " activityname:"

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    const-string v2, " windowMode:"

    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->debugWindowModeToString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    return-object p0
    .line 83
.end method

.method public debugWindowModeToString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const-string p0, "mini"

    .line 7
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    const-string p0, "freeform"

    .line 13
    return-object p0

    .line 15
    :cond_1
    const-string p0, "fullscreen"

    .line 16
    return-object p0
    .line 18
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, " mTaskId="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p2, "  "

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    const-string v0, "mPackageName="

    .line 45
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "topActivity="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    if-eqz v1, :cond_0

    .line 79
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 81
    goto :goto_0

    .line 83
    :cond_0
    const-string v1, ""

    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "mPreActivityRecordName="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPreActivityRecordName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "mRequestedOrientation="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 134
    const-string v2, "mSupportGesture="

    .line 136
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    move-result-object v0

    .line 141
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportGesture:Z

    .line 142
    const-string v2, "mIsFixedRatio="

    .line 144
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v0

    .line 149
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsFixedRatio:Z

    .line 150
    const-string v2, "mIsAbnormalPortrait="

    .line 152
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsAbnormalPortrait:Z

    .line 158
    const-string v2, "mTaskVisualBounds="

    .line 160
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "mTaskActualBounds="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "mDestinationMiniBounds="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniBounds:Landroid/graphics/Rect;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 224
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "mDestinationBounds="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "mDestinationVisualBounds="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "mDestinationMaxBounds="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "mBaseBounds="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseBounds:Landroid/graphics/Rect;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "mDestinationNormalScale="

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "mDestinationMiniScale="

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v0

    .line 374
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, "mBaseScale="

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseScale:F

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, "mTaskWindowMode="

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 416
    const-string v2, "mDestinationWindowMode="

    .line 418
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    move-result-object v0

    .line 423
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 424
    const-string v2, "mStrategicPolicy="

    .line 426
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    move-result-object v0

    .line 431
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mStrategicPolicy:I

    .line 432
    const-string v2, "mSupportLevels="

    .line 434
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 448
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    .line 452
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "mDestinationBoundLevel="

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    move-result-object v0

    .line 473
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string p2, "mBoundLevel="

    .line 485
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 490
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    move-result-object p0

    .line 498
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    return-void
    .line 502
.end method

.method public getBaseBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBaseScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getBaseVisualBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseVisualBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getCornerRadius(Landroid/content/Context;)F
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/high16 p0, 0x41400000    # 12.0f

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/high16 p0, 0x41900000    # 18.0f

    .line 10
    :goto_0
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDestinationBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationCornerRadius(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCornerRadius(Landroid/content/Context;)F

    .line 2
    move-result p1

    .line 5
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 6
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 14
    :goto_0
    div-float/2addr p1, p0

    .line 16
    return p1
    .line 17
.end method

.method public getDestinationFreeformMode()I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    const/4 p0, -0x1

    .line 10
    return p0

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public getDestinationMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationMiniBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationMiniScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationNormalScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationSizeLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDestinationVisualBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationWindowMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getFreeformMode()I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    const/4 p0, -0x1

    .line 10
    return p0

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPackageName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPreActivityRecordName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPreActivityRecordName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRequestedOrientation()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 2
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    .line 11
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 15
    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 27
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 29
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 31
    return p0
    .line 33
.end method

.method public getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mResizeState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSupportBoundLevels()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTaskActualBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getTaskId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 2
    return p0
    .line 4
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTaskScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getTaskSurface()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->leash:Landroid/view/SurfaceControl;

    .line 4
    return-object p0
    .line 6
.end method

.method public getTaskVisualBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getTaskWindowMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getTopActivityPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPackageName:Ljava/lang/String;

    .line 13
    return-object p0
    .line 15
.end method

.method public isDragResizing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsInDragTaskResizeAnim:Z

    .line 2
    return p0
    .line 4
.end method

.method public isFixedRatio()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsFixedRatio:Z

    .line 2
    return p0
    .line 4
.end method

.method public isFreeformMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

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

.method public isFullscreenMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    if-nez p0, :cond_0

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

.method public isIsAbnormalPortrait()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsAbnormalPortrait:Z

    .line 2
    return p0
    .line 4
.end method

.method public isMiniMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

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

.method public isSameWindowMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFullscreenMode()Z

    .line 4
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getFreeformMode()I

    .line 9
    move-result p0

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 13
    move-result p1

    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
    .line 22
.end method

.method public isSingleLevel()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
    .line 13
.end method

.method public isSupportGesture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportGesture:Z

    .line 2
    return p0
    .line 4
.end method

.method public setBaseBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setBaseLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    return-void
    .line 4
.end method

.method public setBaseScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/Throwable;

    .line 10
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const-string/jumbo v1, "setBaseScale is NaN!"

    .line 15
    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-object p0

    .line 21
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseScale:F

    .line 22
    return-object p0
    .line 24
.end method

.method public setBaseVisualBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBaseVisualBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setCurrentBoundsLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    return-object p0
    .line 4
.end method

.method public setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setDestinationMaxBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMaxBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setDestinationMiniBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setDestinationMiniScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/Throwable;

    .line 10
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const-string v1, "destinationMiniScale is NaN!"

    .line 15
    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-object p0

    .line 20
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 21
    return-object p0
    .line 23
.end method

.method public setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/Throwable;

    .line 10
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const-string v1, "destinationNormalScale is NaN!"

    .line 15
    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-object p0

    .line 20
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 21
    return-object p0
    .line 23
.end method

.method public setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v2, "setDestinationWindowMode mDestinationBoundLevel:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object p0
    .line 24
.end method

.method public setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 2
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v2, "setDestinationWindowMode destinationWindowMode:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object p0
    .line 24
.end method

.method public setFreeformAllParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v3

    .line 25
    invoke-static {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 26
    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setPackageName(Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 43
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 53
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 58
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMaxBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseVisualBounds(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)V

    .line 80
    return-void
    .line 83
.end method

.method public setFullscreenAllParams(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 14
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMaxBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseVisualBounds(Landroid/graphics/Rect;)V

    .line 32
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)V

    .line 42
    return-void
    .line 45
.end method

.method public setIsAbnormalPortrait(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsAbnormalPortrait:Z

    .line 2
    return-object p0
    .line 4
.end method

.method public setIsFixedRatio(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsFixedRatio:Z

    .line 2
    return-object p0
    .line 4
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPackageName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public setPreActivityRecordName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPreActivityRecordName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setRequestedOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 2
    return-void
    .line 4
.end method

.method public setStrategicPolicy(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mStrategicPolicy:I

    .line 2
    return-object p0
    .line 4
.end method

.method public setSupportGesture(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportGesture:Z

    .line 2
    return-object p0
    .line 4
.end method

.method public setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setTaskDragResizing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsInDragTaskResizeAnim:Z

    .line 2
    return-void
    .line 4
.end method

.method public setTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 2
    return-object p0
    .line 4
.end method

.method public setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/Throwable;

    .line 10
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const-string/jumbo v1, "setTaskScale is NaN!"

    .line 15
    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-object p0

    .line 21
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 22
    return-object p0
    .line 24
.end method

.method public setTaskState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskState:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;

    .line 2
    return-object p0
    .line 4
.end method

.method public setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setTaskWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 2
    return-object p0
    .line 4
.end method

.method public setWindowMode(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "setWindowMode error : windowMode:"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "setWindowMode windowMode:"

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 51
    return-void
    .line 53
.end method

.method public sortLevels()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    return-void
    .line 7
.end method

.method public syncBaseBoundsAndScale()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseVisualBounds(Landroid/graphics/Rect;)V

    .line 9
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setBaseScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 14
    return-void
    .line 17
.end method

.method public syncDestBoundsAndScale()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 9
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 12
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 22
    return-void
    .line 25
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiInfinityModeTaskWrapperInfo{mTaskId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", mPackageName=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPackageName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "\', mTaskVisualBounds="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskVisualBounds:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mTaskActualBounds="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskActualBounds:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mSupportGesture="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportGesture:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mIsFixedRatio="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsFixedRatio:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mIsAbnormalPortrait="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mIsAbnormalPortrait:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", mBoundLevel="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mBoundLevel:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", mSupportLevels="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mSupportLevels:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", mTaskWindowMode="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskWindowMode:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", mTaskScale="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskScale:F

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", mPreActivityRecordName="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mPreActivityRecordName:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", mRequestedOrientation="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mRequestedOrientation:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", mDestinationMiniBounds="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniBounds:Landroid/graphics/Rect;

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", mDestinationBounds="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", mDestinationVisualBounds="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationVisualBounds:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", mDestinationNormalScale="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationNormalScale:F

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", mDestinationMiniScale="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationMiniScale:F

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", mDestinationWindowMode="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mDestinationWindowMode:I

    .line 189
    const/16 v1, 0x7d

    .line 191
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 196
    return-object p0
    .line 197
.end method

.method public updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1, p0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->updateDestAttrForMaximize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    invoke-virtual {p1, p0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->updateDestAttrForNormalmize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_2

    .line 18
    invoke-virtual {p1, p0, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->updateDestAttrForMinimize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 20
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo p3, "updateDestinationAttributes info \uff1a"

    .line 27
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    goto :goto_1

    .line 43
    :cond_3
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->TAG:Ljava/lang/String;

    .line 44
    const-string/jumbo p1, "updateDestinationAttributes error, sizeLevel is null!"

    .line 46
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    return-void
    .line 52
.end method

.method public updateTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskId:I

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    :cond_0
    return-object p0
    .line 10
.end method

.method public useNewVersionStrategy()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->mStrategicPolicy:I

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
