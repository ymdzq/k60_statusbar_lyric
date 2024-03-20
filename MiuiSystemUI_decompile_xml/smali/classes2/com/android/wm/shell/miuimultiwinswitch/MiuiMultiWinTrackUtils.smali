.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dtkTrackFullScreenToFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p0, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 11
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 17
    move-result-object p1

    .line 20
    const-string/jumbo p2, "\u5168\u5c4f\u8fdb\u5165\u5c0f\u7a97"

    .line 21
    iput-object p2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 24
    iput-object p0, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 26
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 32
    :cond_1
    :goto_0
    return-void
    .line 35
.end method

.method public static dtkTrackStateCloseFromFullOrFreeForm(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-eqz p1, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 9
    invoke-direct {p3, p2, p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;)V

    .line 11
    invoke-static {p3}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 14
    move-result-object p2

    .line 17
    const-string/jumbo p3, "\u5173\u95ed\u5168\u5c4f\u5e94\u7528"

    .line 18
    iput-object p3, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 29
    iput-object p0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 31
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method

.method private static getCurrentHotAreaWindowState(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    const-string/jumbo p0, "\u5168\u5c4f"

    .line 12
    return-object p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x5

    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    const-string/jumbo p0, "\u5c0f\u7a97"

    .line 23
    return-object p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_4

    .line 32
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    const-string/jumbo p0, "\u5de6\u5206\u5c4f"

    .line 44
    return-object p0

    .line 47
    :cond_3
    const-string/jumbo p0, "\u4e0a\u5206\u5c4f"

    .line 48
    return-object p0

    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 52
    move-result p0

    .line 55
    const/4 v1, 0x2

    .line 56
    if-ne p0, v1, :cond_6

    .line 57
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 63
    move-result p0

    .line 66
    if-eqz p0, :cond_5

    .line 67
    const-string/jumbo p0, "\u53f3\u5206\u5c4f"

    .line 69
    return-object p0

    .line 72
    :cond_5
    const-string/jumbo p0, "\u4e0b\u5206\u5c4f"

    .line 73
    return-object p0

    .line 76
    :cond_6
    return-object v0
    .line 77
.end method

.method private static getCurrentSplitWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const-string/jumbo v1, "\u5de6\u5206\u5c4f"

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 27
    move-result p0

    .line 30
    if-eqz p0, :cond_3

    .line 31
    const-string/jumbo v1, "\u53f3\u5206\u5c4f"

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    const-string/jumbo v1, "\u4e0a\u5206\u5c4f"

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    const-string/jumbo v1, "\u4e0b\u5206\u5c4f"

    .line 57
    :cond_3
    :goto_0
    return-object v1
    .line 60
.end method

.method private static getCurrentWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    const-string/jumbo p0, "\u5168\u5c4f"

    .line 13
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x5

    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    const-string/jumbo p0, "\u5c0f\u7a97"

    .line 24
    return-object p0

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 28
    move-result v1

    .line 31
    const/4 v2, 0x6

    .line 32
    if-ne v1, v2, :cond_3

    .line 33
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getCurrentSplitWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_3
    return-object v0
    .line 40
.end method

.method private static getIconDragType(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string/jumbo p0, "\u5168\u641c\u5e94\u7528\u62d6\u62fd"

    .line 13
    return-object p0

    .line 16
    :cond_1
    const-string/jumbo p0, "\u4fa7\u8fb9\u680f\u5e94\u7528\u62d6\u62fd"

    .line 17
    return-object p0

    .line 20
    :cond_2
    const-string p0, "Dock\u5e94\u7528\u62d6\u62fd"

    .line 21
    return-object p0
    .line 23
.end method

.method private static getSplitEnterWay(Z)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const-string/jumbo p0, "\u5de6\u5206\u5c4f"

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "\u4e0a\u5206\u5c4f"

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 27
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    const-string/jumbo p0, "\u53f3\u5206\u5c4f"

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo p0, "\u4e0b\u5206\u5c4f"

    .line 37
    :goto_0
    return-object p0
    .line 40
.end method

.method private static getSplitLeftOrTopState()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "\u5de6\u5206\u5c4f"

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "\u4e0a\u5206\u5c4f"

    .line 17
    :goto_0
    return-object v0
    .line 20
.end method

.method private static getSplitRightOrBottomState()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "\u53f3\u5206\u5c4f"

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "\u4e0b\u5206\u5c4f"

    .line 17
    :goto_0
    return-object v0
    .line 20
.end method

.method private static getSplitWindowStateByDrag(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo p0, "\u5de6\u5206\u5c4f"

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    const-string/jumbo p0, "\u53f3\u5206\u5c4f"

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
    .line 27
.end method

.method private static getTargetSplitLeftRightState(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const-string/jumbo p0, "\u5de6\u5206\u5c4f"

    .line 4
    return-object p0

    .line 7
    :cond_0
    const-string/jumbo p0, "\u53f3\u5206\u5c4f"

    .line 8
    return-object p0
    .line 11
.end method

.method public static trackDockIconDrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-eqz p1, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 13
    move-result-object v0

    .line 16
    move-object v1, p1

    .line 17
    move-object v3, p2

    .line 18
    move v4, p3

    .line 19
    move-object v5, p4

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackDockIconDrag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 21
    :cond_1
    :goto_0
    return-void
    .line 24
.end method

.method private static trackEnterFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p0, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    invoke-static {p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 24
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 25
    move-result-object v1

    .line 28
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v6

    .line 38
    move-object v4, p3

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterFreeform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public static trackEnterFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method public static trackEnterFreeformByIconDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;I)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getIconDragType(I)Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method

.method public static trackEnterFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u7a97\u53e3\u62d6\u62fd"

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method public static trackEnterFullSplitByExistReplace(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V
    .locals 6

    .line 1
    if-eqz p1, :cond_3

    .line 2
    if-eqz p0, :cond_3

    .line 4
    if-eqz p2, :cond_3

    .line 6
    if-nez p3, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitEnterWay(Z)Ljava/lang/String;

    .line 11
    move-result-object p3

    .line 14
    if-nez p3, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    if-eqz p5, :cond_2

    .line 18
    const-string/jumbo p4, "\u63a7\u5236\u5668"

    .line 20
    goto :goto_0

    .line 23
    :cond_2
    const-string/jumbo p4, "\u7a97\u53e3\u62d6\u62fd"

    .line 24
    :goto_0
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 30
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    invoke-static {p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterFullSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_3
    :goto_1
    return-void
    .line 54
.end method

.method public static trackEnterFullSplitByIconDragReplace(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    if-eqz p0, :cond_5

    .line 4
    if-eqz p2, :cond_5

    .line 6
    if-nez p3, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    invoke-static {p4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitEnterWay(Z)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    invoke-static {p5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getIconDragType(I)Ljava/lang/String;

    .line 18
    move-result-object p5

    .line 21
    if-nez p5, :cond_2

    .line 22
    return-void

    .line 24
    :cond_2
    invoke-virtual {p5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v6

    .line 28
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 36
    invoke-static {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p5

    .line 40
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 44
    invoke-static {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    if-eqz p4, :cond_3

    .line 49
    move-object v4, p3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v4, p2

    .line 53
    :goto_0
    if-eqz p4, :cond_4

    .line 54
    move-object v5, p0

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move-object v5, p5

    .line 58
    :goto_1
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 59
    move-result-object v1

    .line 62
    move-object v2, p1

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterFullSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_5
    :goto_2
    return-void
    .line 67
.end method

.method private static trackEnterFullSplitFromSingle(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-static {p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 22
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 23
    move-result-object v0

    .line 26
    move-object v5, p3

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterFullSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public static trackEnterFullSplitFromSingleByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    .line 1
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitEnterWay(Z)Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p3

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingle(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method

.method private static trackEnterFullSplitFromSingleByIconDrag(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    move-result-object v0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterFullSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static trackEnterFullSplitFromSingleByIconDrag(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 0

    .line 5
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getTargetSplitLeftRightState(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getIconDragType(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByIconDrag(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEnterFullSplitFromSingleByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    .line 1
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getTargetSplitLeftRightState(Z)Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "\u7a97\u53e3\u62d6\u62fd"

    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p3

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingle(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method

.method private static trackEnterSingleOpen(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p0, p2}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterSingleOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_0
    return-void
    .line 22
.end method

.method public static trackEnterSingleOpenByControl(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getCurrentSplitWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpen(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method

.method public static trackEnterSingleOpenByIconDrag(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getIconDragType(I)Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object p2

    .line 12
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getTargetSplitLeftRightState(Z)Ljava/lang/String;

    .line 13
    move-result-object p3

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 23
    if-eqz p1, :cond_2

    .line 24
    if-nez p0, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 33
    move-result-object p3

    .line 36
    invoke-virtual {p3, p1, p0, p2}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEnterSingleOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    :goto_0
    return-void
    .line 40
.end method

.method public static trackEnterSingleOpenByWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitWindowStateByDrag(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "\u7a97\u53e3\u62d6\u62fd"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpen(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method

.method public static trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_2

    .line 2
    if-eqz p0, :cond_2

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getCurrentSplitWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p2, p1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_0
    return-void
    .line 19
.end method

.method private static trackQuitFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p0, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 11
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitFreeFormReason:Ljava/lang/String;

    .line 17
    :cond_1
    :goto_0
    return-void
    .line 19
.end method

.method public static trackQuitFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method public static trackQuitFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u7a97\u53e3\u62d6\u62fd"

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method private static trackQuitSplit(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->getSingleModeRunningDuration()F

    .line 23
    move-result v1

    .line 26
    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackQuitSingleOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method public static trackQuitSplitByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplit(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method public static trackQuitSplitByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "\u7a97\u53e3\u62d6\u62fd"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplit(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method public static trackSideBarIconDrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-eqz p1, :cond_1

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 13
    move-result-object v0

    .line 16
    move-object v1, p1

    .line 17
    move-object v3, p2

    .line 18
    move v4, p3

    .line 19
    move-object v5, p4

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackSideBarIconDrag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 21
    :cond_1
    :goto_0
    return-void
    .line 24
.end method

.method public static trackSplitLOTToLOTByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "\u5de6\u5206\u5c4f"

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "\u4e0a\u5206\u5c4f"

    .line 17
    :goto_0
    invoke-static {p0, p1, v0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method

.method public static trackSwapToLOTStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "\u53f3\u5206\u5c4f"

    .line 13
    const-string/jumbo v1, "\u5de6\u5206\u5c4f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v0, "\u4e0b\u5206\u5c4f"

    .line 20
    const-string/jumbo v1, "\u4e0a\u5206\u5c4f"

    .line 23
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
    .line 29
.end method

.method public static trackSwapToROBStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "\u5de6\u5206\u5c4f"

    .line 13
    const-string/jumbo v1, "\u53f3\u5206\u5c4f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v0, "\u4e0a\u5206\u5c4f"

    .line 20
    const-string/jumbo v1, "\u4e0b\u5206\u5c4f"

    .line 23
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
    .line 29
.end method

.method public static trackToSplitLOTStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitLeftOrTopState()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public static trackToSplitROBStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getSplitRightOrBottomState()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public static trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackControllerFunctionClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_0
    return-void
    .line 22
.end method

.method public static trackWindowControlExpose(ZZZZZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string/jumbo v1, "\u5168\u5c4f"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    if-nez p4, :cond_1

    .line 13
    if-eqz p1, :cond_1

    .line 15
    if-eqz p3, :cond_0

    .line 17
    const-string/jumbo p1, "\u5de6\u5206\u5c4f"

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string/jumbo p1, "\u53f3\u5206\u5c4f"

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo p1, "\u4e0a\u5206\u5c4f"

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo p1, "\u4e0b\u5206\u5c4f"

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 44
    const-string/jumbo p1, "\u5c0f\u7a97"

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    if-eqz p0, :cond_3

    .line 52
    const-string/jumbo p0, "\u5e94\u7528\u591a\u5f00"

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    const-string/jumbo p0, "\u5173\u95ed"

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 66
    move-result-object p0

    .line 69
    const-string p1, ","

    .line 70
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 72
    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p1, p5, p0}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackControllerFunctionExpose(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
    .line 89
.end method

.method public static trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_2

    .line 2
    if-eqz p0, :cond_2

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getCurrentWindowState(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    invoke-static {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->getCurrentHotAreaWindowState(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 19
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 28
    move-result-object v0

    .line 31
    move v5, p4

    .line 32
    move-object v6, p5

    .line 33
    invoke-virtual/range {v0 .. v6}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackWindowDrag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 34
    :cond_2
    :goto_0
    return-void
    .line 37
.end method
