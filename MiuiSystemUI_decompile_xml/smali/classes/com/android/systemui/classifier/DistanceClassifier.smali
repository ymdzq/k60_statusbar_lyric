.class public final Lcom/android/systemui/classifier/DistanceClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

.field public mDistanceDirty:Z

.field public final mHorizontalFlingThresholdPx:F

.field public final mHorizontalSwipeThresholdPx:F

.field public final mVelocityToDistanceMultiplier:F

.field public final mVerticalFlingThresholdPx:F

.field public final mVerticalSwipeThresholdPx:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string/jumbo p2, "systemui"

    .line 8
    const-string v0, "brightline_falsing_distance_velcoity_to_distance"

    .line 11
    const/high16 v1, 0x41f00000    # 30.0f

    .line 13
    invoke-static {p2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 15
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    .line 19
    const-string v0, "brightline_falsing_distance_horizontal_fling_threshold_in"

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-static {p2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 25
    move-result v0

    .line 28
    const-string v1, "brightline_falsing_distance_vertical_fling_threshold_in"

    .line 29
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 31
    invoke-static {p2, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 33
    move-result v1

    .line 36
    const-string v2, "brightline_falsing_distance_horizontal_swipe_threshold_in"

    .line 37
    const/high16 v3, 0x40400000    # 3.0f

    .line 39
    invoke-static {p2, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 41
    move-result v4

    .line 44
    invoke-static {p2, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 45
    move-result v2

    .line 48
    const-string v3, "brightline_falsing_distance_screen_fraction_max_distance"

    .line 49
    const v5, 0x3f4ccccd    # 0.8f

    .line 51
    invoke-static {p2, v3, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 54
    move-result p2

    .line 57
    iget v3, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    .line 58
    int-to-float v3, v3

    .line 60
    mul-float/2addr v3, p2

    .line 61
    iget v5, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    .line 62
    mul-float/2addr v0, v5

    .line 64
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result v0

    .line 68
    iput v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    .line 69
    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    .line 71
    int-to-float v0, v0

    .line 73
    mul-float/2addr v0, p2

    .line 74
    iget v3, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    .line 75
    mul-float/2addr v1, v3

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 78
    move-result v0

    .line 81
    iput v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    .line 82
    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    .line 84
    int-to-float v0, v0

    .line 86
    mul-float/2addr v0, p2

    .line 87
    iget v1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    .line 88
    mul-float/2addr v4, v1

    .line 90
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 91
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    .line 95
    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    .line 97
    int-to-float v0, v0

    .line 99
    mul-float/2addr v0, p2

    .line 100
    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    .line 101
    mul-float/2addr v2, p1

    .line 103
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 104
    move-result p1

    .line 107
    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    .line 108
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    .line 111
    return-void
    .line 113
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    if-eq p1, v0, :cond_4

    .line 4
    const/16 v0, 0x12

    .line 6
    if-eq p1, v0, :cond_4

    .line 8
    const/16 v0, 0xb

    .line 10
    if-eq p1, v0, :cond_4

    .line 12
    const/16 v0, 0xc

    .line 14
    if-eq p1, v0, :cond_4

    .line 16
    const/16 v0, 0xd

    .line 18
    if-eq p1, v0, :cond_4

    .line 20
    const/16 v0, 0xf

    .line 22
    if-eq p1, v0, :cond_4

    .line 24
    const/16 v0, 0x11

    .line 26
    if-ne p1, v0, :cond_0

    .line 28
    goto/16 :goto_3

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 32
    move-result-object p1

    .line 35
    iget v0, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    .line 36
    iget v1, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    .line 38
    iget v2, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    .line 40
    mul-float/2addr v1, v2

    .line 42
    add-float/2addr v0, v1

    .line 43
    iget v3, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    .line 44
    mul-float/2addr v3, v2

    .line 46
    iget v2, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    .line 47
    add-float v4, v3, v2

    .line 49
    iget-object v5, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 51
    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 53
    move-result v5

    .line 56
    const-string v6, "Threshold: "

    .line 57
    const-string v7, ", "

    .line 59
    if-eqz v5, :cond_1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "Horizontal swipe and fling distance: "

    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget p1, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result p1

    .line 108
    cmpl-float p1, p1, v1

    .line 109
    if-ltz p1, :cond_2

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "Vertical swipe and fling distance: "

    .line 116
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 151
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 154
    move-result p1

    .line 157
    cmpl-float p1, p1, v0

    .line 158
    if-ltz p1, :cond_2

    .line 160
    :goto_0
    const/4 p1, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    const/4 p1, 0x0

    .line 164
    :goto_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 165
    if-nez p1, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getReason()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 173
    move-result-object p0

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 178
    move-result-object p0

    .line 181
    :goto_2
    return-object p0

    .line 182
    :cond_4
    :goto_3
    const-wide/16 p0, 0x0

    .line 183
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 185
    move-result-object p0

    .line 188
    return-object p0
    .line 189
.end method

.method public final getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x3

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "Only "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, " motion events recorded."

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 43
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;-><init>(FFFF)V

    .line 46
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 50
    move-result-object v1

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Landroid/view/MotionEvent;

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x1

    .line 74
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 75
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 78
    move-result v0

    .line 81
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 82
    move-result v2

    .line 85
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 91
    iget-object v3, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 96
    move-result v3

    .line 99
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 100
    iget-object v4, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 103
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 105
    move-result v4

    .line 108
    sub-float/2addr v3, v4

    .line 109
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 110
    iget-object v4, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 113
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 115
    move-result v4

    .line 118
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 119
    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 122
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 124
    move-result v1

    .line 127
    sub-float/2addr v4, v1

    .line 128
    new-instance v1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 129
    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;-><init>(FFFF)V

    .line 131
    move-object v0, v1

    .line 134
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 135
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    .line 138
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 140
    return-object p0
    .line 142
.end method

.method public final getReason()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 8
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v2

    .line 21
    iget v3, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object v3

    .line 27
    iget v4, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    .line 28
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v4

    .line 33
    iget v5, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    .line 34
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v5

    .line 39
    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    .line 40
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v6

    .line 45
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    const-string/jumbo v1, "{distanceVectors=%s, isHorizontal=%s, velocityToDistanceMultiplier=%f, horizontalFlingThreshold=%f, verticalFlingThreshold=%f, horizontalSwipeThreshold=%f, verticalSwipeThreshold=%s}"

    .line 51
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    .line 3
    return-void
    .line 5
.end method
