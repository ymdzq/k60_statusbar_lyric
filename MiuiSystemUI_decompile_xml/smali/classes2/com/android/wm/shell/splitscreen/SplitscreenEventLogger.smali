.class public final Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDragEnterPosition:I

.field public mEnterReason:I

.field public mEnterSessionId:Lcom/android/internal/logging/InstanceId;

.field public final mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public mLastMainStagePosition:I

.field public mLastMainStageUid:I

.field public mLastSideStagePosition:I

.field public mLastSideStageUid:I

.field public mLastSplitRatio:F

.field public mLoggerSessionId:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 8
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 12
    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 16
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 19
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    .line 21
    const v1, 0x7fffffff

    .line 23
    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 29
    return-void
    .line 31
.end method

.method public static getMainStagePositionFromSplitPosition(IZ)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    if-nez p0, :cond_1

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, 0x2

    .line 13
    :goto_0
    return p0

    .line 14
    :cond_2
    if-nez p0, :cond_3

    .line 15
    const/4 p0, 0x3

    .line 17
    goto :goto_1

    .line 18
    :cond_3
    const/4 p0, 0x4

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public static getSideStagePositionFromSplitPosition(IZ)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    if-nez p0, :cond_1

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, 0x2

    .line 13
    :goto_0
    return p0

    .line 14
    :cond_2
    if-nez p0, :cond_3

    .line 15
    const/4 p0, 0x3

    .line 17
    goto :goto_1

    .line 18
    :cond_3
    const/4 p0, 0x4

    .line 19
    :goto_1
    return p0
    .line 20
.end method


# virtual methods
.method public final logEnter(FIIIIZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v4, p1

    .line 3
    move/from16 v1, p6

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 6
    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 8
    move-result-object v2

    .line 11
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 12
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 14
    const/4 v3, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eq v2, v3, :cond_5

    .line 18
    const/4 v6, 0x3

    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v2, v7, :cond_1

    .line 22
    if-eq v2, v6, :cond_0

    .line 24
    move v6, p2

    .line 26
    move v2, v5

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    const/4 v2, 0x6

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    .line 31
    if-eqz v1, :cond_3

    .line 33
    if-nez v2, :cond_2

    .line 35
    goto :goto_1

    .line 37
    :cond_2
    const/4 v7, 0x4

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-nez v2, :cond_4

    .line 40
    goto :goto_0

    .line 42
    :cond_4
    const/4 v6, 0x5

    .line 43
    :goto_0
    move v7, v6

    .line 44
    :goto_1
    move v6, p2

    .line 45
    move v2, v7

    .line 46
    goto :goto_3

    .line 47
    :cond_5
    const/4 v2, 0x7

    .line 48
    :goto_2
    move v6, p2

    .line 49
    :goto_3
    invoke-static {p2, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 50
    move-result v6

    .line 53
    move/from16 v7, p3

    .line 54
    invoke-virtual {p0, v6, v7}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    .line 56
    move/from16 v6, p4

    .line 59
    invoke-static {v6, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 61
    move-result v1

    .line 64
    move/from16 v6, p5

    .line 65
    invoke-virtual {p0, v1, v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    .line 67
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    goto :goto_4

    .line 78
    :cond_6
    move v3, v5

    .line 79
    :goto_4
    if-nez v3, :cond_7

    .line 80
    goto :goto_5

    .line 82
    :cond_7
    iput v4, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 83
    :goto_5
    const/16 v1, 0x184

    .line 85
    const/4 v3, 0x1

    .line 87
    const/4 v6, 0x0

    .line 88
    iget v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 89
    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 91
    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 93
    iget v10, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 95
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 97
    if-eqz v11, :cond_8

    .line 99
    invoke-virtual {v11}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 101
    move-result v5

    .line 104
    :cond_8
    move v11, v5

    .line 105
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 106
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 108
    move-result v12

    .line 111
    move v0, v1

    .line 112
    move v1, v3

    .line 113
    move v3, v6

    .line 114
    move v4, p1

    .line 115
    move v5, v7

    .line 116
    move v6, v8

    .line 117
    move v7, v9

    .line 118
    move v8, v10

    .line 119
    move v9, v11

    .line 120
    move v10, v12

    .line 121
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 122
    return-void
    .line 125
.end method

.method public final logExit(IIIIIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p4

    .line 8
    move/from16 v4, p6

    .line 10
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 12
    if-nez v5, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    const/4 v5, -0x1

    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    if-ne v3, v5, :cond_2

    .line 20
    :cond_1
    if-eqz p3, :cond_3

    .line 22
    if-nez p5, :cond_2

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v1, "Only main or side stage should be set"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0

    .line 34
    :cond_3
    :goto_0
    const/16 v6, 0x184

    .line 35
    const/4 v7, 0x2

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v15, 0x0

    .line 39
    packed-switch v1, :pswitch_data_0

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    const-string v10, "Unknown exit reason: "

    .line 45
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    const-string v9, "SplitscreenEventLogger"

    .line 57
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    move v9, v15

    .line 62
    goto :goto_2

    .line 63
    :pswitch_0
    const/16 v1, 0xb

    .line 64
    goto :goto_1

    .line 66
    :pswitch_1
    const/16 v1, 0xa

    .line 67
    goto :goto_1

    .line 69
    :pswitch_2
    const/16 v1, 0x9

    .line 70
    goto :goto_1

    .line 72
    :pswitch_3
    const/4 v1, 0x4

    .line 73
    goto :goto_1

    .line 74
    :pswitch_4
    const/4 v1, 0x3

    .line 75
    goto :goto_1

    .line 76
    :pswitch_5
    const/4 v1, 0x6

    .line 77
    goto :goto_1

    .line 78
    :pswitch_6
    const/4 v1, 0x2

    .line 79
    goto :goto_1

    .line 80
    :pswitch_7
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :pswitch_8
    const/4 v1, 0x5

    .line 83
    goto :goto_1

    .line 84
    :pswitch_9
    const/4 v1, 0x7

    .line 85
    goto :goto_1

    .line 86
    :pswitch_a
    const/16 v1, 0x8

    .line 87
    :goto_1
    move v9, v1

    .line 89
    :goto_2
    const/4 v10, 0x0

    .line 90
    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 91
    move-result v11

    .line 94
    invoke-static {v3, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 95
    move-result v13

    .line 98
    const/4 v1, 0x0

    .line 99
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 100
    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 102
    move-result v16

    .line 105
    move/from16 v12, p3

    .line 106
    move/from16 v14, p5

    .line 108
    move v2, v15

    .line 110
    move v15, v1

    .line 111
    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 112
    const/4 v1, 0x0

    .line 115
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 116
    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    .line 118
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 120
    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 122
    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 124
    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 126
    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 128
    iput v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 130
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 134
.end method

.method public final logSwap(IIIIZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 3
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 5
    if-nez v2, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    move v2, p1

    .line 10
    invoke-static {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 11
    move-result v2

    .line 14
    move v3, p2

    .line 15
    invoke-virtual {p0, v2, p2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    .line 16
    move/from16 v2, p3

    .line 19
    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 21
    move-result v1

    .line 24
    move/from16 v2, p4

    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    .line 27
    const/16 v2, 0x184

    .line 30
    const/4 v3, 0x5

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    iget v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 36
    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 38
    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 40
    iget v10, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 42
    const/4 v11, 0x0

    .line 44
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 47
    move-result v12

    .line 50
    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 51
    return-void
    .line 54
.end method

.method public final updateMainStageState(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, p1, :cond_1

    .line 6
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 8
    if-eq v0, p2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    if-nez v0, :cond_2

    .line 16
    return v1

    .line 18
    :cond_2
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 19
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 21
    return v2
    .line 23
.end method

.method public final updateSideStageState(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, p1, :cond_1

    .line 6
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 8
    if-eq v0, p2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    if-nez v0, :cond_2

    .line 16
    return v1

    .line 18
    :cond_2
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 19
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 21
    return v2
    .line 23
.end method
