.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mHasChildren:Z

.field public mHasRootTask:Z

.field public mTaskId:I

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "mHasRootTask="

    .line 2
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 8
    const-string v2, "mVisible="

    .line 10
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 16
    const-string v2, "mHasChildren="

    .line 18
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p2

    .line 23
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 24
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 26
    return-void
    .line 29
.end method

.method public final onChildTaskStatusChanged(IZZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iput v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mTaskId:I

    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 8
    const/4 v3, 0x1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 13
    if-ne v0, v4, :cond_0

    .line 15
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, -0x1

    .line 21
    :goto_0
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 22
    if-nez v0, :cond_4

    .line 24
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 26
    move-result v5

    .line 29
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 30
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 32
    move-result v6

    .line 35
    iget-object v7, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 36
    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 38
    move-result v7

    .line 41
    iget-object v8, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 42
    if-nez v8, :cond_2

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v5, v7}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 47
    move-result v5

    .line 50
    invoke-virtual {v4, v5, v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    .line 51
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    goto :goto_1

    .line 57
    :cond_3
    const/16 v6, 0x184

    .line 58
    const/4 v7, 0x3

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    iget v11, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 64
    iget v12, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 66
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 71
    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 73
    move-result v16

    .line 76
    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 77
    goto :goto_1

    .line 80
    :cond_4
    iget v5, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 81
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 83
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 85
    move-result v6

    .line 88
    iget-object v7, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 89
    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 91
    move-result v7

    .line 94
    iget-object v8, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 95
    if-nez v8, :cond_5

    .line 97
    goto :goto_1

    .line 99
    :cond_5
    invoke-static {v5, v7}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 100
    move-result v5

    .line 103
    invoke-virtual {v4, v5, v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    .line 104
    move-result v5

    .line 107
    if-nez v5, :cond_6

    .line 108
    goto :goto_1

    .line 110
    :cond_6
    const/16 v6, 0x184

    .line 111
    const/4 v7, 0x3

    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v11, 0x0

    .line 117
    const/4 v12, 0x0

    .line 118
    iget v13, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 119
    iget v14, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 121
    const/4 v15, 0x0

    .line 123
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 124
    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 126
    move-result v16

    .line 129
    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 130
    :goto_1
    if-eqz p2, :cond_7

    .line 133
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 135
    :cond_7
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 138
    check-cast v2, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v4

    .line 145
    sub-int/2addr v4, v3

    .line 146
    :goto_2
    if-ltz v4, :cond_8

    .line 147
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v3

    .line 152
    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 153
    move/from16 v5, p3

    .line 155
    invoke-interface {v3, v1, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    .line 157
    add-int/lit8 v4, v4, -0x1

    .line 160
    goto :goto_2

    .line 162
    :cond_8
    return-void
    .line 163
.end method
