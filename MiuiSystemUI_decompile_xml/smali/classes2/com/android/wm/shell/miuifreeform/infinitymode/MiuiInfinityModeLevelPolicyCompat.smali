.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeLevelPolicyCompat"


# instance fields
.field private final STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

.field private mIsDesktopMode:Z

.field private mMiuiInfinityModeSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V

    .line 2
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 8
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mIsDesktopMode:Z

    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mMiuiInfinityModeSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 13
    new-instance v2, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 15
    invoke-direct {v2, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V

    .line 17
    aput-object v2, v0, v1

    .line 20
    new-instance p3, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mMiuiInfinityModeSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 24
    invoke-direct {p3, p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V

    .line 26
    const/4 p0, 0x1

    .line 29
    aput-object p3, v0, p0

    .line 30
    return-void
    .line 32
.end method

.method private getSizeLevelInFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateDraggableAreas()V

    .line 4
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat$1;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat$1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeDragHandler()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getFreeformRangeArea()Landroid/graphics/Rect;

    .line 18
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 22
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeAvoidAlgorithm()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 24
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 28
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getWindowPositioner()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->detectSizeLevelChanges(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 40
    move-result p0

    .line 43
    const/4 p1, 0x1

    .line 44
    if-ne p0, p1, :cond_0

    .line 45
    invoke-virtual {v3, p2, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->calDestAttrForAutoResize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Z

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 57
    move-result p1

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 61
    move-result p2

    .line 64
    int-to-float p2, p2

    .line 65
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setWidth(F)V

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 69
    move-result p0

    .line 72
    int-to-float p0, p0

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setHeight(F)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setScale(F)V

    .line 77
    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 81
    move-result p0

    .line 84
    const/4 p1, 0x2

    .line 85
    if-ne p0, p1, :cond_1

    .line 86
    invoke-virtual {v3, p2, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->calDestAttrForAutoResize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Z

    .line 88
    move-result p0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniScale()F

    .line 98
    move-result p1

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 102
    move-result p2

    .line 105
    int-to-float p2, p2

    .line 106
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setWidth(F)V

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 110
    move-result p0

    .line 113
    int-to-float p0, p0

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setHeight(F)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setScale(F)V

    .line 118
    return-object v0

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskActualBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object p0

    .line 125
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskVisualBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->scaleBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 130
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 134
    move-result p1

    .line 137
    int-to-float p1, p1

    .line 138
    const/high16 p2, 0x3f800000    # 1.0f

    .line 139
    mul-float/2addr p1, p2

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 142
    move-result p2

    .line 145
    int-to-float p2, p2

    .line 146
    div-float/2addr p1, p2

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 148
    move-result p2

    .line 151
    int-to-float p2, p2

    .line 152
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setWidth(F)V

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 156
    move-result p0

    .line 159
    int-to-float p0, p0

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setHeight(F)V

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setScale(F)V

    .line 164
    return-object v0
    .line 167
.end method

.method private updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setStrategicPolicy(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 5
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->forceUpdateSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public asGridPolicy()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 2
    const/4 v0, 0x1

    .line 4
    aget-object p0, p0, v0

    .line 5
    return-object p0
    .line 7
.end method

.method public asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    aget-object p0, p0, p1

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget-object p0, p0, p1

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public asRatioPolicy()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 2
    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    .line 5
    return-object p0
    .line 7
.end method

.method public detectSizeLevelChanges(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 1
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    or-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->detectSizeLevelChanges(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result p0

    return p0
.end method

.method public detectSizeLevelChanges(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 3
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_8

    .line 4
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->useNewLevelPolicy(Ljava/lang/String;)Z

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 7
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getLevelType()F

    move-result p3

    float-to-int p3, p3

    if-nez v2, :cond_1

    .line 8
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->calDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    :cond_0
    move v0, v4

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mMiuiInfinityModeSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;->getLevelType(Landroid/content/ComponentName;)I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 12
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    if-ne v2, v4, :cond_4

    .line 15
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    move v0, v4

    :cond_4
    if-nez v0, :cond_6

    .line 17
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ORIENTATION:I

    and-int/2addr v5, p3

    if-eqz v5, :cond_6

    .line 18
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getRequestedOrientation()I

    move-result v5

    .line 20
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationLandscape(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 21
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    :cond_5
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByOrientation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    move-result-object v5

    .line 23
    invoke-virtual {v1, v5, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->isDirectionChange(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 24
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    move v0, v4

    :cond_6
    if-nez v0, :cond_7

    .line 25
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_SURFACEVIEW_TEXTUREVIEW:I

    and-int/2addr v5, p3

    if-eqz v5, :cond_7

    .line 26
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->isSurfaceViewOrTextureViewChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 27
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 28
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->calDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    move-result-object v5

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getSupportBoundLevels()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v5, :cond_7

    .line 30
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    move v0, v4

    :cond_7
    if-nez v0, :cond_9

    .line 31
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    and-int/2addr p3, v5

    if-eqz p3, :cond_9

    .line 32
    invoke-direct {p0, v2, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->updateStrategicPolicy(ILandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 33
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->calDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    move-result-object p0

    .line 34
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getSupportBoundLevels()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz p0, :cond_9

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    goto/16 :goto_0

    .line 36
    :cond_8
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateTaskStrategicPolicy fail, topActivity is null!"

    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return v0
.end method

.method public forceUpdateSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->forceUpdateSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 10
    return-void
    .line 13
.end method

.method public generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    if-nez v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "generateTWIByTaskAppeared topActivity is null, taskInfo:"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->useNewLevelPolicy(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 42
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->TAG:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "generateTWIByTaskAppeared useNewVersion:"

    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 62
    move-result-object p0

    .line 65
    invoke-interface {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->generateTWIByTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskState;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 66
    move-result-object p0

    .line 69
    return-object p0
    .line 70
.end method

.method public getMaxBounds(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 6
    move-result p0

    .line 9
    sget-object p1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->TAG:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "getMaxBounds maxWidth:"

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ",maxHeight:"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-direct {p1, v1, v1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    return-object p1
    .line 43
.end method

.method public getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->useNewLevelPolicy(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public getSizeLevelEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->findTaskWrapperInfoByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 6
    move-result-object p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getSizeLevelInFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 26
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 31
    if-eqz p2, :cond_2

    .line 33
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string p2, ""

    .line 40
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->useNewLevelPolicy(Ljava/lang/String;)Z

    .line 42
    move-result p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 50
    move-result-object p0

    .line 53
    return-object p0
    .line 54
.end method

.method public policyUpdateByByTaskChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->policyUpdateByByTaskChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 10
    return-void
    .line 13
.end method

.method public policyUpdateByDesktopModeChanged(ZLcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mIsDesktopMode:Z

    .line 2
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->policyUpdateByDesktopModeChanged(ZLcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 12
    return-void
    .line 15
.end method

.method public policyUpdateByDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->STRATEGY:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget-object v2, p0, v1

    .line 8
    invoke-interface {v2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateByDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
.end method

.method public policyUpdateByFreeformAddIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->policyUpdateByFreeformAddIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 10
    return-void
    .line 13
.end method

.method public policyUpdateByOtherIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateByOtherIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 10
    return-void
    .line 13
.end method

.method public policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asPolicy(Z)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 10
    return-void
    .line 13
.end method

.method public useNewLevelPolicy(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->mMiuiInfinityModeSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;->inNewLevelPolicy(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

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
