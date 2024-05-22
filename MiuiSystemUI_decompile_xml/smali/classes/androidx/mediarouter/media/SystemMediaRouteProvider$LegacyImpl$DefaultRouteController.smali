.class public final Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Ljava/lang/Object;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onSetVolume(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->$r8$classId:I

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 10
    const/4 p0, 0x0

    .line 13
    throw p0

    .line 14
    :goto_0
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final onUpdateVolume(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->$r8$classId:I

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 10
    const/4 p0, 0x0

    .line 13
    throw p0

    .line 14
    :goto_0
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
