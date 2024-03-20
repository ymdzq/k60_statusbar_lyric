.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mChanges:Landroid/util/ArrayMap;

.field mContainShowFullscreenChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    .line 8
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public addRecord(Lcom/android/wm/shell/sosc/SoScStageTaskListener;ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;

    .line 10
    invoke-direct {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;-><init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;)V

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;

    .line 28
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    iget-object p0, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    .line 32
    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 38
    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    .line 40
    :goto_1
    return-void
    .line 43
.end method

.method public getShouldDismissedStage()Landroid/util/ArraySet;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;

    .line 23
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    iget-object v2, v2, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 31
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
    .line 39
.end method
