.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
.super Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFixedExpandedHeightInPx:I

.field public mFixedExpandedWidthInPx:I

.field public final mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;

    .line 2
    invoke-direct {v4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;-><init>()V

    .line 4
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 15
    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 17
    invoke-direct {p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 24
    return-void
    .line 27
.end method

.method private reloadResources(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    const v0, 0x10500d5    # @android:dimen/config_screenBrightnessDimFloat

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 13
    const v0, 0x10500d6    # @android:dimen/config_screenBrightnessDozeFloat

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 22
    const v0, 0x7f070e83    # @dimen/pip_keep_clear_area_padding '16.0dp'

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 31
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 33
    const v0, 0x7f090006    # @fraction/config_pipMaxRestrictedMoveDistance '15.000001%'

    .line 35
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 39
    move-result p1

    .line 42
    float-to-double v0, p1

    .line 43
    iput-wide v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 9
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 11
    invoke-static {v2, v1}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 17
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v3

    .line 29
    invoke-static {p0, v1, v3, p1, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 33
    return-object v0
    .line 36
.end method

.method public final getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 3

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    float-to-double p1, p2

    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    move-result-object p1

    .line 12
    const-string p2, "TvPipBoundsAlgorithm"

    .line 13
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    const/16 p2, 0x8

    .line 19
    const-string v1, "%s: getAdjustedDestinationBounds: %f"

    .line 21
    const v2, 0x25e1464

    .line 23
    invoke-static {v0, v2, p2, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 29
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 35
    move-result-object p0

    .line 38
    return-object p0
    .line 39
.end method

.method public final getEntryDestinationBounds()Landroid/graphics/Rect;
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
    const-string v2, "TvPipBoundsAlgorithm"

    .line 9
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    const v3, -0x5eb54fa2

    .line 15
    const-string v4, "%s: getEntryDestinationBounds()"

    .line 18
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 26
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 28
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 33
    const/4 v4, 0x0

    .line 35
    cmpl-float v2, v2, v4

    .line 36
    if-eqz v2, :cond_1

    .line 38
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 40
    if-nez v2, :cond_1

    .line 42
    move v1, v3

    .line 44
    :cond_1
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    .line 47
    :cond_2
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 52
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 58
    move-result-object p0

    .line 61
    return-object p0
    .line 62
.end method

.method public final getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 4
    iget-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    iget-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 12
    if-eqz v2, :cond_0

    .line 14
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 16
    const/4 v5, 0x0

    .line 18
    cmpl-float v2, v2, v5

    .line 19
    if-eqz v2, :cond_0

    .line 21
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    const/4 v5, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    iget-object v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 29
    goto :goto_2

    .line 31
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    .line 32
    invoke-virtual {v0, v2, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    .line 34
    move-result-object v2

    .line 37
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 38
    iget v6, v6, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 40
    new-instance v7, Landroid/graphics/Rect;

    .line 42
    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 44
    iget v2, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 47
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    .line 49
    move-result v2

    .line 52
    if-gtz v2, :cond_2

    .line 53
    iget v2, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 55
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    .line 57
    move-result v2

    .line 60
    if-gtz v2, :cond_2

    .line 61
    move v2, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v2, v4

    .line 65
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v0, v7, v6, v4, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 68
    :cond_3
    new-instance v2, Landroid/util/Size;

    .line 71
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 73
    move-result v6

    .line 76
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 77
    move-result v7

    .line 80
    invoke-direct {v2, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 81
    :goto_2
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v6

    .line 87
    new-instance v7, Landroid/util/Size;

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 90
    move-result v8

    .line 93
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 94
    move-result v6

    .line 97
    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    .line 98
    new-instance v6, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 103
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 106
    iget-object v8, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 109
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 111
    move-result-object v9

    .line 114
    iget v10, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 115
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 117
    iget v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 119
    iget-object v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 121
    if-ne v11, v10, :cond_4

    .line 123
    goto :goto_3

    .line 125
    :cond_4
    iput v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 126
    new-instance v10, Landroid/graphics/Rect;

    .line 128
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 130
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 132
    move-result v11

    .line 135
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 136
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 138
    move-result v13

    .line 141
    invoke-direct {v10, v4, v4, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 145
    move-result-object v10

    .line 148
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 151
    move-result-object v10

    .line 154
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 155
    :goto_3
    iget-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 157
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    move-result v10

    .line 162
    if-eqz v10, :cond_5

    .line 163
    goto :goto_4

    .line 165
    :cond_5
    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 166
    new-instance v10, Landroid/graphics/Rect;

    .line 168
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 170
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 172
    move-result v11

    .line 175
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 176
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 178
    move-result v13

    .line 181
    invoke-direct {v10, v4, v4, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 185
    move-result-object v10

    .line 188
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 189
    iget-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 193
    move-result-object v10

    .line 196
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 197
    :goto_4
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    move-result v10

    .line 202
    if-eqz v10, :cond_6

    .line 203
    goto :goto_5

    .line 205
    :cond_6
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 209
    move-result-object v10

    .line 212
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 213
    :goto_5
    iget v10, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 215
    iput v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 217
    iget-object v10, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 219
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 221
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;

    .line 223
    move-result-object v10

    .line 226
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;

    .line 227
    move-result-object v11

    .line 230
    new-instance v12, Landroid/graphics/Rect;

    .line 231
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 233
    move-result v13

    .line 236
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 237
    move-result v14

    .line 240
    invoke-direct {v12, v4, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 244
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 246
    new-instance v13, Landroid/util/Size;

    .line 249
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 251
    move-result v14

    .line 254
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 255
    move-result v12

    .line 258
    invoke-direct {v13, v14, v12}, Landroid/util/Size;-><init>(II)V

    .line 259
    iget-object v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 262
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 264
    move-result v14

    .line 267
    if-eqz v14, :cond_7

    .line 268
    new-instance v14, Landroid/util/Size;

    .line 270
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 272
    move-result v15

    .line 275
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 276
    move-result v13

    .line 279
    invoke-direct {v14, v15, v13}, Landroid/util/Size;-><init>(II)V

    .line 280
    move-object v13, v14

    .line 283
    :cond_7
    new-instance v15, Landroid/graphics/Rect;

    .line 284
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 286
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 289
    move-result v14

    .line 292
    if-eqz v14, :cond_8

    .line 293
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 295
    move-result v14

    .line 298
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 299
    move-result v13

    .line 302
    const/16 v5, 0x55

    .line 303
    invoke-static {v5, v14, v13, v12, v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 305
    goto :goto_6

    .line 308
    :cond_8
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 309
    move-result v5

    .line 312
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 313
    move-result v13

    .line 316
    const/4 v14, 0x5

    .line 317
    invoke-static {v14, v5, v13, v12, v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 318
    :goto_6
    invoke-static {v10, v11}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 321
    move-result-object v5

    .line 324
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 325
    move-result v12

    .line 328
    if-eqz v12, :cond_9

    .line 329
    goto :goto_8

    .line 331
    :cond_9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 332
    move-result-object v12

    .line 335
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    move-result v13

    .line 339
    if-eqz v13, :cond_c

    .line 340
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    move-result-object v13

    .line 345
    check-cast v13, Landroid/graphics/Rect;

    .line 346
    invoke-static {v13, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 348
    move-result v14

    .line 351
    if-eqz v14, :cond_b

    .line 352
    invoke-static {v13, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 354
    move-result v13

    .line 357
    if-eqz v13, :cond_b

    .line 358
    move v13, v3

    .line 360
    goto :goto_7

    .line 361
    :cond_b
    move v13, v4

    .line 362
    :goto_7
    if-eqz v13, :cond_a

    .line 363
    move v12, v4

    .line 365
    goto :goto_9

    .line 366
    :cond_c
    :goto_8
    move v12, v3

    .line 367
    :goto_9
    if-eqz v12, :cond_d

    .line 368
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 370
    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 372
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 374
    invoke-direct {v3, v15, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 376
    goto/16 :goto_17

    .line 379
    :cond_d
    invoke-virtual {v0, v15, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 381
    move-result-object v12

    .line 384
    if-eqz v12, :cond_e

    .line 385
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 387
    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 389
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 391
    invoke-direct {v3, v12, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 393
    goto/16 :goto_17

    .line 396
    :cond_e
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 398
    move-result-object v10

    .line 401
    invoke-virtual {v0, v3, v15, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 402
    move-result-object v10

    .line 405
    if-nez v10, :cond_f

    .line 406
    sget-object v10, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 408
    invoke-virtual {v0, v15, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 410
    move-result-object v10

    .line 413
    if-nez v10, :cond_f

    .line 414
    move-object v10, v15

    .line 416
    :cond_f
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 417
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 419
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 422
    move-result-object v12

    .line 425
    :cond_10
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    move-result v13

    .line 429
    if-eqz v13, :cond_12

    .line 430
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    move-result-object v13

    .line 435
    move-object v14, v13

    .line 436
    check-cast v14, Landroid/graphics/Rect;

    .line 437
    invoke-static {v14, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 439
    move-result v16

    .line 442
    if-eqz v16, :cond_11

    .line 443
    invoke-static {v14, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 445
    move-result v14

    .line 448
    if-eqz v14, :cond_11

    .line 449
    move v14, v3

    .line 451
    goto :goto_b

    .line 452
    :cond_11
    move v14, v4

    .line 453
    :goto_b
    if-eqz v14, :cond_10

    .line 454
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 456
    goto :goto_a

    .line 459
    :cond_12
    iget-object v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 460
    invoke-interface {v12, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 462
    move-result v12

    .line 465
    xor-int/lit8 v19, v12, 0x1

    .line 466
    iput-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 468
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 470
    new-instance v12, Ljava/util/ArrayList;

    .line 472
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 474
    new-instance v13, Ljava/util/ArrayList;

    .line 477
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 482
    move-result-object v14

    .line 485
    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    move-result v16

    .line 489
    if-eqz v16, :cond_14

    .line 490
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    move-result-object v4

    .line 495
    move-object v3, v4

    .line 496
    check-cast v3, Landroid/graphics/Rect;

    .line 497
    invoke-static {v3, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 499
    move-result v3

    .line 502
    if-eqz v3, :cond_13

    .line 503
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_13
    const/4 v3, 0x1

    .line 508
    const/4 v4, 0x0

    .line 509
    goto :goto_c

    .line 510
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    .line 511
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 513
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 516
    move-result-object v4

    .line 519
    :cond_15
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    move-result v5

    .line 523
    if-eqz v5, :cond_16

    .line 524
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    move-result-object v5

    .line 529
    move-object v14, v5

    .line 530
    check-cast v14, Landroid/graphics/Rect;

    .line 531
    invoke-static {v14, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 533
    move-result v14

    .line 536
    if-eqz v14, :cond_15

    .line 537
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    goto :goto_d

    .line 542
    :cond_16
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 543
    move-result v4

    .line 546
    const/4 v5, 0x1

    .line 547
    xor-int/2addr v4, v5

    .line 548
    if-eqz v4, :cond_20

    .line 549
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    .line 551
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 553
    sub-int v5, v4, v5

    .line 555
    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 557
    move-object/from16 p0, v15

    .line 559
    iget v15, v11, Landroid/graphics/Rect;->top:I

    .line 561
    sub-int/2addr v14, v15

    .line 563
    if-gt v5, v14, :cond_1b

    .line 564
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 566
    sub-int/2addr v4, v5

    .line 568
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 569
    move-result-object v5

    .line 572
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    move-result v14

    .line 576
    if-nez v14, :cond_17

    .line 577
    const/4 v14, 0x0

    .line 579
    goto :goto_f

    .line 580
    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 581
    move-result-object v14

    .line 584
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    move-result v15

    .line 588
    if-nez v15, :cond_18

    .line 589
    goto :goto_f

    .line 591
    :cond_18
    move-object v15, v14

    .line 592
    check-cast v15, Landroid/graphics/Rect;

    .line 593
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    .line 595
    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 597
    move-result-object v17

    .line 600
    move-object/from16 v18, v14

    .line 601
    move-object/from16 v14, v17

    .line 603
    check-cast v14, Landroid/graphics/Rect;

    .line 605
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 607
    if-ge v15, v14, :cond_1a

    .line 609
    move v15, v14

    .line 611
    move-object/from16 v14, v17

    .line 612
    goto :goto_e

    .line 614
    :cond_1a
    move-object/from16 v14, v18

    .line 615
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    move-result v17

    .line 620
    if-nez v17, :cond_19

    .line 621
    :goto_f
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 623
    check-cast v14, Landroid/graphics/Rect;

    .line 626
    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    .line 628
    iget v14, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 630
    add-int/2addr v5, v14

    .line 632
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 633
    move-result v4

    .line 636
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 637
    if-le v4, v5, :cond_1b

    .line 639
    new-instance v5, Landroid/graphics/Rect;

    .line 641
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 643
    iget v14, v10, Landroid/graphics/Rect;->left:I

    .line 646
    invoke-virtual {v5, v14, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 648
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_1b
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    .line 654
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 656
    sub-int/2addr v4, v5

    .line 658
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 659
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 661
    sub-int/2addr v5, v14

    .line 663
    if-lt v4, v5, :cond_21

    .line 664
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 666
    move-result v4

    .line 669
    sub-int/2addr v14, v4

    .line 670
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 671
    add-int/2addr v14, v4

    .line 673
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 674
    move-result-object v4

    .line 677
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    move-result v5

    .line 681
    if-nez v5, :cond_1c

    .line 682
    const/4 v5, 0x0

    .line 684
    goto :goto_11

    .line 685
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    move-result-object v5

    .line 689
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 690
    move-result v13

    .line 693
    if-nez v13, :cond_1d

    .line 694
    goto :goto_11

    .line 696
    :cond_1d
    move-object v13, v5

    .line 697
    check-cast v13, Landroid/graphics/Rect;

    .line 698
    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 700
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    move-result-object v15

    .line 705
    move-object/from16 v17, v5

    .line 706
    move-object v5, v15

    .line 708
    check-cast v5, Landroid/graphics/Rect;

    .line 709
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 711
    if-le v13, v5, :cond_1f

    .line 713
    move v13, v5

    .line 715
    move-object v5, v15

    .line 716
    goto :goto_10

    .line 717
    :cond_1f
    move-object/from16 v5, v17

    .line 718
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 720
    move-result v15

    .line 723
    if-nez v15, :cond_1e

    .line 724
    :goto_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 726
    check-cast v5, Landroid/graphics/Rect;

    .line 729
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 731
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 733
    move-result v5

    .line 736
    sub-int/2addr v4, v5

    .line 737
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 738
    sub-int/2addr v4, v5

    .line 740
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 741
    move-result v4

    .line 744
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 745
    if-ge v4, v5, :cond_21

    .line 747
    new-instance v5, Landroid/graphics/Rect;

    .line 749
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 751
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 754
    invoke-virtual {v5, v13, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 756
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    goto :goto_12

    .line 762
    :cond_20
    move-object/from16 p0, v15

    .line 763
    :cond_21
    :goto_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 765
    move-result v4

    .line 768
    const/4 v5, 0x1

    .line 769
    xor-int/2addr v4, v5

    .line 770
    if-eqz v4, :cond_2b

    .line 771
    iget v4, v11, Landroid/graphics/Rect;->right:I

    .line 773
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 775
    sub-int v5, v4, v5

    .line 777
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 779
    iget v14, v11, Landroid/graphics/Rect;->left:I

    .line 781
    sub-int/2addr v13, v14

    .line 783
    if-gt v5, v13, :cond_26

    .line 784
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 786
    sub-int/2addr v4, v5

    .line 788
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 789
    move-result-object v5

    .line 792
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 793
    move-result v13

    .line 796
    if-nez v13, :cond_22

    .line 797
    const/4 v13, 0x0

    .line 799
    goto :goto_14

    .line 800
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 801
    move-result-object v13

    .line 804
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 805
    move-result v14

    .line 808
    if-nez v14, :cond_23

    .line 809
    goto :goto_14

    .line 811
    :cond_23
    move-object v14, v13

    .line 812
    check-cast v14, Landroid/graphics/Rect;

    .line 813
    iget v14, v14, Landroid/graphics/Rect;->right:I

    .line 815
    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 817
    move-result-object v15

    .line 820
    move-object/from16 v16, v13

    .line 821
    move-object v13, v15

    .line 823
    check-cast v13, Landroid/graphics/Rect;

    .line 824
    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 826
    if-ge v14, v13, :cond_25

    .line 828
    move v14, v13

    .line 830
    move-object v13, v15

    .line 831
    goto :goto_13

    .line 832
    :cond_25
    move-object/from16 v13, v16

    .line 833
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 835
    move-result v15

    .line 838
    if-nez v15, :cond_24

    .line 839
    :goto_14
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 841
    check-cast v13, Landroid/graphics/Rect;

    .line 844
    iget v5, v13, Landroid/graphics/Rect;->right:I

    .line 846
    iget v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 848
    add-int/2addr v5, v13

    .line 850
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 851
    move-result v4

    .line 854
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 855
    if-le v4, v5, :cond_26

    .line 857
    new-instance v5, Landroid/graphics/Rect;

    .line 859
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 861
    iget v13, v10, Landroid/graphics/Rect;->top:I

    .line 864
    invoke-virtual {v5, v4, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 866
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_26
    iget v4, v11, Landroid/graphics/Rect;->right:I

    .line 872
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 874
    sub-int/2addr v4, v5

    .line 876
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 877
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 879
    sub-int/2addr v5, v11

    .line 881
    if-lt v4, v5, :cond_2b

    .line 882
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 884
    move-result v4

    .line 887
    sub-int/2addr v11, v4

    .line 888
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 889
    add-int/2addr v11, v4

    .line 891
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 892
    move-result-object v3

    .line 895
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 896
    move-result v4

    .line 899
    if-nez v4, :cond_27

    .line 900
    const/4 v4, 0x0

    .line 902
    goto :goto_15

    .line 903
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 904
    move-result-object v4

    .line 907
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 908
    move-result v5

    .line 911
    if-nez v5, :cond_28

    .line 912
    goto :goto_15

    .line 914
    :cond_28
    move-object v5, v4

    .line 915
    check-cast v5, Landroid/graphics/Rect;

    .line 916
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 918
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 920
    move-result-object v13

    .line 923
    move-object v14, v13

    .line 924
    check-cast v14, Landroid/graphics/Rect;

    .line 925
    iget v14, v14, Landroid/graphics/Rect;->left:I

    .line 927
    if-le v5, v14, :cond_2a

    .line 929
    move-object v4, v13

    .line 931
    move v5, v14

    .line 932
    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 933
    move-result v13

    .line 936
    if-nez v13, :cond_29

    .line 937
    :goto_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 939
    check-cast v4, Landroid/graphics/Rect;

    .line 942
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 944
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 946
    move-result v4

    .line 949
    sub-int/2addr v3, v4

    .line 950
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 951
    sub-int/2addr v3, v4

    .line 953
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 954
    move-result v3

    .line 957
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 958
    if-ge v3, v4, :cond_2b

    .line 960
    new-instance v4, Landroid/graphics/Rect;

    .line 962
    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 964
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 967
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 969
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_2b
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 975
    move-result-object v3

    .line 978
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 979
    move-result v4

    .line 982
    if-nez v4, :cond_2c

    .line 983
    const/4 v4, 0x0

    .line 985
    goto :goto_16

    .line 986
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 987
    move-result-object v4

    .line 990
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 991
    move-result v5

    .line 994
    if-nez v5, :cond_2d

    .line 995
    goto :goto_16

    .line 997
    :cond_2d
    move-object v5, v4

    .line 998
    check-cast v5, Landroid/graphics/Rect;

    .line 999
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 1001
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 1003
    sub-int/2addr v11, v12

    .line 1005
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 1006
    move-result v11

    .line 1009
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1010
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 1012
    sub-int/2addr v5, v12

    .line 1014
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 1015
    move-result v5

    .line 1018
    add-int/2addr v5, v11

    .line 1019
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1020
    move-result-object v11

    .line 1023
    move-object v12, v11

    .line 1024
    check-cast v12, Landroid/graphics/Rect;

    .line 1025
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 1027
    iget v14, v10, Landroid/graphics/Rect;->left:I

    .line 1029
    sub-int/2addr v13, v14

    .line 1031
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 1032
    move-result v13

    .line 1035
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1036
    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 1038
    sub-int/2addr v12, v14

    .line 1040
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 1041
    move-result v12

    .line 1044
    add-int/2addr v12, v13

    .line 1045
    if-le v5, v12, :cond_2f

    .line 1046
    move-object v4, v11

    .line 1048
    move v5, v12

    .line 1049
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1050
    move-result v11

    .line 1053
    if-nez v11, :cond_2e

    .line 1054
    :goto_16
    check-cast v4, Landroid/graphics/Rect;

    .line 1056
    if-nez v4, :cond_30

    .line 1058
    move-object v4, v10

    .line 1060
    :cond_30
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 1061
    invoke-static {v4, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1063
    move-result v15

    .line 1066
    move-object v14, v3

    .line 1067
    move-object/from16 v11, p0

    .line 1068
    move-object/from16 v16, v4

    .line 1070
    move-object/from16 v17, v11

    .line 1072
    move-object/from16 v18, v10

    .line 1074
    invoke-direct/range {v14 .. v19}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1076
    :goto_17
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 1079
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1081
    move-result-object v12

    .line 1084
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1085
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1087
    invoke-static {v4, v5}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1089
    move-result-object v4

    .line 1092
    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1093
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 1096
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1098
    move-result-object v13

    .line 1101
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1102
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1104
    invoke-static {v4, v5}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1106
    move-result-object v4

    .line 1109
    invoke-virtual {v13, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1110
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 1113
    if-eqz v4, :cond_31

    .line 1115
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1117
    move-result-object v5

    .line 1120
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1121
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1123
    invoke-static {v4, v0}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1125
    move-result-object v0

    .line 1128
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1129
    move-object v14, v5

    .line 1132
    goto :goto_18

    .line 1133
    :cond_31
    const/4 v14, 0x0

    .line 1134
    :goto_18
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 1135
    invoke-static {v12, v14}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1137
    move-result v11

    .line 1140
    iget-boolean v15, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 1141
    move-object v10, v0

    .line 1143
    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1144
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1147
    const-string v4, "TvPipBoundsAlgorithm"

    .line 1149
    if-eqz v3, :cond_32

    .line 1151
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1153
    move-result-object v3

    .line 1156
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1157
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 1159
    move-result-object v3

    .line 1162
    const v7, 0x3d9c261f

    .line 1163
    const-string v10, "%s: screenSize: %s"

    .line 1166
    const/4 v11, 0x0

    .line 1168
    invoke-static {v5, v7, v11, v10, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    :cond_32
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1172
    if-eqz v3, :cond_33

    .line 1174
    iget v3, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 1176
    int-to-long v10, v3

    .line 1178
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1179
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1181
    move-result-object v5

    .line 1184
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 1185
    move-result-object v5

    .line 1188
    const/4 v7, 0x4

    .line 1189
    const-string v10, "%s: stashOffset: %d"

    .line 1190
    const v11, -0xc2245fd

    .line 1192
    invoke-static {v3, v11, v7, v10, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    :cond_33
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1198
    if-eqz v3, :cond_34

    .line 1200
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 1202
    move-result-object v3

    .line 1205
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1206
    move-result-object v3

    .line 1209
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1210
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 1212
    move-result-object v3

    .line 1215
    const v6, -0x5c604e24

    .line 1216
    const-string v7, "%s: insetBounds: %s"

    .line 1219
    const/4 v10, 0x0

    .line 1221
    invoke-static {v5, v6, v10, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    goto :goto_19

    .line 1225
    :cond_34
    const/4 v10, 0x0

    .line 1226
    :goto_19
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1227
    if-eqz v3, :cond_35

    .line 1229
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1231
    move-result-object v2

    .line 1234
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1235
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 1237
    move-result-object v2

    .line 1240
    const v5, 0x54b9f4e2

    .line 1241
    const-string v6, "%s: pipSize: %s"

    .line 1244
    invoke-static {v3, v5, v10, v6, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    :cond_35
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1249
    if-eqz v2, :cond_36

    .line 1251
    iget v1, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 1253
    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 1255
    move-result-object v1

    .line 1258
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1259
    move-result-object v1

    .line 1262
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1263
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1265
    move-result-object v1

    .line 1268
    const v3, 0x74de31f8

    .line 1269
    const-string v5, "%s: gravity: %s"

    .line 1272
    const/4 v12, 0x0

    .line 1274
    invoke-static {v2, v3, v12, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    goto :goto_1a

    .line 1278
    :cond_36
    const/4 v12, 0x0

    .line 1279
    :goto_1a
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1280
    if-eqz v1, :cond_37

    .line 1282
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1284
    move-result-object v1

    .line 1287
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1288
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1290
    move-result-object v1

    .line 1293
    const v3, -0x20644795

    .line 1294
    const-string v5, "%s: restrictedKeepClearAreas: %s"

    .line 1297
    invoke-static {v2, v3, v12, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1299
    :cond_37
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1302
    if-eqz v1, :cond_38

    .line 1304
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1306
    move-result-object v1

    .line 1309
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1310
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1312
    move-result-object v1

    .line 1315
    const v3, -0xeadb97c

    .line 1316
    const-string v5, "%s: unrestrictedKeepClearAreas: %s"

    .line 1319
    invoke-static {v2, v3, v12, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    :cond_38
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1324
    if-eqz v1, :cond_39

    .line 1326
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1328
    move-result-object v1

    .line 1331
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1332
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1334
    move-result-object v1

    .line 1337
    const v3, -0x3c555ff1

    .line 1338
    const-string v4, "%s: placement: %s"

    .line 1341
    invoke-static {v2, v3, v12, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    :cond_39
    return-object v0
    .line 1346
.end method

.method public final onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 5
    return-void
    .line 8
.end method

.method public final updateExpandedPipSize()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 10
    const/4 v4, 0x0

    .line 12
    cmpl-float v4, v2, v4

    .line 13
    const/4 v5, 0x0

    .line 15
    const-string v6, "TvPipBoundsAlgorithm"

    .line 16
    if-nez v4, :cond_1

    .line 18
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    const v1, -0x134220b0

    .line 30
    const-string v2, "%s: updateExpandedPipSize(): Expanded mode aspect ratio of 0 not supported"

    .line 33
    invoke-static {p0, v1, v5, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void

    .line 38
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    cmpg-float v4, v2, v4

    .line 41
    const-string v7, "%s: Accommodate aspect ratio"

    .line 43
    const v8, 0x61082a32

    .line 45
    const-string v9, "%s: Aspect ratio is too extreme, use max size"

    .line 48
    const v10, 0x68f7e947

    .line 50
    iget-object v11, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 53
    const/4 v12, 0x2

    .line 55
    if-gez v4, :cond_6

    .line 56
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 58
    if-ne v4, v12, :cond_2

    .line 60
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 62
    goto/16 :goto_2

    .line 64
    :cond_2
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 66
    iget-object v4, v11, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 68
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 70
    mul-int/2addr v4, v12

    .line 72
    sub-int/2addr v1, v4

    .line 73
    iget v4, v3, Landroid/graphics/Insets;->top:I

    .line 74
    sub-int/2addr v1, v4

    .line 76
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 77
    sub-int/2addr v1, v3

    .line 79
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 80
    int-to-float v3, v3

    .line 82
    div-float/2addr v3, v2

    .line 83
    int-to-float v2, v1

    .line 84
    cmpl-float v2, v2, v3

    .line 85
    if-lez v2, :cond_4

    .line 87
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 89
    if-eqz v1, :cond_3

    .line 91
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 93
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 98
    invoke-static {v1, v8, v5, v7, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_3
    new-instance v1, Landroid/util/Size;

    .line 102
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 104
    float-to-int v2, v3

    .line 106
    invoke-direct {v1, p0, v2}, Landroid/util/Size;-><init>(II)V

    .line 107
    goto :goto_0

    .line 110
    :cond_4
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 111
    if-eqz v2, :cond_5

    .line 113
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 115
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 120
    invoke-static {v2, v10, v5, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_5
    new-instance v2, Landroid/util/Size;

    .line 124
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 126
    invoke-direct {v2, p0, v1}, Landroid/util/Size;-><init>(II)V

    .line 128
    goto :goto_1

    .line 131
    :cond_6
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 132
    const/4 v13, 0x1

    .line 134
    if-ne v4, v13, :cond_7

    .line 135
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 137
    goto :goto_2

    .line 139
    :cond_7
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 140
    iget-object v4, v11, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 142
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 144
    mul-int/2addr v4, v12

    .line 146
    sub-int/2addr v1, v4

    .line 147
    iget v4, v3, Landroid/graphics/Insets;->left:I

    .line 148
    sub-int/2addr v1, v4

    .line 150
    iget v3, v3, Landroid/graphics/Insets;->right:I

    .line 151
    sub-int/2addr v1, v3

    .line 153
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 154
    int-to-float v3, v3

    .line 156
    mul-float/2addr v3, v2

    .line 157
    int-to-float v2, v1

    .line 158
    cmpl-float v2, v2, v3

    .line 159
    if-lez v2, :cond_9

    .line 161
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 163
    if-eqz v1, :cond_8

    .line 165
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 167
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 172
    invoke-static {v1, v8, v5, v7, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_8
    new-instance v1, Landroid/util/Size;

    .line 176
    float-to-int v2, v3

    .line 178
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 179
    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 181
    :goto_0
    move-object p0, v1

    .line 184
    goto :goto_2

    .line 185
    :cond_9
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 186
    if-eqz v2, :cond_a

    .line 188
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 190
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 192
    move-result-object v3

    .line 195
    invoke-static {v2, v10, v5, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_a
    new-instance v2, Landroid/util/Size;

    .line 199
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 201
    invoke-direct {v2, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 203
    :goto_1
    move-object p0, v2

    .line 206
    :goto_2
    iput-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 207
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 209
    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 213
    move-result v0

    .line 216
    int-to-long v0, v0

    .line 217
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 218
    move-result p0

    .line 221
    int-to-long v2, p0

    .line 222
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    move-result-object v0

    .line 228
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    move-result-object v1

    .line 232
    filled-new-array {v6, v0, v1}, [Ljava/lang/Object;

    .line 233
    move-result-object v0

    .line 236
    const/16 v1, 0x14

    .line 237
    const-string v2, "%s: updateExpandedPipSize(): expanded size, width: %d, height: %d"

    .line 239
    const v3, 0x285d7722

    .line 241
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_b
    return-void
    .line 247
.end method

.method public final updateGravityOnExpansionToggled(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const-string v1, "TvPipBoundsAlgorithm"

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 10
    int-to-long v2, v0

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v4

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v2

    .line 22
    filled-new-array {v1, v4, v2}, [Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    const/16 v3, 0x1c

    .line 27
    const-string v4, "%s: updateGravity, expanding: %b, fixedExpandedOrientation: %d"

    .line 29
    const v5, -0x16592994

    .line 31
    invoke-static {v0, v5, v3, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 37
    and-int/lit8 v2, v0, 0x7

    .line 39
    and-int/lit8 v3, v0, 0x70

    .line 41
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 43
    and-int/lit8 v5, v4, 0x7

    .line 45
    and-int/lit8 v4, v4, 0x70

    .line 47
    const/4 v6, 0x2

    .line 49
    if-eqz p1, :cond_2

    .line 50
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 52
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 54
    if-ne p1, v6, :cond_1

    .line 56
    or-int/lit8 p1, v3, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    or-int/lit8 p1, v2, 0x10

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 64
    if-ne p1, v6, :cond_3

    .line 66
    or-int p1, v5, v3

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    or-int p1, v2, v4

    .line 71
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 73
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 75
    if-eqz p0, :cond_4

    .line 77
    invoke-static {p1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 87
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    const v0, 0x4daff178    # 3.68979712E8f

    .line 93
    const/4 v1, 0x0

    .line 96
    const-string v2, "%s: new gravity: %s"

    .line 97
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_4
    return-void
    .line 102
.end method
