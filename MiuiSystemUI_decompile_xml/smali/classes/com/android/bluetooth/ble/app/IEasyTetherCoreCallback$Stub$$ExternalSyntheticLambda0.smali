.class public final synthetic Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 5
    iput-object p2, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 2
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 4
    sget v0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    sget-object v1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
    .line 31
.end method
