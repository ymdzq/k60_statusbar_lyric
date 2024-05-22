.class public final synthetic Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 5
    iput-object p2, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 2
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
    .line 29
.end method
