.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 8
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 10
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 12
    iget-object p3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    if-nez p2, :cond_0

    .line 26
    const/4 p3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p3, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;

    .line 8
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 14
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 22
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;

    .line 4
    const/4 p1, 0x2

    .line 6
    const-wide/16 v0, 0x1f4

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    return-void
    .line 12
.end method
