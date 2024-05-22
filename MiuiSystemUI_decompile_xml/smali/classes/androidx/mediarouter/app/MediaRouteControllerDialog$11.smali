.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 15
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    check-cast v0, Ljava/util/HashSet;

    .line 20
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;

    .line 28
    invoke-direct {v0, p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 30
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 33
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 35
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_0
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 41
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    .line 43
    move-result v5

    .line 46
    if-ge v3, v5, :cond_3

    .line 47
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 49
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 51
    move-result-object v5

    .line 54
    add-int v6, v2, v3

    .line 55
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 57
    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 59
    move-result-object v6

    .line 62
    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 63
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 65
    check-cast v7, Ljava/util/HashSet;

    .line 67
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 75
    const/4 v7, 0x0

    .line 77
    const/high16 v8, 0x3f800000    # 1.0f

    .line 78
    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 80
    iget v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    .line 83
    int-to-long v7, v7

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 89
    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 92
    if-nez v4, :cond_0

    .line 95
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    move v4, v1

    .line 100
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 101
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    .line 110
    :cond_3
    return-void
    .line 113
.end method
