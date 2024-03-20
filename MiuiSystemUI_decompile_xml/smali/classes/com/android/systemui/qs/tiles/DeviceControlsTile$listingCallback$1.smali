.class public final Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method
