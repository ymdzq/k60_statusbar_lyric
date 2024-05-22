.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeTaskRepository"


# instance fields
.field private lastCloseFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field private mActiveListener:Ljava/util/List;

.field public mAvoidTasksPending:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

.field private mFreeformTasksInZOrder:Ljava/util/ArrayList;

.field private mFullscreenToFreeformTaskList:Ljava/util/ArrayList;

.field private mRectWaitForAutoLayout:Landroid/util/SparseArray;

.field private final mTasks:Landroid/util/SparseArray;

.field private mTempFullScreenTaskInfoList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$2H7BBFbYW7gfA__Zm0DMNd68yQQ(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskVanished$2(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$N_8nXs5OL13HrtyDa6s5ofASB7g(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskModeChanged$3(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$NgMCakHYzxP5wfA2KGyT9h0G62U(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskAppeared$1(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$RdXa9H8AfHv5hwT_t0SPb9kdEZ8(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskAppeared$0(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$YNl5PIsmeB9BMDIDCWn3c1WlHBY(ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onDesktopModeChanged$7(ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_-H6ahl3x224nOJqidnnbZ4lKXc(IILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskStateChanged$5(IILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$cqJKkbbVUkIkQ7FnGx0MfHuVuIE(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskOperatorChanged$6(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$yD9VGuwn6YQtQvH9qDqE3wtOaSc(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lambda$onTaskModeChanged$4(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mAvoidTasksPending:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFullscreenToFreeformTaskList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mRectWaitForAutoLayout:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    .line 54
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 59
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lastCloseFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 62
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mContext:Landroid/content/Context;

    .line 64
    return-void
    .line 66
.end method

.method private static synthetic lambda$onDesktopModeChanged$7(ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onDesktopModeChanged(Z)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskAppeared$0(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskAppeared(I)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskAppeared$1(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskModeChanged$3(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, p0, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 3
    return-void
    .line 6
.end method

.method private static synthetic lambda$onTaskModeChanged$4(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskOperatorChanged$6(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskStateChanged$5(IILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskStateChanged(IILandroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onTaskVanished$2(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onTaskVanished(I)V

    .line 2
    return-void
    .line 5
.end method

.method private onTaskAppeared(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onTaskVanished(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda2;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda2;-><init>(II)V

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public addActiveTaskListener(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public addFreeformParamsForAutoLayout(ILandroid/graphics/Rect;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mRectWaitForAutoLayout:Landroid/util/SparseArray;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 12
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    const-string p2, "addFreeformParamsForAutoLayout taskId: "

    .line 23
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const-string p1, "MiuiFreeformModeTaskRepository"

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
    .line 40
.end method

.method public addFullScreenApp(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public addOrMoveFreeformTaskToTop(ILjava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 16
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    goto/16 :goto_a

    .line 25
    :cond_0
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 27
    move-result-object v3

    .line 30
    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    move-result-wide v5

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-wide v7, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->firstEnterTime:J

    .line 40
    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 42
    move-result v0

    .line 45
    const-string v7, "EVENT_NAME"

    .line 46
    const-string/jumbo v8, "tip"

    .line 48
    const/4 v9, 0x1

    .line 51
    if-nez v0, :cond_9

    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    move-result-object v0

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 58
    move-result v10

    .line 61
    const-string v11, "miui_bubbles_notification_switch"

    .line 62
    invoke-static {v0, v11, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 64
    move-result v0

    .line 67
    if-ne v0, v9, :cond_1

    .line 68
    move v10, v9

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v10, 0x0

    .line 72
    :goto_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    move-result-object v0

    .line 76
    const-string v11, "MiuiMultiWindowRecommendSwitch"

    .line 77
    const/4 v12, -0x1

    .line 79
    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 80
    move-result v0

    .line 83
    if-ne v0, v9, :cond_2

    .line 84
    move v11, v9

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v11, 0x0

    .line 88
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    move-result-object v12

    .line 92
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object v0

    .line 96
    const-string v13, "miui_bubble_app_settings"

    .line 97
    invoke-static {v0, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 102
    new-instance v13, Lorg/json/JSONArray;

    .line 103
    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v14

    .line 111
    const-string/jumbo v15, "\u662f"

    .line 112
    const-string/jumbo v16, "\u5426"

    .line 115
    if-nez v14, :cond_6

    .line 118
    const-string v14, ","

    .line 120
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 122
    move-result-object v14

    .line 125
    array-length v9, v14

    .line 126
    const/4 v2, 0x0

    .line 127
    :goto_2
    if-ge v2, v9, :cond_6

    .line 128
    aget-object v0, v14, v2

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v17

    .line 135
    if-eqz v17, :cond_3

    .line 136
    move/from16 v17, v9

    .line 138
    move-object/from16 v20, v12

    .line 140
    move-object/from16 v18, v14

    .line 142
    :goto_3
    move-object/from16 v19, v15

    .line 144
    goto :goto_6

    .line 146
    :cond_3
    move/from16 v17, v9

    .line 147
    const-string v9, ":"

    .line 149
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 154
    array-length v9, v0

    .line 155
    move-object/from16 v18, v14

    .line 156
    const/4 v14, 0x2

    .line 158
    if-eq v9, v14, :cond_4

    .line 159
    move-object/from16 v20, v12

    .line 161
    goto :goto_3

    .line 163
    :cond_4
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 164
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    move-object/from16 v19, v15

    .line 169
    const/4 v14, 0x0

    .line 171
    :try_start_1
    aget-object v15, v0, v14

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 174
    move-result v1

    .line 177
    invoke-virtual {v12, v15, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 178
    move-result-object v1

    .line 181
    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 182
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    const-string v15, "app_package_name"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    move-object/from16 v20, v12

    .line 190
    :try_start_2
    aget-object v12, v0, v14

    .line 192
    invoke-virtual {v9, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v12, "app_display_name"

    .line 197
    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "if_open_app_notification_switch"

    .line 202
    const/4 v12, 0x1

    .line 204
    aget-object v0, v0, v12

    .line 205
    const-string v12, "1"

    .line 207
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v0

    .line 212
    if-eqz v0, :cond_5

    .line 213
    move-object/from16 v0, v19

    .line 215
    goto :goto_4

    .line 217
    :cond_5
    move-object/from16 v0, v16

    .line 218
    :goto_4
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    goto :goto_6

    .line 226
    :catch_0
    move-exception v0

    .line 227
    goto :goto_5

    .line 228
    :catch_1
    move-exception v0

    .line 229
    move-object/from16 v20, v12

    .line 230
    goto :goto_5

    .line 232
    :catch_2
    move-exception v0

    .line 233
    move-object/from16 v20, v12

    .line 234
    move-object/from16 v19, v15

    .line 236
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 241
    move-object/from16 v1, p0

    .line 243
    move/from16 v9, v17

    .line 245
    move-object/from16 v14, v18

    .line 247
    move-object/from16 v15, v19

    .line 249
    move-object/from16 v12, v20

    .line 251
    goto :goto_2

    .line 253
    :cond_6
    move-object/from16 v19, v15

    .line 254
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 256
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    const-string v1, "621.5.1.1.21759"

    .line 261
    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "notification_switch_status"

    .line 266
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "if_open_notification_switch"

    .line 271
    if-eqz v10, :cond_7

    .line 273
    move-object/from16 v2, v19

    .line 275
    goto :goto_7

    .line 277
    :cond_7
    move-object/from16 v2, v16

    .line 278
    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v1, "app_notification_switch_status"

    .line 283
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v1, "if_open_recommend_switch"

    .line 288
    if-eqz v11, :cond_8

    .line 290
    move-object/from16 v15, v19

    .line 292
    goto :goto_8

    .line 294
    :cond_8
    move-object/from16 v15, v16

    .line 295
    :goto_8
    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    invoke-virtual {v3, v4, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 300
    goto :goto_9

    .line 303
    :catch_3
    move-exception v0

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    :goto_9
    sput-wide v5, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->firstEnterTime:J

    .line 308
    :cond_9
    move-object/from16 v1, p0

    .line 310
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 314
    move-result v0

    .line 317
    const/4 v2, 0x1

    .line 318
    if-lt v0, v2, :cond_a

    .line 319
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 321
    move-result-object v0

    .line 324
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mContext:Landroid/content/Context;

    .line 325
    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 329
    move-result v4

    .line 332
    add-int/2addr v4, v2

    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    .line 337
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 339
    const-string v5, "621.4.0.1.21745"

    .line 342
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v5, "enter"

    .line 347
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string/jumbo v5, "window_num"

    .line 352
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    invoke-virtual {v0, v3, v2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 358
    goto :goto_a

    .line 361
    :catch_4
    move-exception v0

    .line 362
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 363
    :cond_a
    :goto_a
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 366
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v1

    .line 371
    const/4 v2, 0x0

    .line 372
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    const-string v1, "addOrMoveFreeformTaskToTop taskId: "

    .line 378
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    move/from16 v1, p1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, " reason= "

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-object/from16 v1, p2

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v0

    .line 401
    const-string v1, "MiuiFreeformModeTaskRepository"

    .line 402
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
    .line 407
.end method

.method public addToFullscreenToFreeformTaskList(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFullscreenToFreeformTaskList:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getRectWaitForAutoLayout()Landroid/util/SparseArray;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/graphics/Rect;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "getDestinationAfterAutoLayout : "

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    const-string v0, "MiuiFreeformModeTaskRepository"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object p0
    .line 31
.end method

.method public getFreeformScalesForAutoLayout()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 2
    return-object p0
    .line 4
.end method

.method public getFullScreenApp(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 17
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 25
    if-ne v1, p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 35
    return-object p0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
    .line 42
.end method

.method public getLastCloseFreeformTaskInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lastCloseFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModeTaskInfoList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 8
    return-object p0
    .line 10
.end method

.method public getRectWaitForAutoLayout()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mRectWaitForAutoLayout:Landroid/util/SparseArray;

    .line 2
    return-object p0
    .line 4
.end method

.method public getScaleAfterAutoLayout(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Float;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    return p0
    .line 19
.end method

.method public getfreeformTasksInZOrder()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public isFullscreenToFreeformTask(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFullscreenToFreeformTaskList:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public onAppOrientationChanged(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onAppOrientationChanged(II)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
    .line 29
.end method

.method public onAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;

    .line 18
    invoke-interface {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;->onAppTransition(Landroid/window/TransitionInfo;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
    .line 29
.end method

.method public onDesktopModeChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda5;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda5;-><init>(Z)V

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    return-void
    .line 12
.end method

.method public onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda3;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    return-void
    .line 12
.end method

.method public onTaskStateChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;-><init>(IILandroid/view/SurfaceControl$Transaction;)V

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    return-void
    .line 12
.end method

.method public putOrUpdateMiuiFreeformTaskInfo(ILandroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p4

    .line 15
    if-eqz p4, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setState(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    new-instance p4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p4, p2, p3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;)V

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p2, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    const-string p2, "putOrUpdateMiuiFreeformTaskInfo"

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addOrMoveFreeformTaskToTop(ILjava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskAppeared(I)V

    .line 47
    invoke-direct {p0, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 50
    :goto_0
    const-string p0, "putOrUpdateMiuiFreeformTaskInfo taskId: "

    .line 53
    const-string p2, "MiuiFreeformModeTaskRepository"

    .line 55
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    return-void
    .line 60
.end method

.method public removeActiveTaskListener(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public removeFreeformParamsForAutoLayout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mRectWaitForAutoLayout:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "removeFreeformParamsForAutoLayout taskId: "

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    const-string p1, "MiuiFreeformModeTaskRepository"

    .line 26
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
    .line 31
.end method

.method public removeFreeformTask(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformTasksInZOrder:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public removeFromFullscreenToFreeformTaskList(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFullscreenToFreeformTaskList:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public removeFullScreenApp(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 17
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 25
    if-ne v1, p1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTempFullScreenTaskInfoList:Ljava/util/List;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method

.method public removeMiuiFreeformTaskInfo(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskVanished(I)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    return-void
    .line 10
.end method

.method public resetArraysForAutoLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mRectWaitForAutoLayout:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mFreeformScalesForAutoLayout:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 9
    return-void
    .line 12
.end method

.method public setLastCloseFreeformTaskInfo(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lastCloseFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->lastCloseFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    :goto_0
    return-void
    .line 14
.end method
