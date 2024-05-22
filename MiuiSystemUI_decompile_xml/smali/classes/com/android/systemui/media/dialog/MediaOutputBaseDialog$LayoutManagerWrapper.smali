.class public final Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 21
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 23
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 25
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 27
    const/4 v3, 0x1

    .line 29
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    .line 36
    :cond_0
    return-void
    .line 38
.end method
