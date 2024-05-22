.class public final synthetic Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    .line 2
    const/16 p1, 0x12

    .line 4
    if-ne p2, p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    :goto_0
    return-void
    .line 16
.end method
