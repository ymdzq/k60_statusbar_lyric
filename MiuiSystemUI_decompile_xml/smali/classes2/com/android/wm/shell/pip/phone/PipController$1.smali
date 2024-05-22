.class public final Lcom/android/wm/shell/pip/phone/PipController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 4
    iget v0, v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    .line 18
    return-void
    .line 21
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 4
    iget p2, p2, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 6
    if-eq p1, p2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    move-result-object p1

    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    .line 18
    return-void
    .line 21
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 4
    iget v0, v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 6
    if-ne v0, p1, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 14
    iget-object v0, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 16
    check-cast v0, Landroid/util/ArraySet;

    .line 18
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 20
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 26
    check-cast p1, Landroid/util/ArraySet;

    .line 28
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 30
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 36
    move-object p2, p1

    .line 38
    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 41
    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    sget-wide p2, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    .line 46
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 48
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method
