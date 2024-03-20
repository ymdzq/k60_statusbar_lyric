.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    const/4 v1, -0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 11
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 17
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 21
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 23
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 27
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 29
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 33
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 35
    move-result v4

    .line 38
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 39
    if-nez p0, :cond_0

    .line 41
    const/4 p0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    if-eqz p0, :cond_1

    .line 46
    move v5, v3

    .line 48
    move p0, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move p0, v3

    .line 51
    move v5, v4

    .line 52
    :goto_1
    new-instance v6, Lcom/android/wm/shell/util/SplitBounds;

    .line 53
    invoke-direct {v6, p0, v5, v0, v2}, Lcom/android/wm/shell/util/SplitBounds;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 55
    if-eq v3, v1, :cond_2

    .line 58
    if-eq v4, v1, :cond_2

    .line 60
    invoke-virtual {p1, v3, v4, v6}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IILcom/android/wm/shell/util/SplitBounds;)V

    .line 62
    :cond_2
    return-void

    .line 65
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 66
    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 68
    check-cast p1, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFoldedStateChanged(Z)V

    .line 76
    return-void

    .line 79
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 80
    check-cast p0, Landroid/util/ArrayMap;

    .line 82
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 84
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 86
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 90
    move-result v0

    .line 93
    :goto_3
    add-int/2addr v0, v1

    .line 94
    if-ltz v0, :cond_3

    .line 95
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Integer;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result v2

    .line 106
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 107
    goto :goto_3

    .line 110
    :cond_3
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 112
.end method
