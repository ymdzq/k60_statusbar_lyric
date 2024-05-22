.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final mAddedTaskId:Landroid/util/IntArray;

.field final mRemovedTaskId:Landroid/util/IntArray;

.field final mStageTaskListener:Lcom/android/wm/shell/sosc/SoScStageTaskListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/IntArray;

    .line 5
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    .line 10
    new-instance v0, Landroid/util/IntArray;

    .line 12
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public shouldDismissStage()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 11
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 20
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 22
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    sub-int/2addr v0, v2

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ltz v0, :cond_2

    .line 29
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 31
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 33
    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    .line 35
    move-result v5

    .line 38
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->containsTask(I)Z

    .line 39
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildCount()I

    .line 52
    move-result p0

    .line 55
    if-ne v3, p0, :cond_3

    .line 56
    move v1, v2

    .line 58
    :cond_3
    :goto_1
    return v1
    .line 59
.end method
