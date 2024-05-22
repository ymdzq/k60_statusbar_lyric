.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v1, 0x1

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    const/4 v2, 0x2

    .line 14
    if-eq p0, v2, :cond_0

    .line 15
    const/4 v2, 0x3

    .line 17
    if-eq p0, v2, :cond_0

    .line 18
    const/4 v2, 0x4

    .line 20
    if-eq p0, v2, :cond_0

    .line 21
    const/16 v2, 0x8

    .line 23
    if-eq p0, v2, :cond_0

    .line 25
    const/16 v2, 0x9

    .line 27
    if-eq p0, v2, :cond_0

    .line 29
    const/16 v2, 0xb

    .line 31
    if-eq p0, v2, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    iget-boolean p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 38
    if-eqz p0, :cond_1

    .line 40
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 44
    move-result p0

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 48
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 53
    move-result p0

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 57
    :cond_1
    return-void
    .line 60
.end method
