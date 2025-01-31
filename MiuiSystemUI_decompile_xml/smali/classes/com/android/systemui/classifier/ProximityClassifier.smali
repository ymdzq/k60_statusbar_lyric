.class public final Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

.field public mGestureStartTimeNs:J

.field public mNear:Z

.field public mNearDurationNs:J

.field public final mPercentCoveredThreshold:F

.field public mPercentNear:F

.field public mPrevNearTimeNs:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/DistanceClassifier;Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string/jumbo p1, "systemui"

    .line 10
    const-string p2, "brightline_falsing_proximity_percent_covered_threshold"

    .line 13
    const p3, 0x3dcccccd    # 0.1f

    .line 15
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    .line 1
    if-eqz p1, :cond_6

    .line 2
    const/16 v0, 0xa

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    const/16 v0, 0xc

    .line 8
    if-eq p1, v0, :cond_6

    .line 10
    const/16 v0, 0xf

    .line 12
    if-eq p1, v0, :cond_6

    .line 14
    const/16 v0, 0x12

    .line 16
    if-ne p1, v0, :cond_0

    .line 18
    goto/16 :goto_4

    .line 20
    :cond_0
    iget p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 22
    iget v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    .line 24
    cmpl-float p1, p1, v0

    .line 26
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 28
    if-lez p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    .line 34
    move-result-object v3

    .line 37
    iget-object v4, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 38
    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 40
    move-result v4

    .line 43
    const-string v5, "Threshold: "

    .line 44
    if-eqz v4, :cond_1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    const-string v6, "Horizontal swipe distance: "

    .line 50
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v6, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    .line 55
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 57
    move-result v6

    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 67
    invoke-static {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v5, p1, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 84
    invoke-static {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 85
    iget v3, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    .line 88
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 90
    move-result v3

    .line 93
    cmpl-float v3, v3, v5

    .line 94
    if-ltz v3, :cond_2

    .line 96
    goto :goto_0

    .line 98
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    const-string v6, "Vertical swipe distance: "

    .line 101
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget v6, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    .line 106
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 108
    move-result v6

    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 118
    invoke-static {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget v5, p1, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 135
    invoke-static {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 136
    iget v3, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    .line 139
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 141
    move-result v3

    .line 144
    cmpl-float v3, v3, v5

    .line 145
    if-ltz v3, :cond_2

    .line 147
    :goto_0
    const/4 v3, 0x1

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const/4 v3, 0x0

    .line 151
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    const-string v5, "Is longSwipe? "

    .line 154
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 165
    invoke-static {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 166
    if-eqz v3, :cond_3

    .line 169
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 171
    move-result-object p1

    .line 174
    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/classifier/DistanceClassifier;->getReason()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 179
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 180
    move-result-object p1

    .line 183
    :goto_2
    iget-boolean v3, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 184
    if-eqz v3, :cond_4

    .line 186
    iget v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 188
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 190
    move-result-object v3

    .line 193
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 201
    filled-new-array {v3, v0, p1}, [Ljava/lang/Object;

    .line 202
    move-result-object p1

    .line 205
    const/4 v0, 0x0

    .line 206
    const-string/jumbo v3, "{percentInProximity=%f, threshold=%f, distanceClassifier=%s}"

    .line 207
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 213
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 214
    move-result-object p0

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 219
    move-result-object p0

    .line 222
    :goto_3
    return-object p0

    .line 223
    :cond_5
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 224
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :cond_6
    :goto_4
    const-wide/16 p0, 0x0

    .line 229
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 231
    move-result-object p0

    .line 234
    return-object p0
    .line 235
.end method

.method public final onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getCovered()Z

    .line 2
    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getTimestampNs()J

    .line 6
    move-result-wide v1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "Sensor is: "

    .line 12
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    const-string v3, " at time "

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/classifier/ProximityClassifier;->update(JZ)V

    .line 35
    return-void
    .line 38
.end method

.method public final onSessionEnded()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 7
    return-void
    .line 9
.end method

.method public final onSessionStarted()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 7
    return-void
    .line 9
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    .line 10
    move-result-wide v3

    .line 13
    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    .line 14
    iget-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 16
    cmp-long v3, v3, v1

    .line 18
    if-lez v3, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    .line 22
    move-result-wide v3

    .line 25
    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 26
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    const-string v4, "Gesture start time: "

    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-wide v4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    .line 35
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 44
    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 47
    :cond_1
    const/4 v3, 0x1

    .line 49
    if-eq v0, v3, :cond_2

    .line 50
    const/4 v3, 0x3

    .line 52
    if-ne v0, v3, :cond_5

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    .line 57
    move-result-wide v3

    .line 60
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/systemui/classifier/ProximityClassifier;->update(JZ)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    .line 64
    move-result-wide v3

    .line 67
    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    .line 68
    sub-long/2addr v3, v5

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "Gesture duration, Proximity duration: "

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, ", "

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 86
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 95
    cmp-long p1, v3, v1

    .line 98
    if-nez p1, :cond_4

    .line 100
    iget-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    .line 102
    if-eqz p1, :cond_3

    .line 104
    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    goto :goto_0

    .line 108
    :cond_3
    const/4 p1, 0x0

    .line 109
    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 110
    goto :goto_1

    .line 112
    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 113
    long-to-float p1, v0

    .line 115
    long-to-float v0, v3

    .line 116
    div-float/2addr p1, v0

    .line 117
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    .line 118
    :cond_5
    :goto_1
    return-void
    .line 120
.end method

.method public final update(JZ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v2, v0, v2

    .line 6
    if-eqz v2, :cond_0

    .line 8
    cmp-long v2, p1, v0

    .line 10
    if-lez v2, :cond_0

    .line 12
    iget-boolean v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 18
    sub-long v0, p1, v0

    .line 20
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Updating duration: "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 41
    :cond_0
    if-eqz p3, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "Set prevNearTimeNs: "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 60
    iput-wide p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    .line 63
    :cond_1
    iput-boolean p3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    .line 65
    return-void
    .line 67
.end method
