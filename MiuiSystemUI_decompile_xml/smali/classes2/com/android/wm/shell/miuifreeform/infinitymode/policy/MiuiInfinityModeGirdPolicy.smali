.class public Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeGirdPolicy"

.field private static final VISUAL_SIZE_MARGIN_PX:I


# instance fields
.field protected final mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private mDisplayLandscapeRatio:F

.field private mDisplayPortraitRatio:F

.field private mDisplayRatio:F

.field protected mFullGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

.field protected mHorizontalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

.field private mScalingFactor:F

.field protected mVerticalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x429c0000    # 78.0f

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result v0

    .line 16
    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    add-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    sput v0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->VISUAL_SIZE_MARGIN_PX:I

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V

    .line 2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayLandscapeRatio:F

    .line 7
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayPortraitRatio:F

    .line 9
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 16
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mScalingFactor:F

    .line 18
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 20
    invoke-direct {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 25
    return-void
    .line 27
.end method

.method private calculateMovableBounds(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 8
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getNavBarHeight()I

    .line 10
    move-result v1

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getStatusBarHeight()I

    .line 16
    move-result p0

    .line 19
    const/high16 v2, 0x41a00000    # 20.0f

    .line 20
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 22
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxWidth()F

    .line 27
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    sub-int/2addr v3, v2

    .line 32
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    const/high16 v4, 0x429c0000    # 78.0f

    .line 39
    invoke-static {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 41
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/high16 v4, 0x41d00000    # 26.0f

    .line 46
    invoke-static {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 48
    move-result v0

    .line 51
    :goto_0
    float-to-int v0, v0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result v0

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxHeight()F

    .line 57
    move-result p1

    .line 60
    float-to-int p1, p1

    .line 61
    sub-int/2addr p1, v0

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .line 63
    invoke-direct {v0, v2, p0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    return-object v0
    .line 68
.end method

.method private updateBoundsLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;->getLevelType(Landroid/content/ComponentName;)I

    .line 6
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->applyGridLevel(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;ILandroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setCurrentBoundsLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 18
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v0, "updateBoundsLevel level:"

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v0, "updateBoundsLevel fail:"

    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void
.end method

.method private updateSizeLevelNearestTaskBounds(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result p1

    .line 20
    int-to-float p1, p1

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    mul-float/2addr p1, v1

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    div-float/2addr p1, v1

    .line 30
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinAspectRatio()F

    .line 31
    move-result v1

    .line 34
    cmpg-float v1, p1, v1

    .line 35
    if-gtz v1, :cond_0

    .line 37
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinAspectRatio()F

    .line 39
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxAspectRatio()F

    .line 44
    move-result v1

    .line 47
    cmpl-float v1, p1, v1

    .line 48
    if-ltz v1, :cond_1

    .line 50
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxAspectRatio()F

    .line 52
    move-result p1

    .line 55
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->calculateMovableBounds(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;)Landroid/graphics/Rect;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 60
    move-result v1

    .line 63
    int-to-float v1, v1

    .line 64
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinRealHeight()F

    .line 65
    move-result v2

    .line 68
    cmpg-float v1, v1, v2

    .line 69
    if-gtz v1, :cond_2

    .line 71
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinRealHeight()F

    .line 73
    move-result p0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 78
    move-result v1

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 82
    move-result v2

    .line 85
    if-lt v1, v2, :cond_3

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 88
    move-result p0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 93
    move-result p0

    .line 96
    :goto_1
    int-to-float p0, p0

    .line 97
    :goto_2
    mul-float v0, p0, p1

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    .line 100
    float-to-int v2, v0

    .line 102
    float-to-int v3, p0

    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    .line 108
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 110
    invoke-virtual {p2, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->calculateScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 113
    move-result v1

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 117
    move-result v3

    .line 120
    int-to-float v3, v3

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 122
    move-result v2

    .line 125
    int-to-float v2, v2

    .line 126
    invoke-virtual {p2, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 127
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setScale(F)V

    .line 130
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v3, "updateSizeLevelNearestTaskBounds targetAspectRatio:"

    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    const-string p1, ", w: "

    .line 146
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    const-string p1, ", h: "

    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    const-string p0, ", "

    .line 162
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 173
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
    .line 177
.end method


# virtual methods
.method public generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 21
    move-result-object v0

    .line 24
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isSupportFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 27
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setSupportGesture(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 31
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setStrategicPolicy(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 36
    move-result-object v0

    .line 39
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setPackageName(Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 46
    move-result-object v0

    .line 49
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 52
    move-result v2

    .line 55
    const/4 v3, 0x5

    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 62
    iget-object v3, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 68
    move-result-object v2

    .line 71
    sget-object v3, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "generateTWIByTaskAppeared miuiFreeformModeTaskInfo:"

    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 93
    move-result v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 100
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x2

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, -0x1

    .line 108
    :goto_0
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 109
    move-result v3

    .line 112
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 113
    move-result-object v3

    .line 116
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 117
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 121
    move-result-object v3

    .line 124
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 125
    move-result-object v4

    .line 128
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 129
    move-result v2

    .line 132
    invoke-static {v4, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 133
    move-result-object v2

    .line 136
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 137
    move-result-object v2

    .line 140
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 141
    goto :goto_1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 147
    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 153
    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 159
    move-result v2

    .line 162
    int-to-float v2, v2

    .line 163
    const/high16 v3, 0x3f800000    # 1.0f

    .line 164
    mul-float/2addr v2, v3

    .line 166
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 169
    move-result v3

    .line 172
    int-to-float v3, v3

    .line 173
    div-float/2addr v2, v3

    .line 174
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 175
    move-result-object v1

    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 180
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 183
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->updateBoundsLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/content/ComponentName;)V

    .line 187
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "generateTWIByTaskAppeared taskWrapperInfo:"

    .line 194
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 205
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v0
    .line 209
.end method

.method public getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinRealWidth()F

    .line 8
    move-result p1

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinAspectRatio()F

    .line 12
    move-result v0

    .line 15
    div-float/2addr p1, v0

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxRealHeight()F

    .line 17
    move-result p0

    .line 20
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 21
    move-result p0

    .line 24
    float-to-int p0, p0

    .line 25
    return p0
    .line 26
.end method

.method public getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxRealWidth()F

    .line 8
    move-result p0

    .line 11
    float-to-int p0, p0

    .line 12
    return p0
    .line 13
.end method

.method public getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 9
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;->inNewLevelPolicy(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 21
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;->getLevelType(Landroid/content/ComponentName;)I

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    const/4 v1, 0x2

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mVerticalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mHorizontalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mVerticalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mFullGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 47
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->updateSizeLevelNearestTaskBounds(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;)V

    .line 49
    return-object v0

    .line 52
    :cond_4
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 53
    const-string p1, "getSizeLevelByTask inNewLevelPolicy not grid level."

    .line 55
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mVerticalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 62
    return-object p0
    .line 64
.end method

.method public policyUpdateByDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 2
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 12
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 14
    const/4 v1, 0x1

    .line 16
    if-le v0, p1, :cond_0

    .line 17
    move v3, v1

    .line 19
    :cond_0
    if-eqz v3, :cond_1

    .line 20
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayLandscapeRatio:F

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayPortraitRatio:F

    .line 25
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayRatio:F

    .line 27
    sget-object p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "policyUpdateByDisplayChanged mDisplayBounds :"

    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 52
    move-result v0

    .line 55
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 58
    move-result v2

    .line 61
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result v0

    .line 65
    sget v2, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->VISUAL_SIZE_MARGIN_PX:I

    .line 66
    sub-int/2addr v0, v2

    .line 68
    int-to-float v0, v0

    .line 69
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mScalingFactor:F

    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 72
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->applyGridLevel(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;ILandroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 76
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mFullGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 82
    const/4 v1, 0x2

    .line 84
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->applyGridLevel(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;ILandroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 87
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mVerticalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mCurrentGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 93
    const/4 v1, 0x3

    .line 95
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 96
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->applyGridLevel(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;ILandroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 98
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mHorizontalGirdLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 102
    const-string p0, "policyUpdateByDisplayChanged !"

    .line 104
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
    .line 109
.end method

.method public policyUpdateByOtherIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    const-string p3, "policyUpdateByOtherIfNeed taskWrapperInfo:"

    .line 6
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
    .line 21
.end method

.method public policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "policyUpdateIfNeed taskWrapperInfo:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    move-result-object v3

    .line 14
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v3, ",change = "

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_MODE:I

    .line 35
    and-int/2addr v1, p1

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 44
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v1, v4

    .line 52
    :goto_0
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 53
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    move v1, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v1, v3

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 62
    :cond_3
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_BOUNDS:I

    .line 65
    and-int/2addr v1, p1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    if-eqz p3, :cond_4

    .line 70
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 72
    move-result v1

    .line 75
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 80
    move-result-object v5

    .line 83
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 84
    move-result-object v1

    .line 87
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v5

    .line 91
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 92
    move-result p3

    .line 95
    invoke-static {v5, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 96
    move-result-object p3

    .line 99
    invoke-virtual {v1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 100
    goto :goto_2

    .line 103
    :cond_4
    const/high16 p3, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 106
    move-result-object p3

    .line 109
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskActualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 112
    move-result-object p3

    .line 115
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {p3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 118
    :cond_5
    :goto_2
    sget p3, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_FREEFORM_ADDED:I

    .line 121
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    .line 123
    or-int/2addr p3, v1

    .line 125
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 126
    or-int/2addr p3, v1

    .line 128
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_DKT_MODE:I

    .line 129
    or-int/2addr p3, v1

    .line 131
    and-int/2addr p3, p1

    .line 132
    if-eqz p3, :cond_6

    .line 133
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 135
    move-result-object p3

    .line 138
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->updateBoundsLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/content/ComponentName;)V

    .line 141
    :cond_6
    sget p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 144
    and-int/2addr p0, p1

    .line 146
    if-eqz p0, :cond_8

    .line 147
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 149
    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isSupportFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 153
    move-result p0

    .line 156
    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setSupportGesture(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 159
    goto :goto_3

    .line 162
    :cond_7
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setSupportGesture(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 163
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 177
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
    .line 181
.end method
