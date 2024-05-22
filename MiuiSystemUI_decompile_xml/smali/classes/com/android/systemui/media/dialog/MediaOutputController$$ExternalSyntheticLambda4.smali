.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/media/MediaDevice;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settingslib/media/MediaDevice;

    .line 5
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settingslib/media/MediaDevice;

    .line 2
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    iget-object v1, v0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string p0, "MediaDevice"

    .line 10
    const-string v0, "Unable to set volume. RouteInfo is empty"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/media/MediaDevice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method
