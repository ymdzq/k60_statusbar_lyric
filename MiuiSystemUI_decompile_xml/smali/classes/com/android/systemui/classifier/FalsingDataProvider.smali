.class public final Lcom/android/systemui/classifier/FalsingDataProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mA11YAction:Z

.field public mAngle:F

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mDirty:Z

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDropLastEvent:Z

.field public mFirstRecentMotionEvent:Landroid/view/MotionEvent;

.field public final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final mGestureFinalizedListeners:Ljava/util/List;

.field public final mHeightPixels:I

.field public final mIsFoldableDevice:Z

.field public mJustUnlockedWithFace:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public final mMotionEventListeners:Ljava/util/List;

.field public mPriorMotionEvents:Ljava/util/List;

.field public mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

.field public final mSessionListeners:Ljava/util/List;

.field public final mWidthPixels:I

.field public final mXdpi:F

.field public final mYdpi:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;Lcom/android/systemui/dock/DockManager;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 26
    invoke-direct {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    .line 41
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 44
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 46
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    .line 48
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 50
    iput v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    .line 52
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    iput v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    .line 56
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    iput p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    .line 60
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 64
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 66
    iput-boolean p5, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mIsFoldableDevice:Z

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo p2, "xdpi, ydpi: "

    .line 72
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    const-string p2, ", "

    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo p3, "width, height: "

    .line 98
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 117
    return-void
    .line 120
.end method


# virtual methods
.method public final completePriorGesture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    .line 10
    new-instance v1, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 27
    invoke-direct {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    .line 37
    return-void
    .line 39
.end method

.method public final getRecentMotionEvents()Ljava/util/List;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 17
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->subList(II)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 29
    return-object p0
    .line 31
.end method

.method public final isHorizontal()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 15
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 17
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 21
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v2

    .line 26
    sub-float/2addr v0, v2

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result v0

    .line 31
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 32
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 34
    move-result v2

    .line 37
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 38
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 40
    move-result p0

    .line 43
    sub-float/2addr v2, p0

    .line 44
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result p0

    .line 48
    cmpl-float p0, v0, p0

    .line 49
    if-lez p0, :cond_1

    .line 51
    const/4 v1, 0x1

    .line 53
    :cond_1
    return v1
    .line 54
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 16
    move-result v15

    .line 19
    const/4 v14, 0x0

    .line 20
    move v4, v14

    .line 21
    :goto_0
    if-ge v4, v15, :cond_0

    .line 22
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    .line 24
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 26
    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v4

    .line 41
    new-array v13, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 42
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 47
    move-result v3

    .line 50
    move v12, v14

    .line 51
    :goto_1
    if-ge v12, v3, :cond_2

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    move v5, v14

    .line 59
    :goto_2
    if-ge v5, v15, :cond_1

    .line 60
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    .line 62
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 64
    invoke-virtual {v1, v5, v12, v6}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 67
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 73
    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 76
    move-result-wide v5

    .line 79
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 80
    move-result-wide v7

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 84
    move-result v9

    .line 87
    new-array v10, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 88
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 93
    move-object v11, v4

    .line 94
    check-cast v11, [Landroid/view/MotionEvent$PointerCoords;

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 97
    move-result v16

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 101
    move-result v17

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 105
    move-result v18

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 109
    move-result v19

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 113
    move-result v20

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 117
    move-result v21

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 121
    move-result v22

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 125
    move-result v23

    .line 128
    move-wide v4, v5

    .line 129
    move-wide v6, v7

    .line 130
    move v8, v9

    .line 131
    move v9, v15

    .line 132
    move-object v10, v13

    .line 133
    move/from16 v24, v12

    .line 134
    move/from16 v12, v16

    .line 136
    move-object/from16 v25, v13

    .line 138
    move/from16 v13, v17

    .line 140
    move/from16 v26, v3

    .line 142
    move v3, v14

    .line 144
    move/from16 v14, v18

    .line 145
    move/from16 v27, v15

    .line 147
    move/from16 v15, v19

    .line 149
    move/from16 v16, v20

    .line 151
    move/from16 v17, v21

    .line 153
    move/from16 v18, v22

    .line 155
    move/from16 v19, v23

    .line 157
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 159
    move-result-object v4

    .line 162
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v12, v24, 0x1

    .line 166
    move v14, v3

    .line 168
    move-object/from16 v13, v25

    .line 169
    move/from16 v3, v26

    .line 171
    move/from16 v15, v27

    .line 173
    goto :goto_1

    .line 175
    :cond_2
    move v3, v14

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 177
    move-result-object v4

    .line 180
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 184
    sget-boolean v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 187
    if-eqz v4, :cond_3

    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    move-result-object v4

    .line 194
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    move-result v5

    .line 198
    if-eqz v5, :cond_3

    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    move-result-object v5

    .line 204
    check-cast v5, Landroid/view/MotionEvent;

    .line 205
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    .line 207
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 210
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    .line 213
    sget-boolean v5, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 216
    goto :goto_3

    .line 218
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 219
    move-result v4

    .line 222
    if-nez v4, :cond_4

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->completePriorGesture()V

    .line 225
    :cond_4
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 228
    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 230
    move-result v4

    .line 233
    const/4 v5, 0x3

    .line 234
    const/4 v14, 0x1

    .line 235
    if-ge v4, v5, :cond_5

    .line 236
    goto :goto_6

    .line 238
    :cond_5
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 239
    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 241
    move-result v5

    .line 244
    sub-int/2addr v5, v14

    .line 245
    iget-object v4, v4, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->mMotionEvents:Ljava/util/List;

    .line 246
    check-cast v4, Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    move-result-object v4

    .line 253
    check-cast v4, Landroid/view/MotionEvent;

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 256
    move-result v5

    .line 259
    if-ne v5, v14, :cond_6

    .line 260
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 262
    move-result v5

    .line 265
    const/4 v6, 0x2

    .line 266
    if-ne v5, v6, :cond_6

    .line 267
    move v5, v14

    .line 269
    goto :goto_4

    .line 270
    :cond_6
    move v5, v3

    .line 271
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 272
    move-result-wide v6

    .line 275
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 276
    move-result-wide v8

    .line 279
    sub-long/2addr v6, v8

    .line 280
    const-wide/16 v8, 0x32

    .line 281
    cmp-long v4, v6, v8

    .line 283
    if-gez v4, :cond_7

    .line 285
    move v4, v14

    .line 287
    goto :goto_5

    .line 288
    :cond_7
    move v4, v3

    .line 289
    :goto_5
    if-eqz v5, :cond_8

    .line 290
    if-eqz v4, :cond_8

    .line 292
    move v4, v14

    .line 294
    goto :goto_7

    .line 295
    :cond_8
    :goto_6
    move v4, v3

    .line 296
    :goto_7
    iput-boolean v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    .line 297
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 299
    invoke-virtual {v4, v2}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v2, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 304
    invoke-virtual {v2}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 306
    sget-boolean v2, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 309
    iget-object v2, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    .line 311
    new-instance v4, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;

    .line 313
    invoke-direct {v4, v3, v1}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 315
    check-cast v2, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 320
    iput-boolean v14, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    .line 323
    return-void
    .line 325
.end method

.method public final recalculateData()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Landroid/view/MotionEvent;

    .line 28
    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/MotionEvent;

    .line 42
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 48
    move-result v0

    .line 51
    const/4 v1, 0x2

    .line 52
    if-ge v0, v1, :cond_2

    .line 53
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 55
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 58
    goto :goto_3

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 61
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 63
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 67
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 69
    move-result v1

    .line 72
    sub-float/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 74
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 76
    move-result v1

    .line 79
    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 80
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    .line 82
    move-result v3

    .line 85
    sub-float/2addr v1, v3

    .line 86
    float-to-double v3, v1

    .line 87
    float-to-double v0, v0

    .line 88
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 89
    move-result-wide v0

    .line 92
    double-to-float v0, v0

    .line 93
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 94
    :goto_1
    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 96
    const/4 v1, 0x0

    .line 98
    cmpg-float v1, v0, v1

    .line 99
    const v3, 0x40c90fdb

    .line 101
    if-gez v1, :cond_3

    .line 104
    add-float/2addr v0, v3

    .line 106
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 107
    goto :goto_1

    .line 109
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 110
    cmpl-float v1, v0, v3

    .line 112
    if-lez v1, :cond_4

    .line 114
    sub-float/2addr v0, v3

    .line 116
    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 117
    goto :goto_2

    .line 119
    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    .line 120
    return-void
    .line 122
.end method
