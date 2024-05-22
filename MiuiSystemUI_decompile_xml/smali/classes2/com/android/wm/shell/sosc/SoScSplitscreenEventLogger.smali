.class public Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mDragEnterPosition:I

.field private mEnterReason:I

.field private mEnterSessionId:Lcom/android/internal/logging/InstanceId;

.field private final mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field private mLastMainStagePosition:I

.field private mLastMainStageUid:I

.field private mLastSideStagePosition:I

.field private mLastSideStageUid:I

.field private mLastSplitRatio:F

.field private mLoggerSessionId:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 8
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 12
    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSplitRatio:F

    .line 16
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterReason:I

    .line 19
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    .line 21
    const v1, 0x7fffffff

    .line 23
    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 29
    return-void
    .line 31
.end method

.method private getLoggerEnterReason(Z)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterReason:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 p0, 0x3

    .line 10
    if-eq v0, p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x6

    .line 15
    return p0

    .line 16
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mDragEnterPosition:I

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getDragEnterReasonFromSplitPosition(IZ)I

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_2
    const/4 p0, 0x7

    .line 24
    return p0
    .line 25
.end method

.method private getLoggerExitReason(I)I
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "Unknown exit reason: "

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    const-string p1, "SoScSplitscreenEventLogger"

    .line 19
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :pswitch_0
    const/16 p0, 0xb

    .line 26
    return p0

    .line 28
    :pswitch_1
    const/16 p0, 0xa

    .line 29
    return p0

    .line 31
    :pswitch_2
    const/16 p0, 0x9

    .line 32
    return p0

    .line 34
    :pswitch_3
    const/4 p0, 0x4

    .line 35
    return p0

    .line 36
    :pswitch_4
    const/4 p0, 0x3

    .line 37
    return p0

    .line 38
    :pswitch_5
    const/4 p0, 0x6

    .line 39
    return p0

    .line 40
    :pswitch_6
    const/4 p0, 0x2

    .line 41
    return p0

    .line 42
    :pswitch_7
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :pswitch_8
    const/4 p0, 0x5

    .line 45
    return p0

    .line 46
    :pswitch_9
    const/4 p0, 0x7

    .line 47
    return p0

    .line 48
    :pswitch_a
    const/16 p0, 0x8

    .line 49
    return p0

    .line 51
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
    .line 52
.end method

.method private getMainStagePositionFromSplitPosition(IZ)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    if-eqz p2, :cond_2

    .line 7
    if-nez p1, :cond_1

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
    if-nez p1, :cond_3

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

.method private getSideStagePositionFromSplitPosition(IZ)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    if-eqz p2, :cond_2

    .line 7
    if-nez p1, :cond_1

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
    if-nez p1, :cond_3

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

.method private updateMainStageState(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, p1, :cond_1

    .line 6
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

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
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 19
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 21
    return v2
    .line 23
.end method

.method private updateSideStageState(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, p1, :cond_1

    .line 6
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

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
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 19
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 21
    return v2
    .line 23
.end method

.method private updateSplitRatioState(F)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSplitRatio:F

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    return v2

    .line 17
    :cond_1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSplitRatio:F

    .line 18
    return v1
    .line 20
.end method


# virtual methods
.method public enterRequested(Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterReason:I

    .line 4
    return-void
    .line 6
.end method

.method public enterRequestedByDrag(ILcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mDragEnterPosition:I

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->enterRequested(Lcom/android/internal/logging/InstanceId;I)V

    .line 5
    return-void
    .line 8
.end method

.method public getDragEnterReasonFromSplitPosition(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p0, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x4

    .line 8
    :goto_0
    return p0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    const/4 p0, 0x3

    .line 12
    goto :goto_1

    .line 13
    :cond_2
    const/4 p0, 0x5

    .line 14
    :goto_1
    return p0
    .line 15
.end method

.method public hasStartedSession()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    if-eqz p0, :cond_0

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

.method public hasValidEnterSessionId()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    if-eqz p0, :cond_0

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

.method public isEnterRequestedByDrag()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterReason:I

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

.method public logEnter(FIIIIZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p6

    .line 3
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 5
    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 7
    move-result-object v2

    .line 10
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 11
    invoke-direct {p0, v1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getLoggerEnterReason(Z)I

    .line 13
    move-result v5

    .line 16
    move/from16 v2, p2

    .line 17
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 19
    move-result v2

    .line 22
    move/from16 v3, p3

    .line 23
    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateMainStageState(II)Z

    .line 25
    move/from16 v2, p4

    .line 28
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 30
    move-result v1

    .line 33
    move/from16 v2, p5

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateSideStageState(II)Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateSplitRatioState(F)Z

    .line 39
    const/16 v3, 0x184

    .line 42
    const/4 v4, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    iget v8, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 46
    iget v9, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 48
    iget v10, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 50
    iget v11, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 52
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 54
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 58
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    move v12, v1

    .line 64
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 65
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 67
    move-result v13

    .line 70
    move v7, p1

    .line 71
    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 72
    return-void
    .line 75
.end method

.method public logExit(IIIIIZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v2, p4

    .line 6
    move/from16 v3, p6

    .line 8
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 10
    if-nez v4, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    const/4 v4, -0x1

    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    if-ne v2, v4, :cond_2

    .line 18
    :cond_1
    if-eqz p3, :cond_3

    .line 20
    if-nez p5, :cond_2

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v1, "Only main or side stage should be set"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 32
    :cond_3
    :goto_0
    const/16 v5, 0x184

    .line 33
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getLoggerExitReason(I)I

    .line 37
    move-result v8

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 42
    move-result v10

    .line 45
    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 46
    move-result v12

    .line 49
    const/4 v14, 0x0

    .line 50
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 51
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 53
    move-result v15

    .line 56
    move/from16 v11, p3

    .line 57
    move/from16 v13, p5

    .line 59
    invoke-static/range {v5 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 61
    const/4 v1, 0x0

    .line 64
    iput-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 65
    iput v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mDragEnterPosition:I

    .line 67
    iput-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 69
    iput v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 71
    iput v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 73
    iput v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 75
    iput v4, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 77
    const/4 v1, 0x0

    .line 79
    iput v1, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mEnterReason:I

    .line 80
    return-void
    .line 82
.end method

.method public logMainStageAppChange(IIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 7
    move-result p1

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateMainStageState(II)Z

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    const/16 v0, 0x184

    .line 18
    const/4 v1, 0x3

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    iget v5, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 24
    iget v6, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 26
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 33
    move-result v10

    .line 36
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 37
    return-void
    .line 40
.end method

.method public logResize(F)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    cmpg-float v0, p1, v0

    .line 8
    if-lez v0, :cond_3

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    cmpl-float v0, p1, v0

    .line 14
    if-ltz v0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateSplitRatioState(F)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 25
    :cond_2
    const/16 v0, 0x184

    .line 26
    const/4 v1, 0x4

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    iget v4, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSplitRatio:F

    .line 31
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 40
    move-result v10

    .line 43
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 44
    :cond_3
    :goto_0
    return-void
    .line 47
.end method

.method public logSideStageAppChange(IIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 7
    move-result p1

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateSideStageState(II)Z

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    const/16 v0, 0x184

    .line 18
    const/4 v1, 0x3

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    iget v7, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 26
    iget v8, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 28
    const/4 v9, 0x0

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 33
    move-result v10

    .line 36
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 37
    return-void
    .line 40
.end method

.method public logSwap(IIIIZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 3
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 5
    if-nez v2, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    move v2, p1

    .line 10
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 11
    move-result v2

    .line 14
    move v3, p2

    .line 15
    invoke-direct {p0, v2, p2}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateMainStageState(II)Z

    .line 16
    move/from16 v2, p3

    .line 19
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 21
    move-result v1

    .line 24
    move/from16 v2, p4

    .line 25
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->updateSideStageState(II)Z

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
    iget v7, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStagePosition:I

    .line 36
    iget v8, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastMainStageUid:I

    .line 38
    iget v9, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStagePosition:I

    .line 40
    iget v10, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLastSideStageUid:I

    .line 42
    const/4 v11, 0x0

    .line 44
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

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
