.class public final Lcom/android/systemui/classifier/DoubleTapClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDoubleTapSlop:F

.field public final mDoubleTapTimeMs:J

.field public final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/classifier/SingleTapClassifier;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 5
    iput p3, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    .line 7
    const-wide/16 p1, 0x4b0

    .line 9
    iput-wide p1, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapTimeMs:J

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    if-nez v0, :cond_0

    .line 15
    const-wide/16 v0, 0x0

    .line 17
    const-string p1, "Only one gesture recorded"

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 26
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 28
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 30
    move-result-object v5

    .line 33
    iget-boolean v6, v5, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 34
    if-eqz v6, :cond_1

    .line 36
    const-string p1, "First gesture is not a tap. "

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    goto/16 :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 52
    move-result-object v2

    .line 55
    iget-boolean v5, v2, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 56
    if-eqz v5, :cond_2

    .line 58
    const-string p1, "Second gesture is not a tap. "

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    goto/16 :goto_0

    .line 72
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v2

    .line 77
    const/4 v5, 0x1

    .line 78
    sub-int/2addr v2, v5

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/MotionEvent;

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    move-result v2

    .line 89
    sub-int/2addr v2, v5

    .line 90
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 94
    check-cast p1, Landroid/view/MotionEvent;

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 97
    move-result-wide v6

    .line 100
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 101
    move-result-wide v8

    .line 104
    sub-long/2addr v6, v8

    .line 105
    iget-wide v8, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapTimeMs:J

    .line 106
    cmp-long v2, v6, v8

    .line 108
    if-lez v2, :cond_3

    .line 110
    const-string p1, "Time between taps too large: "

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const-string p1, "ms"

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 126
    move-result v2

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 130
    move-result v6

    .line 133
    sub-float/2addr v2, v6

    .line 134
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 135
    move-result v2

    .line 138
    iget v6, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    .line 139
    cmpl-float v2, v2, v6

    .line 141
    const-string v7, " vs "

    .line 143
    if-ltz v2, :cond_4

    .line 145
    const-string v2, "Delta X between taps too large:"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 152
    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 156
    move-result p1

    .line 159
    sub-float/2addr v0, p1

    .line 160
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 161
    move-result p1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 175
    move-result v2

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 179
    move-result v8

    .line 182
    sub-float/2addr v2, v8

    .line 183
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 184
    move-result v2

    .line 187
    cmpl-float v2, v2, v6

    .line 188
    if-ltz v2, :cond_5

    .line 190
    const-string v2, "Delta Y between taps too large:"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 197
    move-result v0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 201
    move-result p1

    .line 204
    sub-float/2addr v0, p1

    .line 205
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 206
    move-result p1

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    :goto_0
    const/4 v5, 0x0

    .line 219
    :cond_5
    if-nez v5, :cond_6

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 225
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 226
    move-result-object p0

    .line 229
    goto :goto_1

    .line 230
    :cond_6
    invoke-static {v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 231
    move-result-object p0

    .line 234
    :goto_1
    return-object p0
    .line 235
.end method
