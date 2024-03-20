.class public Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeRatioPositioner"


# instance fields
.field private current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

.field private guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

.field private mFreeformWindowHeight:F

.field private mFreeformWindowWidth:F

.field private mLastWinMode:I

.field private mMaxRatio:[F

.field private mMinRatio:[F

.field private mMiniHRatio:F

.field private mMiniRawRatio:F

.field private mMiniWindowHight:F

.field private mMiniWindowWidth:F

.field private mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

.field private mMovingRatioPair:[F

.field private mPreGuessRawRatio:F

.field private mPreGuessWinMode:I

.field private mPreWinMode:I

.field private mScreenAspectRatio:F

.field private mStartRatioPair:[F

.field private mTmpRawRatio:F

.field private mTouchedRatio:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 2
    const/4 p1, 0x2

    .line 5
    new-array v0, p1, [F

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mStartRatioPair:[F

    .line 8
    new-array v0, p1, [F

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMovingRatioPair:[F

    .line 12
    new-array v0, p1, [F

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMinRatio:[F

    .line 16
    new-array p1, p1, [F

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMaxRatio:[F

    .line 20
    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreWinMode:I

    .line 23
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mLastWinMode:I

    .line 25
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 27
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 29
    invoke-direct {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 34
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 36
    invoke-direct {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 41
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asRatioPolicy()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 49
    return-void
    .line 51
.end method

.method private boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V
    .locals 4

    .line 1
    if-eqz p3, :cond_4

    .line 2
    if-eqz p1, :cond_4

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto/16 :goto_1

    .line 8
    :cond_0
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreWinMode:I

    .line 10
    const/4 v0, 0x1

    .line 12
    if-ne p4, v0, :cond_1

    .line 13
    iget p4, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 15
    if-nez p4, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 19
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 20
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 22
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 24
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 26
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 28
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 30
    return-void

    .line 32
    :cond_1
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 33
    const/high16 v1, 0x3f000000    # 0.5f

    .line 35
    if-ne p4, v0, :cond_2

    .line 37
    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 41
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 46
    mul-float/2addr v2, v3

    .line 48
    add-float/2addr v2, v1

    .line 49
    float-to-int v2, v2

    .line 50
    add-int/2addr p4, v2

    .line 51
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 52
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 61
    mul-float/2addr v2, v3

    .line 63
    add-float/2addr v2, v1

    .line 64
    float-to-int v2, v2

    .line 65
    add-int/2addr p4, v2

    .line 66
    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 67
    iget p4, p2, Landroid/graphics/Rect;->left:I

    .line 69
    int-to-float p4, p4

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 72
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 77
    mul-float/2addr v2, v3

    .line 79
    add-float/2addr v2, p4

    .line 80
    add-float/2addr v2, v1

    .line 81
    float-to-int p4, v2

    .line 82
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 83
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 85
    int-to-float p4, p4

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 88
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    iget p3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 93
    mul-float/2addr p1, p3

    .line 95
    add-float/2addr p1, p4

    .line 96
    add-float/2addr p1, v1

    .line 97
    float-to-int p1, p1

    .line 98
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 104
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 109
    mul-float/2addr v2, v3

    .line 111
    add-float/2addr v2, v1

    .line 112
    float-to-int v2, v2

    .line 113
    sub-int/2addr p4, v2

    .line 114
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 115
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 119
    move-result v2

    .line 122
    int-to-float v2, v2

    .line 123
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 124
    mul-float/2addr v2, v3

    .line 126
    add-float/2addr v2, v1

    .line 127
    float-to-int v2, v2

    .line 128
    add-int/2addr p4, v2

    .line 129
    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 130
    iget p4, p2, Landroid/graphics/Rect;->right:I

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 134
    move-result v2

    .line 137
    int-to-float v2, v2

    .line 138
    iget v3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 139
    mul-float/2addr v2, v3

    .line 141
    add-float/2addr v2, v1

    .line 142
    float-to-int v2, v2

    .line 143
    sub-int/2addr p4, v2

    .line 144
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 145
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 147
    int-to-float p4, p4

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 150
    move-result p1

    .line 153
    int-to-float p1, p1

    .line 154
    iget p3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 155
    mul-float/2addr p1, p3

    .line 157
    add-float/2addr p1, p4

    .line 158
    add-float/2addr p1, v1

    .line 159
    float-to-int p1, p1

    .line 160
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 161
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 163
    if-nez p1, :cond_4

    .line 165
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 167
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 169
    move-result p3

    .line 172
    sub-int/2addr p1, p3

    .line 173
    int-to-float p1, p1

    .line 174
    const/high16 p3, 0x40000000    # 2.0f

    .line 175
    div-float/2addr p1, p3

    .line 177
    add-float/2addr p1, v1

    .line 178
    float-to-int p1, p1

    .line 179
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 180
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 182
    move-result v2

    .line 185
    sub-int/2addr p4, v2

    .line 186
    int-to-float p4, p4

    .line 187
    div-float/2addr p4, p3

    .line 188
    add-float/2addr p4, v1

    .line 189
    float-to-int p3, p4

    .line 190
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 191
    if-ne p0, v0, :cond_3

    .line 193
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 195
    goto :goto_1

    .line 198
    :cond_3
    neg-int p0, p1

    .line 199
    invoke-virtual {p2, p0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 200
    :cond_4
    :goto_1
    return-void
    .line 203
.end method

.method private calculateWindowPosition(FZZFF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p4

    .line 4
    move/from16 v2, p5

    .line 6
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mStartRatioPair:[F

    .line 8
    const/4 v4, 0x0

    .line 10
    aget v5, v3, v4

    .line 11
    const/4 v6, 0x1

    .line 13
    aget v3, v3, v6

    .line 14
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMovingRatioPair:[F

    .line 16
    aget v8, v7, v4

    .line 18
    aget v7, v7, v6

    .line 20
    sub-float v9, v8, v5

    .line 22
    sub-float v10, v7, v3

    .line 24
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 26
    iput v5, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 28
    iput v3, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 30
    iput v9, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 32
    iput v10, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 34
    if-eqz p3, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    const/high16 v12, 0x40000000    # 2.0f

    .line 39
    const/high16 v13, 0x3f800000    # 1.0f

    .line 41
    if-nez p2, :cond_2

    .line 43
    iput v13, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 45
    sub-float v1, v13, v8

    .line 47
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 49
    int-to-float v2, v2

    .line 51
    mul-float/2addr v1, v2

    .line 52
    float-to-double v1, v1

    .line 53
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 54
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 56
    move-result-wide v1

    .line 59
    sub-float v6, v13, v7

    .line 60
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 62
    int-to-float v7, v7

    .line 64
    mul-float/2addr v6, v7

    .line 65
    float-to-double v6, v6

    .line 66
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 67
    move-result-wide v6

    .line 70
    add-double/2addr v6, v1

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 72
    move-result-wide v1

    .line 75
    double-to-float v1, v1

    .line 76
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 77
    int-to-float v2, v2

    .line 79
    div-float/2addr v2, v12

    .line 80
    float-to-double v6, v2

    .line 81
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 82
    move-result-wide v6

    .line 85
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 86
    int-to-float v2, v2

    .line 88
    div-float/2addr v2, v12

    .line 89
    float-to-double v10, v2

    .line 90
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 91
    move-result-wide v8

    .line 94
    add-double/2addr v8, v6

    .line 95
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 96
    move-result-wide v6

    .line 99
    double-to-float v2, v6

    .line 100
    div-float/2addr v1, v2

    .line 101
    const v2, 0x3e99999a    # 0.3f

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 105
    move-result v1

    .line 108
    sub-float v1, v13, v1

    .line 109
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 111
    iput v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 113
    iput v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 115
    iput v4, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 117
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 119
    iput v4, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 121
    iput v13, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 123
    iput v13, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 125
    sget-object v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v6, "updateRatioRecord dampingValue:"

    .line 131
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 143
    invoke-static {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const v2, 0x3f666666    # 0.9f

    .line 147
    cmpl-float v1, v1, v2

    .line 150
    if-nez v1, :cond_1

    .line 152
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 154
    iput v13, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 156
    iput v13, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 158
    iput v5, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 160
    iput v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 162
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 164
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 166
    const-string v2, "animator_back_to_fullscreen"

    .line 168
    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->backToFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 170
    :cond_1
    return-void

    .line 173
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getMaxRawRatio()F

    .line 174
    move-result v7

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getMinRawRatio()F

    .line 178
    move-result v8

    .line 181
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMinRatio:[F

    .line 182
    aget v11, v11, v6

    .line 184
    mul-float v14, v11, v8

    .line 186
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMaxRatio:[F

    .line 188
    aget v15, v15, v6

    .line 190
    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    .line 192
    move-result v10

    .line 195
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 196
    move-result v10

    .line 199
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    .line 200
    move-result v9

    .line 203
    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    .line 204
    move-result v9

    .line 207
    div-float v14, v9, v10

    .line 208
    invoke-direct {v0, v14}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getGuessRatio(F)F

    .line 210
    move-result v4

    .line 213
    iput v14, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTmpRawRatio:F

    .line 214
    cmpl-float v16, v14, v7

    .line 216
    if-lez v16, :cond_3

    .line 218
    iput v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTmpRawRatio:F

    .line 220
    goto :goto_0

    .line 222
    :cond_3
    cmpg-float v16, v14, v8

    .line 223
    if-gez v16, :cond_4

    .line 225
    iput v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTmpRawRatio:F

    .line 227
    :cond_4
    :goto_0
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 229
    iput v5, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 231
    iput v3, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 233
    iput v9, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 235
    iput v10, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 237
    iput v4, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 239
    const/4 v3, 0x0

    .line 241
    cmpl-float v5, p1, v3

    .line 242
    if-eqz v5, :cond_5

    .line 244
    cmpl-float v4, p1, v4

    .line 246
    if-nez v4, :cond_5

    .line 248
    move/from16 v14, p1

    .line 250
    :cond_5
    iput v6, v13, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 252
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniHRatio:F

    .line 254
    sub-float v5, v11, v4

    .line 256
    const v9, 0x408b851f    # 4.36f

    .line 258
    div-float/2addr v5, v9

    .line 261
    add-float/2addr v5, v4

    .line 262
    iget v9, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniRawRatio:F

    .line 263
    mul-float/2addr v9, v5

    .line 265
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 266
    iget v13, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 268
    cmpg-float v16, v13, v5

    .line 270
    const/4 v3, 0x2

    .line 272
    if-gtz v16, :cond_9

    .line 273
    iget v12, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 275
    if-ne v12, v3, :cond_8

    .line 277
    iget v12, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mLastWinMode:I

    .line 279
    if-ne v12, v3, :cond_6

    .line 281
    iget v12, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreWinMode:I

    .line 283
    if-ne v12, v6, :cond_6

    .line 285
    goto :goto_2

    .line 287
    :cond_6
    cmpg-float v5, v13, v4

    .line 288
    if-gez v5, :cond_7

    .line 290
    goto :goto_1

    .line 292
    :cond_7
    move v4, v13

    .line 293
    :goto_1
    iput v4, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 294
    goto :goto_3

    .line 296
    :cond_8
    :goto_2
    sub-float v4, v5, v13

    .line 297
    invoke-virtual {v0, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 299
    move-result v4

    .line 302
    const/high16 v12, 0x40000000    # 2.0f

    .line 303
    div-float/2addr v4, v12

    .line 305
    sub-float/2addr v5, v4

    .line 306
    iput v5, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 307
    goto :goto_3

    .line 309
    :cond_9
    const/4 v6, 0x0

    .line 310
    :goto_3
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 311
    iget v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 313
    cmpg-float v5, v5, v11

    .line 315
    if-gtz v5, :cond_a

    .line 317
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 319
    iput v11, v5, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 321
    :cond_a
    iget v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 323
    cmpl-float v10, v5, v15

    .line 325
    if-ltz v10, :cond_b

    .line 327
    sub-float v5, v15, v5

    .line 329
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 331
    move-result v5

    .line 334
    invoke-virtual {v0, v5, v15}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 335
    move-result v5

    .line 338
    const/high16 v10, 0x40000000    # 2.0f

    .line 339
    div-float/2addr v5, v10

    .line 341
    add-float/2addr v5, v15

    .line 342
    iput v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 343
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 345
    iput v15, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 347
    :cond_b
    cmpl-float v4, v14, v7

    .line 349
    if-lez v4, :cond_c

    .line 351
    sub-float v4, v7, v14

    .line 353
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 355
    move-result v4

    .line 358
    invoke-virtual {v0, v4, v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 359
    move-result v4

    .line 362
    const/high16 v5, 0x40000000    # 2.0f

    .line 363
    div-float/2addr v4, v5

    .line 365
    add-float v14, v4, v7

    .line 366
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 368
    invoke-direct {v0, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getGuessRatio(F)F

    .line 370
    move-result v5

    .line 373
    iput v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 374
    goto :goto_4

    .line 376
    :cond_c
    cmpg-float v4, v14, v8

    .line 377
    if-gez v4, :cond_d

    .line 379
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 381
    invoke-direct {v0, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getGuessRatio(F)F

    .line 383
    move-result v5

    .line 386
    iput v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 387
    sub-float v4, v8, v14

    .line 389
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 391
    move-result v4

    .line 394
    invoke-virtual {v0, v4, v8}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 395
    move-result v4

    .line 398
    const/high16 v5, 0x40000000    # 2.0f

    .line 399
    div-float/2addr v4, v5

    .line 401
    sub-float v14, v8, v4

    .line 402
    :cond_d
    :goto_4
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 404
    iput v14, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 406
    if-eqz v6, :cond_f

    .line 408
    iget v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 410
    cmpg-float v5, v5, v9

    .line 412
    if-gtz v5, :cond_f

    .line 414
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniRawRatio:F

    .line 416
    iput v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 418
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 420
    iput v5, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 422
    iget v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 424
    iget v7, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 426
    mul-float/2addr v5, v7

    .line 428
    iput v5, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 429
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniHRatio:F

    .line 431
    iput v4, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 433
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 435
    if-eqz v4, :cond_e

    .line 437
    iput v3, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 439
    goto :goto_5

    .line 441
    :cond_e
    sget-object v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 442
    const-string v4, "Moving from fullscreen"

    .line 444
    invoke-static {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_f
    :goto_5
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 449
    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guessEnterFullScreen(FFLcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;)Z

    .line 451
    move-result v3

    .line 454
    if-nez v3, :cond_10

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->isBackFullScreenHotAreas(FF)Z

    .line 457
    move-result v1

    .line 460
    if-eqz v1, :cond_11

    .line 461
    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 463
    const/high16 v2, 0x3f800000    # 1.0f

    .line 465
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 467
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 469
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 471
    const/4 v2, 0x0

    .line 473
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 474
    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 476
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 478
    iget v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 480
    mul-float/2addr v3, v2

    .line 482
    iput v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 483
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 485
    iget v4, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 487
    iget v5, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 489
    mul-float/2addr v4, v5

    .line 491
    iput v4, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 492
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 494
    if-nez v4, :cond_13

    .line 496
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 498
    if-nez v3, :cond_13

    .line 500
    const/high16 v3, 0x3f800000    # 1.0f

    .line 502
    cmpg-float v4, v2, v3

    .line 504
    const/high16 v5, 0x40800000    # 4.0f

    .line 506
    if-gtz v4, :cond_12

    .line 508
    sub-float v13, v3, v2

    .line 510
    invoke-virtual {v0, v13, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 512
    move-result v2

    .line 515
    div-float/2addr v2, v5

    .line 516
    sub-float v13, v3, v2

    .line 517
    iput v13, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 519
    :cond_12
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 521
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 523
    cmpg-float v4, v2, v3

    .line 525
    if-gtz v4, :cond_13

    .line 527
    sub-float v13, v3, v2

    .line 529
    invoke-virtual {v0, v13, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 531
    move-result v2

    .line 534
    div-float/2addr v2, v5

    .line 535
    sub-float v13, v3, v2

    .line 536
    iput v13, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 538
    :cond_13
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 540
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 542
    iget v3, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 544
    iput v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 546
    iget v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 548
    iget v3, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 550
    const/high16 v4, 0x3f800000    # 1.0f

    .line 552
    sub-float v13, v4, v3

    .line 554
    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    .line 556
    move-result v1

    .line 559
    iput v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 560
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 562
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 564
    iget v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 566
    sub-float v13, v4, v3

    .line 568
    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    .line 570
    move-result v2

    .line 573
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 574
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 576
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 578
    const/4 v3, 0x0

    .line 580
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 581
    move-result v2

    .line 584
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 585
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 587
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 589
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 591
    move-result v2

    .line 594
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 595
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    .line 599
    const-string/jumbo v3, "updateRatioRecord mRatioRecord:"

    .line 601
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    move-result-object v0

    .line 613
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
    .line 617
.end method

.method private detectModeAndRadio(I)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mLastWinMode:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreWinMode:I

    .line 6
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mLastWinMode:I

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 10
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_1

    .line 14
    move v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v2, v0

    .line 18
    :goto_0
    if-ne p1, v1, :cond_2

    .line 19
    move p1, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move p1, v0

    .line 23
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 24
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 26
    if-ne v3, v1, :cond_3

    .line 28
    move v3, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move v3, v0

    .line 32
    :goto_2
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTmpRawRatio:F

    .line 33
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 35
    const v6, 0x3e19999a    # 0.15f

    .line 37
    invoke-direct {p0, v4, v5, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->exceedsThresholdRadio(FFF)Z

    .line 40
    move-result v4

    .line 43
    if-nez v2, :cond_5

    .line 44
    if-nez p1, :cond_4

    .line 46
    if-eqz v3, :cond_6

    .line 48
    :cond_4
    if-eqz v4, :cond_6

    .line 50
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 52
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSupportGesture()Z

    .line 54
    move-result p1

    .line 57
    if-eqz p1, :cond_6

    .line 58
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 60
    if-nez p1, :cond_6

    .line 62
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 66
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 68
    invoke-interface {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onWindowRadioChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 70
    :cond_6
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 73
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 75
    iget v3, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 77
    const/high16 v4, 0x3f000000    # 0.5f

    .line 79
    const/4 v5, 0x2

    .line 81
    if-eq p1, v3, :cond_12

    .line 82
    if-ne p1, v1, :cond_7

    .line 84
    if-nez v3, :cond_7

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    .line 88
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 93
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 95
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 103
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 105
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getFixedFullscreenSizeLevel(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 111
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 115
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 117
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    .line 121
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 123
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 126
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 131
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 133
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 135
    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 140
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 142
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 144
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 146
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 148
    invoke-interface {p1, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 150
    goto/16 :goto_6

    .line 153
    :cond_7
    if-nez p1, :cond_8

    .line 155
    if-ne v1, v3, :cond_8

    .line 157
    new-instance p1, Landroid/graphics/Rect;

    .line 159
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 164
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 166
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 174
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 176
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 178
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getFixedFullscreenSizeLevel(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 182
    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 186
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 188
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 190
    new-instance v3, Landroid/graphics/Rect;

    .line 192
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 194
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 197
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 200
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 202
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 204
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 206
    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 208
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 211
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 213
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 215
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 217
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 219
    invoke-interface {p1, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 221
    goto/16 :goto_6

    .line 224
    :cond_8
    if-ne p1, v1, :cond_9

    .line 226
    if-eq v5, v3, :cond_a

    .line 228
    :cond_9
    if-ne p1, v5, :cond_11

    .line 230
    if-ne v1, v3, :cond_11

    .line 232
    :cond_a
    new-instance p1, Landroid/graphics/Rect;

    .line 234
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 236
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 239
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 241
    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 246
    new-instance v2, Landroid/graphics/Rect;

    .line 249
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 251
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 254
    if-ne v5, v3, :cond_b

    .line 256
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 258
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 260
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 262
    move-result-object v1

    .line 265
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 266
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 268
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 270
    move-result-object v3

    .line 273
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 274
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 276
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 278
    move-result-object v4

    .line 281
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 282
    move-result v4

    .line 285
    int-to-float v4, v4

    .line 286
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 287
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 289
    move-result v5

    .line 292
    mul-float/2addr v5, v4

    .line 293
    float-to-int v4, v5

    .line 294
    add-int/2addr v4, v1

    .line 295
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 296
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 298
    move-result-object v5

    .line 301
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 302
    move-result v5

    .line 305
    int-to-float v5, v5

    .line 306
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 307
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 309
    move-result v6

    .line 312
    mul-float/2addr v6, v5

    .line 313
    float-to-int v5, v6

    .line 314
    add-int/2addr v5, v3

    .line 315
    goto/16 :goto_5

    .line 316
    :cond_b
    if-nez v3, :cond_10

    .line 318
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 320
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 322
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 324
    move-result v3

    .line 327
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 328
    iget v6, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 330
    if-nez v6, :cond_c

    .line 332
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 334
    aget-object v5, v5, v0

    .line 336
    goto :goto_3

    .line 338
    :cond_c
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 339
    aget-object v5, v6, v5

    .line 341
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 343
    move-result v6

    .line 346
    int-to-float v6, v6

    .line 347
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 348
    int-to-float v7, v7

    .line 350
    const/high16 v8, 0x3f800000    # 1.0f

    .line 351
    mul-float/2addr v7, v8

    .line 353
    const/high16 v9, 0x40000000    # 2.0f

    .line 354
    div-float/2addr v7, v9

    .line 356
    cmpg-float v6, v6, v7

    .line 357
    if-gtz v6, :cond_d

    .line 359
    move v0, v1

    .line 361
    :cond_d
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 362
    iget v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 364
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 366
    move-result v1

    .line 369
    iget v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 370
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 372
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 374
    move-result v6

    .line 377
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 378
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getNavBarHeight()I

    .line 380
    move-result v7

    .line 383
    sub-int/2addr v6, v7

    .line 384
    add-int/lit8 v6, v6, -0x4b

    .line 385
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 387
    sub-int/2addr v6, v7

    .line 389
    int-to-float v6, v6

    .line 390
    cmpl-float v7, v1, v6

    .line 391
    if-lez v7, :cond_e

    .line 393
    div-float v8, v6, v1

    .line 395
    :cond_e
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 397
    if-eqz v0, :cond_f

    .line 399
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 401
    goto :goto_4

    .line 403
    :cond_f
    iget v0, v5, Landroid/graphics/Rect;->right:I

    .line 404
    int-to-float v0, v0

    .line 406
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 407
    mul-float/2addr v5, v8

    .line 409
    sub-float/2addr v0, v5

    .line 410
    add-float/2addr v0, v4

    .line 411
    float-to-int v0, v0

    .line 412
    :goto_4
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 413
    mul-float/2addr v5, v8

    .line 415
    add-float/2addr v5, v4

    .line 416
    float-to-int v5, v5

    .line 417
    add-int/2addr v5, v0

    .line 418
    iget v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 419
    mul-float/2addr v6, v8

    .line 421
    add-float/2addr v6, v4

    .line 422
    float-to-int v4, v6

    .line 423
    add-int/2addr v4, v1

    .line 424
    move v10, v1

    .line 425
    move v1, v0

    .line 426
    move v0, v3

    .line 427
    move v3, v10

    .line 428
    move v11, v5

    .line 429
    move v5, v4

    .line 430
    move v4, v11

    .line 431
    goto :goto_5

    .line 432
    :cond_10
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 433
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 435
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 437
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 439
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 441
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 443
    move v10, v5

    .line 445
    move v5, v1

    .line 446
    move v1, v3

    .line 447
    move v3, v4

    .line 448
    move v4, v10

    .line 449
    :goto_5
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 450
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 453
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 455
    invoke-virtual {v1, v3, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 457
    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 461
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 463
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 465
    invoke-virtual {v1, v0, v3, v2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 467
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 470
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 472
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 474
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 476
    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 478
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 481
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 483
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 485
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 487
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 489
    invoke-interface {p1, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 491
    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 494
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 496
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 498
    goto/16 :goto_7

    .line 500
    :cond_12
    if-ne v3, v5, :cond_14

    .line 502
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 504
    if-ne p1, v5, :cond_14

    .line 506
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 508
    iget v0, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->equalRawRatio(FF)Z

    .line 512
    move-result p1

    .line 515
    if-nez p1, :cond_13

    .line 516
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 518
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 520
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 522
    :cond_13
    return-void

    .line 524
    :cond_14
    if-eq v3, v1, :cond_15

    .line 525
    if-ne v5, v3, :cond_16

    .line 527
    :cond_15
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 529
    iget v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 531
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->equalRawRatio(FF)Z

    .line 533
    move-result p1

    .line 536
    if-nez p1, :cond_16

    .line 537
    new-instance p1, Landroid/graphics/Rect;

    .line 539
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 544
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 546
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 548
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 551
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 554
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 556
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 558
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 562
    move-result v3

    .line 565
    int-to-float v3, v3

    .line 566
    add-float/2addr v3, v4

    .line 567
    float-to-int v3, v3

    .line 568
    add-int/2addr v3, v1

    .line 569
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 572
    move-result p1

    .line 575
    int-to-float p1, p1

    .line 576
    add-float/2addr p1, v4

    .line 577
    float-to-int p1, p1

    .line 578
    add-int/2addr v5, p1

    .line 579
    new-instance p1, Landroid/graphics/Rect;

    .line 580
    invoke-direct {p1, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 585
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 587
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 589
    move-result-object v1

    .line 592
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 593
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 595
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 597
    invoke-virtual {v2, v1, v3, p1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 599
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 602
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 604
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 606
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 608
    invoke-interface {p1, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 610
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 613
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 615
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 617
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "executeWindowTransaction freeformRawRatio:"

    .line 623
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object p1

    .line 634
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_16
    :goto_7
    return-void
    .line 638
.end method

.method private equalRawRatio(FF)Z
    .locals 2

    .line 1
    sub-float/2addr p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 3
    move-result p0

    .line 6
    float-to-double p0, p0

    .line 7
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 8
    cmpg-double p0, p0, v0

    .line 13
    if-gez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method private exceedsThresholdRadio(FFF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->equalRawRatio(FF)Z

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 14
    add-float v1, p3, p0

    .line 16
    mul-float/2addr v1, p2

    .line 18
    cmpl-float v1, p1, v1

    .line 19
    if-gtz v1, :cond_2

    .line 21
    sub-float/2addr p0, p3

    .line 23
    mul-float/2addr p0, p2

    .line 24
    cmpg-float p0, p1, p0

    .line 25
    if-gez p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    return v0
    .line 32
.end method

.method private fixPosition(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 2
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    if-ne v1, v3, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    if-nez v1, :cond_7

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    .line 17
    aget-object p0, p0, v0

    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    goto/16 :goto_3

    .line 23
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 25
    aget-object v1, v1, v3

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 29
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxWidthByRatio(F)F

    .line 33
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 37
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 39
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxHeightByRatio(F)F

    .line 43
    move-result v2

    .line 46
    div-float v3, v0, v2

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 49
    move-result v4

    .line 52
    int-to-float v4, v4

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result v5

    .line 57
    int-to-float v5, v5

    .line 58
    cmpl-float v6, v0, v4

    .line 59
    if-lez v6, :cond_2

    .line 61
    div-float v2, v4, v3

    .line 63
    move v0, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    cmpl-float v4, v2, v5

    .line 67
    if-lez v4, :cond_3

    .line 69
    mul-float v0, v5, v3

    .line 71
    move v2, v5

    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 74
    move-result v3

    .line 77
    int-to-float v3, v3

    .line 78
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    mul-float/2addr v3, v4

    .line 81
    div-float/2addr v3, v2

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 83
    move-result v5

    .line 86
    int-to-float v5, v5

    .line 87
    mul-float/2addr v5, v4

    .line 88
    div-float/2addr v5, v0

    .line 89
    cmpl-float v5, v5, v4

    .line 90
    if-lez v5, :cond_5

    .line 92
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 94
    const/high16 v5, 0x3f000000    # 0.5f

    .line 96
    if-nez p0, :cond_4

    .line 98
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 100
    add-float/2addr v0, v5

    .line 102
    float-to-int v0, v0

    .line 103
    sub-int/2addr p0, v0

    .line 104
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 105
    goto :goto_2

    .line 107
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 108
    add-float/2addr v0, v5

    .line 110
    float-to-int v0, v0

    .line 111
    add-int/2addr p0, v0

    .line 112
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 113
    :cond_5
    :goto_2
    cmpl-float p0, v3, v4

    .line 115
    if-lez p0, :cond_6

    .line 117
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 119
    float-to-int v0, v2

    .line 121
    add-int/2addr p0, v0

    .line 122
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 123
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 125
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 127
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 129
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result p0

    .line 134
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 137
    move-result v3

    .line 140
    sub-int/2addr v2, v3

    .line 141
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 142
    move-result p0

    .line 145
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 146
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 148
    move-result v0

    .line 151
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 154
    move-result v2

    .line 157
    sub-int/2addr v1, v2

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 159
    move-result v0

    .line 162
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 163
    :cond_7
    :goto_3
    return-void
    .line 166
.end method

.method private getGuessRatio(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->calculateGuessRawRatio(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;F)F

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method private getMaxRawRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxRawRatio()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method private getMinRawRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMinRawRatio()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method private getRatioPairByRange(Landroid/graphics/Rect;FF)[F
    .locals 5

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 5
    int-to-float v1, v1

    .line 7
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 8
    int-to-float v2, v2

    .line 10
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    int-to-float p1, p1

    .line 13
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 14
    const/4 v4, 0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    invoke-direct {p0, p2, v1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->perFromVal(FFF)F

    .line 19
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->perFromVal(FFF)F

    .line 24
    move-result p2

    .line 27
    :goto_0
    invoke-direct {p0, p3, p1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->perFromVal(FFF)F

    .line 28
    move-result p0

    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 33
    move-result p2

    .line 36
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 37
    move-result p0

    .line 40
    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [F

    .line 42
    const/4 p3, 0x0

    .line 44
    aput p2, p1, p3

    .line 45
    aput p0, p1, v4

    .line 47
    return-object p1
    .line 49
.end method

.method private guessEnterFullScreen(FFLcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;)Z
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 2
    const/4 v0, 0x0

    .line 4
    aget-object p3, p3, v0

    .line 5
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 7
    add-float/2addr p1, v1

    .line 9
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 10
    add-float/2addr p2, v1

    .line 12
    invoke-direct {p0, p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 13
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mStartRatioPair:[F

    .line 17
    aget p2, p0, v0

    .line 19
    const/4 p3, 0x1

    .line 21
    aget p0, p0, p3

    .line 22
    aget v1, p1, v0

    .line 24
    aget p1, p1, p3

    .line 26
    sub-float/2addr v1, p2

    .line 28
    sub-float/2addr p1, p0

    .line 29
    mul-float/2addr p1, v1

    .line 30
    const p0, 0x3f59999a    # 0.85f

    .line 31
    cmpl-float p0, p1, p0

    .line 34
    if-ltz p0, :cond_0

    .line 36
    move v0, p3

    .line 38
    :cond_0
    return v0
    .line 39
.end method

.method private isFixedRatio()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFixedRatio()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method private perFromVal(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p3

    .line 2
    sub-float/2addr p2, p3

    .line 3
    div-float/2addr p1, p2

    .line 4
    return p1
    .line 5
.end method

.method private setSmallFreeformModeBeforeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 16
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 18
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object p1

    .line 28
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayAreaOrganizer()Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method private updateRecorderParams(I)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 8
    aget-object v0, v0, v2

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 13
    aget-object v0, v0, v1

    .line 15
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    mul-float/2addr v3, v4

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v5

    .line 28
    int-to-float v5, v5

    .line 29
    div-float/2addr v3, v5

    .line 30
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 31
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 33
    if-nez v5, :cond_1

    .line 35
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 40
    :goto_1
    int-to-float v6, v6

    .line 42
    if-nez v5, :cond_2

    .line 43
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 45
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 47
    goto :goto_2

    .line 49
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 50
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 52
    :goto_2
    int-to-float v5, v5

    .line 54
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 55
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 57
    int-to-float v8, v8

    .line 59
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 60
    int-to-float v7, v7

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inFullScreenModeGesture(I)Z

    .line 63
    move-result p1

    .line 66
    const/4 v9, 0x0

    .line 67
    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 70
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getSupportBoundLevels()Ljava/util/ArrayList;

    .line 72
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result p1

    .line 79
    if-ne p1, v2, :cond_4

    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getSupportBoundLevels()Ljava/util/ArrayList;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 91
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 92
    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 96
    move-result v10

    .line 99
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 100
    move-result v11

    .line 103
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxWidth()F

    .line 104
    move-result v12

    .line 107
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxHeight()F

    .line 108
    move-result v13

    .line 111
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 112
    move-result p1

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    const/4 v10, 0x0

    .line 117
    move p1, v10

    .line 118
    move v11, p1

    .line 119
    move v12, v11

    .line 120
    move v13, v12

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 123
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 125
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 127
    move-result v10

    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 131
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 133
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 135
    move-result v11

    .line 138
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 139
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 141
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxWidth()F

    .line 143
    move-result v12

    .line 146
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 147
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 149
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxHeight()F

    .line 151
    move-result v13

    .line 154
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 155
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 157
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 159
    move-result p1

    .line 162
    :goto_3
    iput v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowWidth:F

    .line 163
    iput v11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 165
    iput v12, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 167
    iput v13, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 169
    iget-object v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMinRatio:[F

    .line 171
    iget-object v11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 173
    invoke-virtual {v11, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMinHeightByRawRatio(F)F

    .line 175
    move-result p1

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 179
    move-result v11

    .line 182
    int-to-float v11, v11

    .line 183
    div-float/2addr p1, v11

    .line 184
    aput p1, v10, v2

    .line 185
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 187
    int-to-float p1, p1

    .line 189
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 190
    int-to-float v2, v2

    .line 192
    invoke-direct {p0, v0, p1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 193
    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMaxRatio:[F

    .line 197
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mScreenAspectRatio:F

    .line 199
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 201
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getRangeRatio()F

    .line 203
    move-result v2

    .line 206
    div-float/2addr p1, v2

    .line 207
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 208
    goto :goto_4

    .line 210
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 211
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 213
    move-result-object p1

    .line 216
    instance-of v10, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 217
    if-eqz v10, :cond_6

    .line 219
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 221
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 223
    move-result v10

    .line 226
    iput v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 227
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 229
    move-result v10

    .line 232
    iput v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 233
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 235
    move-result p1

    .line 238
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowWidth:F

    .line 239
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 241
    iget v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 243
    invoke-virtual {p1, v10}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxWidthByRatio(F)F

    .line 245
    move-result p1

    .line 248
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 249
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 251
    iget v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 253
    invoke-virtual {p1, v10}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxHeightByRatio(F)F

    .line 255
    move-result p1

    .line 258
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 259
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 261
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxLevelWidth()F

    .line 263
    move-result p1

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 267
    move-result v10

    .line 270
    int-to-float v10, v10

    .line 271
    div-float/2addr p1, v10

    .line 272
    iget-object v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 273
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMaxLevelHeight()F

    .line 275
    move-result v10

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 279
    move-result v11

    .line 282
    int-to-float v11, v11

    .line 283
    div-float/2addr v10, v11

    .line 284
    iget-object v11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMinRatio:[F

    .line 285
    iget-object v12, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 287
    iget v13, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 289
    invoke-virtual {v12, v13}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getMinHeightByRawRatio(F)F

    .line 291
    move-result v12

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 295
    move-result v13

    .line 298
    int-to-float v13, v13

    .line 299
    div-float/2addr v12, v13

    .line 300
    aput v12, v11, v2

    .line 301
    iget-object v11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMaxRatio:[F

    .line 303
    aput p1, v11, v9

    .line 305
    aput v10, v11, v2

    .line 307
    :goto_4
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 311
    move-result v0

    .line 314
    int-to-float v0, v0

    .line 315
    div-float/2addr p1, v0

    .line 316
    mul-float/2addr p1, v4

    .line 317
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniHRatio:F

    .line 318
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowWidth:F

    .line 320
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 322
    div-float/2addr p1, v0

    .line 324
    div-float/2addr p1, v3

    .line 325
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniRawRatio:F

    .line 326
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 328
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 330
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 332
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 334
    if-nez p1, :cond_7

    .line 336
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 338
    aget-object p1, p1, v9

    .line 340
    goto :goto_5

    .line 342
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 343
    aget-object p1, p1, v1

    .line 345
    :goto_5
    invoke-direct {p0, p1, v6, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 347
    move-result-object p1

    .line 350
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mStartRatioPair:[F

    .line 351
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 353
    invoke-direct {p0, p1, v5, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 355
    move-result-object p1

    .line 358
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMovingRatioPair:[F

    .line 359
    return-void
    .line 361
.end method

.method private valFromPer(FFF)F
    .locals 0

    .line 1
    invoke-static {p2, p3, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method


# virtual methods
.method public calculateOffset(IFF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    int-to-float p1, p1

    .line 13
    sub-float/2addr p1, p3

    .line 14
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 18
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 20
    int-to-float p1, p1

    .line 22
    sub-float/2addr p1, p2

    .line 23
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 24
    :goto_1
    return-void
    .line 26
.end method

.method public dragMerged(IFF)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->dragMerged(IFF)Z

    .line 6
    move-result p0

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

.method public getLastMovingBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 2
    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initLaunchMode(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->updateRangeParams()V

    .line 11
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->updateRecorderParams(I)V

    .line 14
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 21
    iget-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 22
    const/4 v3, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->calculateWindowPosition(FZZFF)V

    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 31
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 33
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 35
    const/4 p4, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 43
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winResizeToRatio(Landroid/graphics/Rect;)V

    .line 45
    :cond_0
    return-void
    .line 48
.end method

.method public onGestureDragEnd(FF)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 4
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 6
    const/4 v2, -0x1

    .line 8
    const-string v3, "animator_back_to_fullscreen"

    .line 9
    const-string v4, "default"

    .line 11
    if-ne v1, v2, :cond_1

    .line 13
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "guess mode is invalid!"

    .line 17
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 22
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 24
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFullscreenMode()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v4

    .line 33
    :goto_0
    invoke-interface {v1, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winDragEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 34
    return-void

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    const/4 v5, 0x2

    .line 39
    if-nez v1, :cond_2

    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 42
    aget-object v1, v1, v2

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 47
    aget-object v1, v1, v5

    .line 49
    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 51
    move/from16 v7, p1

    .line 53
    move/from16 v8, p2

    .line 55
    invoke-direct {v0, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 57
    move-result-object v6

    .line 60
    iput-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMovingRatioPair:[F

    .line 61
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 63
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 65
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 67
    invoke-direct {v0, v6, v7, v8, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 69
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 72
    invoke-direct {v0, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 74
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    .line 79
    move-result v6

    .line 82
    int-to-float v6, v6

    .line 83
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 84
    int-to-float v7, v7

    .line 86
    const/high16 v8, 0x3f800000    # 1.0f

    .line 87
    mul-float/2addr v7, v8

    .line 89
    const/high16 v9, 0x40000000    # 2.0f

    .line 90
    div-float/2addr v7, v9

    .line 92
    cmpg-float v6, v6, v7

    .line 93
    if-gtz v6, :cond_3

    .line 95
    const/4 v2, 0x1

    .line 97
    :cond_3
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 98
    iget v6, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 100
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 102
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 104
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 106
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 108
    move-result v10

    .line 111
    int-to-float v10, v10

    .line 112
    const/high16 v13, 0x3f000000    # 0.5f

    .line 113
    add-float/2addr v10, v13

    .line 115
    float-to-int v10, v10

    .line 116
    add-int/2addr v10, v11

    .line 117
    iget-object v14, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 118
    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 120
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 122
    move-result v14

    .line 125
    int-to-float v14, v14

    .line 126
    add-float/2addr v14, v13

    .line 127
    float-to-int v14, v14

    .line 128
    add-int/2addr v15, v14

    .line 129
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowWidth:F

    .line 130
    float-to-int v14, v14

    .line 132
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 133
    float-to-int v13, v13

    .line 135
    if-eqz v2, :cond_4

    .line 136
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 138
    add-int/lit8 v9, v9, 0x14

    .line 140
    goto :goto_2

    .line 142
    :cond_4
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 143
    sub-int/2addr v9, v14

    .line 145
    add-int/lit8 v9, v9, -0x14

    .line 146
    :goto_2
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 148
    add-int/lit8 v8, v8, 0x14

    .line 150
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 152
    move-result v8

    .line 155
    add-int v5, v9, v14

    .line 156
    add-int v7, v8, v13

    .line 158
    move-object/from16 v16, v3

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    .line 162
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 164
    move-object/from16 v17, v4

    .line 167
    new-instance v4, Landroid/graphics/Rect;

    .line 169
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 171
    move/from16 v18, v6

    .line 174
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 176
    move/from16 v19, v10

    .line 178
    const/4 v10, 0x1

    .line 180
    if-ne v6, v10, :cond_5

    .line 181
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 183
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 185
    if-nez v10, :cond_5

    .line 187
    const-string v1, "animator_freeform_to_fullscreen"

    .line 189
    :goto_3
    move/from16 v6, v18

    .line 191
    move/from16 v10, v19

    .line 193
    goto/16 :goto_12

    .line 195
    :cond_5
    const/4 v10, 0x2

    .line 197
    if-ne v6, v10, :cond_6

    .line 198
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 200
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 202
    if-nez v10, :cond_6

    .line 204
    const-string v1, "animator_mini_to_fullscreen"

    .line 206
    goto :goto_3

    .line 208
    :cond_6
    if-nez v6, :cond_9

    .line 209
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 211
    move/from16 v20, v11

    .line 213
    iget v11, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 215
    move/from16 v21, v15

    .line 217
    const/4 v15, 0x1

    .line 219
    if-ne v15, v11, :cond_a

    .line 220
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 222
    if-nez v2, :cond_7

    .line 224
    const-string v2, "animator_fullscreen_to_freeform_left"

    .line 226
    goto :goto_4

    .line 228
    :cond_7
    const-string v2, "animator_fullscreen_to_freeform_right"

    .line 229
    :goto_4
    iget v6, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 231
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 233
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 235
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 239
    move-result v5

    .line 242
    float-to-int v5, v5

    .line 243
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 244
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 246
    move-result-object v7

    .line 249
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 250
    move-result v7

    .line 253
    float-to-int v7, v7

    .line 254
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    .line 257
    move-result v9

    .line 260
    int-to-float v9, v9

    .line 261
    iget v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 262
    int-to-float v10, v10

    .line 264
    const/high16 v11, 0x3f800000    # 1.0f

    .line 265
    mul-float/2addr v10, v11

    .line 267
    const/high16 v11, 0x40000000    # 2.0f

    .line 268
    div-float/2addr v10, v11

    .line 270
    cmpg-float v9, v9, v10

    .line 271
    if-gtz v9, :cond_8

    .line 273
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 275
    goto :goto_5

    .line 277
    :cond_8
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 278
    sub-int/2addr v1, v5

    .line 280
    :goto_5
    move v9, v1

    .line 281
    add-int/2addr v5, v9

    .line 282
    add-int/2addr v7, v8

    .line 283
    move-object v1, v2

    .line 284
    goto/16 :goto_11

    .line 285
    :cond_9
    move/from16 v20, v11

    .line 287
    move/from16 v21, v15

    .line 289
    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 291
    if-nez v6, :cond_11

    .line 293
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 295
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 297
    const/4 v15, 0x2

    .line 299
    if-ne v15, v10, :cond_11

    .line 300
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 302
    if-nez v5, :cond_b

    .line 304
    const-string v5, "animator_fullscreen_to_mini_left"

    .line 306
    goto :goto_6

    .line 308
    :cond_b
    const-string v5, "animator_fullscreen_to_mini_right"

    .line 309
    :goto_6
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 311
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFixedRatio()Z

    .line 313
    move-result v6

    .line 316
    if-nez v6, :cond_d

    .line 317
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 319
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isIsAbnormalPortrait()Z

    .line 321
    move-result v6

    .line 324
    if-eqz v6, :cond_c

    .line 325
    goto :goto_7

    .line 327
    :cond_c
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 328
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 330
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 332
    move-result v6

    .line 335
    float-to-int v14, v6

    .line 336
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 337
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 339
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 341
    move-result v6

    .line 344
    float-to-int v13, v6

    .line 345
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 346
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->mLargeGeneralRadioLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 348
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 350
    move-result v6

    .line 353
    goto :goto_8

    .line 354
    :cond_d
    :goto_7
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 355
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 357
    move-result-object v6

    .line 360
    check-cast v6, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 361
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRawRatio()F

    .line 363
    move-result v6

    .line 366
    :goto_8
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 367
    iget v9, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 369
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    .line 371
    move-result v7

    .line 374
    iget v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 375
    iget v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 377
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 379
    move-result v9

    .line 382
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 383
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getNavBarHeight()I

    .line 385
    move-result v10

    .line 388
    sub-int/2addr v9, v10

    .line 389
    add-int/lit8 v9, v9, -0x4b

    .line 390
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 392
    sub-int/2addr v9, v10

    .line 394
    int-to-float v9, v9

    .line 395
    cmpl-float v10, v7, v9

    .line 396
    if-lez v10, :cond_e

    .line 398
    div-float v7, v9, v7

    .line 400
    goto :goto_9

    .line 402
    :cond_e
    move v7, v11

    .line 403
    :goto_9
    if-eqz v2, :cond_f

    .line 404
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 406
    add-int/lit8 v9, v9, 0x14

    .line 408
    goto :goto_a

    .line 410
    :cond_f
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 411
    sub-int/2addr v9, v14

    .line 413
    add-int/lit8 v9, v9, -0x14

    .line 414
    :goto_a
    add-int v10, v9, v14

    .line 416
    add-int v11, v8, v13

    .line 418
    if-eqz v2, :cond_10

    .line 420
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 422
    const/high16 v2, 0x3f000000    # 0.5f

    .line 424
    goto :goto_b

    .line 426
    :cond_10
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 427
    int-to-float v1, v1

    .line 429
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 430
    mul-float/2addr v2, v7

    .line 432
    sub-float/2addr v1, v2

    .line 433
    const/high16 v2, 0x3f000000    # 0.5f

    .line 434
    add-float/2addr v1, v2

    .line 436
    float-to-int v1, v1

    .line 437
    :goto_b
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowWidth:F

    .line 438
    mul-float/2addr v13, v7

    .line 440
    add-float/2addr v13, v2

    .line 441
    float-to-int v13, v13

    .line 442
    add-int/2addr v13, v1

    .line 443
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mFreeformWindowHeight:F

    .line 444
    mul-float/2addr v14, v7

    .line 446
    add-float/2addr v14, v2

    .line 447
    float-to-int v2, v14

    .line 448
    add-int v15, v12, v2

    .line 449
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 451
    invoke-direct {v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->setSmallFreeformModeBeforeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 453
    move v7, v11

    .line 456
    move v11, v1

    .line 457
    move-object v1, v5

    .line 458
    move v5, v10

    .line 459
    move v10, v13

    .line 460
    goto/16 :goto_12

    .line 461
    :cond_11
    const/4 v10, 0x1

    .line 463
    if-ne v6, v10, :cond_15

    .line 464
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 466
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 468
    const/4 v11, 0x2

    .line 470
    if-ne v11, v10, :cond_14

    .line 471
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 473
    if-nez v1, :cond_12

    .line 475
    const-string v1, "animator_freeform_to_mini_left"

    .line 477
    goto :goto_c

    .line 479
    :cond_12
    const-string v1, "animator_freeform_to_mini_right"

    .line 480
    :goto_c
    new-instance v2, Landroid/graphics/Rect;

    .line 482
    invoke-direct {v2, v9, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 487
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 489
    move-result v6

    .line 492
    invoke-virtual {v0, v6, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->miniFreeformAvoidIfNeed(ILandroid/graphics/Rect;)Z

    .line 493
    move-result v6

    .line 496
    if-eqz v6, :cond_13

    .line 497
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 499
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 501
    add-int v5, v9, v14

    .line 503
    add-int v7, v8, v13

    .line 505
    :cond_13
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 507
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 509
    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 511
    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 513
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 515
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 517
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 519
    invoke-direct {v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->setSmallFreeformModeBeforeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 521
    goto/16 :goto_12

    .line 524
    :cond_14
    move v10, v11

    .line 526
    goto :goto_d

    .line 527
    :cond_15
    const/4 v10, 0x2

    .line 528
    :goto_d
    if-ne v6, v10, :cond_18

    .line 529
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 531
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 533
    const/4 v11, 0x1

    .line 535
    if-ne v11, v10, :cond_17

    .line 536
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 538
    if-nez v1, :cond_16

    .line 540
    const-string v1, "animator_mini_to_freeform_left"

    .line 542
    goto/16 :goto_10

    .line 544
    :cond_16
    const-string v1, "animator_mini_to_freeform_right"

    .line 546
    goto/16 :goto_10

    .line 548
    :cond_17
    const/4 v10, 0x2

    .line 550
    :cond_18
    if-ne v6, v10, :cond_19

    .line 551
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 553
    iget v11, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 555
    if-ne v10, v11, :cond_19

    .line 557
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 559
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 561
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 563
    move-result-object v1

    .line 566
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 567
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 569
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 571
    move-result-object v1

    .line 574
    iget v12, v1, Landroid/graphics/Rect;->top:I

    .line 575
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 577
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 579
    move-result-object v1

    .line 582
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 583
    move-result v1

    .line 586
    int-to-float v1, v1

    .line 587
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 588
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 590
    move-result v2

    .line 593
    mul-float/2addr v2, v1

    .line 594
    const/high16 v1, 0x3f000000    # 0.5f

    .line 595
    add-float/2addr v2, v1

    .line 597
    float-to-int v2, v2

    .line 598
    add-int v10, v11, v2

    .line 599
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 601
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 603
    move-result-object v2

    .line 606
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 607
    move-result v2

    .line 610
    int-to-float v2, v2

    .line 611
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 612
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 614
    move-result v13

    .line 617
    mul-float/2addr v13, v2

    .line 618
    add-float/2addr v13, v1

    .line 619
    float-to-int v1, v13

    .line 620
    add-int v15, v12, v1

    .line 621
    const-string v1, "animator_back_to_mini"

    .line 623
    goto :goto_12

    .line 625
    :cond_19
    const/4 v10, 0x1

    .line 626
    if-ne v6, v10, :cond_1c

    .line 627
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 629
    iget v13, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 631
    if-ne v10, v13, :cond_1c

    .line 633
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 635
    if-nez v5, :cond_1a

    .line 637
    const-string v5, "animator_resize_left"

    .line 639
    goto :goto_e

    .line 641
    :cond_1a
    const-string v5, "animator_resize_right"

    .line 642
    :goto_e
    iget v6, v11, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 644
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 646
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 648
    move-result-object v7

    .line 651
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniWidth()F

    .line 652
    move-result v7

    .line 655
    float-to-int v7, v7

    .line 656
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 657
    invoke-virtual {v9, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 659
    move-result-object v9

    .line 662
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 663
    move-result v9

    .line 666
    float-to-int v9, v9

    .line 667
    if-eqz v2, :cond_1b

    .line 668
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 670
    add-int/lit8 v1, v1, 0x14

    .line 672
    goto :goto_f

    .line 674
    :cond_1b
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 675
    sub-int/2addr v1, v7

    .line 677
    add-int/lit8 v1, v1, -0x14

    .line 678
    :goto_f
    add-int v2, v1, v7

    .line 680
    add-int v7, v8, v9

    .line 682
    move v9, v1

    .line 684
    move-object v1, v5

    .line 685
    move/from16 v10, v19

    .line 686
    move/from16 v11, v20

    .line 688
    move/from16 v15, v21

    .line 690
    move v5, v2

    .line 692
    goto :goto_12

    .line 693
    :cond_1c
    if-nez v6, :cond_1d

    .line 694
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 696
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 698
    if-nez v1, :cond_1d

    .line 700
    move-object/from16 v1, v16

    .line 702
    goto :goto_10

    .line 704
    :cond_1d
    move-object/from16 v1, v17

    .line 705
    :goto_10
    move/from16 v6, v18

    .line 707
    :goto_11
    move/from16 v10, v19

    .line 709
    move/from16 v11, v20

    .line 711
    move/from16 v15, v21

    .line 713
    :goto_12
    invoke-virtual {v3, v11, v12, v10, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 715
    invoke-virtual {v4, v9, v8, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 718
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 721
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->getSizeLevelByRawRatio(F)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;

    .line 723
    move-result-object v2

    .line 726
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 727
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 729
    iget v7, v7, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 731
    invoke-virtual {v5, v2, v7, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 733
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 736
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 738
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 740
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 742
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 745
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 747
    invoke-interface {v2, v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winDragEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 749
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    .line 754
    const-string v3, "flingToRightSnapTarget mLastMovingBounds:"

    .line 756
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 761
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 763
    const-string v0, ",freeformRawRatio:"

    .line 766
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    move-result-object v0

    .line 777
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    return-void
    .line 781
.end method

.method public onGestureDragMove(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 4
    add-float/2addr v1, p1

    .line 6
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 7
    add-float/2addr v2, p2

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->getRatioPairByRange(Landroid/graphics/Rect;FF)[F

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMovingRatioPair:[F

    .line 14
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    move v2, v0

    .line 24
    iget-boolean v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 25
    const/4 v4, 0x0

    .line 27
    move-object v1, p0

    .line 28
    move v5, p1

    .line 29
    move v6, p2

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->calculateWindowPosition(FZZFF)V

    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 38
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->boundByRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;Z)V

    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 44
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 46
    invoke-interface {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winResizeToRatio(Landroid/graphics/Rect;)V

    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 51
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->detectModeAndRadio(I)V

    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->detectOutOfRange(Landroid/graphics/Rect;)V

    .line 60
    sget-object p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "onGestureDragMove:"

    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ",current \uff1a"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
    .line 94
.end method

.method public reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->reset()V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mStartRatioPair:[F

    .line 12
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    aput v2, v0, v1

    .line 16
    const/4 v3, 0x1

    .line 18
    aput v2, v0, v3

    .line 19
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTouchedRatio:F

    .line 21
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniRawRatio:F

    .line 23
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowWidth:F

    .line 25
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniWindowHight:F

    .line 27
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiniHRatio:F

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMinRatio:[F

    .line 31
    aput v2, v0, v1

    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMaxRatio:[F

    .line 35
    aput v2, v4, v1

    .line 37
    aput v2, v0, v3

    .line 39
    aput v2, v4, v3

    .line 41
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreWinMode:I

    .line 44
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mLastWinMode:I

    .line 46
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessWinMode:I

    .line 48
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mPreGuessRawRatio:F

    .line 50
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mTmpRawRatio:F

    .line 52
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 54
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 57
    return-void
    .line 59
.end method

.method public setOriginalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "RatioRecord current:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " \n  guess:"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public updateRangeParams()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->updateRangeParams()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 13
    move-result v1

    .line 16
    int-to-float v0, v0

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    mul-float/2addr v0, v2

    .line 20
    int-to-float v1, v1

    .line 21
    div-float/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    cmpl-float v1, v0, v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->TAG:Ljava/lang/String;

    .line 28
    const-string v2, "borderRatio is invaild!"

    .line 30
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;->mMiuiInfinityModeRatioPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioPolicy;->updateRangeRatio(F)V

    .line 37
    return-void
    .line 40
.end method
