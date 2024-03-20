.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 9
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    .line 12
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 8
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 10
    iget-object v0, p1, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 30
    iget-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 32
    if-nez v2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/widget/ListView;->getDrawingTime()J

    .line 36
    move-result-wide v2

    .line 39
    iput-wide v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartTime:J

    .line 40
    const/4 v2, 0x1

    .line 42
    iput-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 46
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 48
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    .line 50
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    .line 52
    int-to-long v1, p0

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
