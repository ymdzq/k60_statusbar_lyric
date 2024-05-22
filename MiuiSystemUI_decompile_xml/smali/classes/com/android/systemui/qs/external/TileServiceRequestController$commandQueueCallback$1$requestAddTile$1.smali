.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $callback:Lcom/android/internal/statusbar/IAddTileResultCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;->$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;->$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "TileServiceRequestController"

    .line 15
    const-string v0, "Couldn\'t respond to request"

    .line 17
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_0
    return-void
    .line 22
.end method
