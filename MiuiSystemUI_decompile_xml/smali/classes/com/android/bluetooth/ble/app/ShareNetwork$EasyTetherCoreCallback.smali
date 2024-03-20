.class public final Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mShareNetwork:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/app/ShareNetwork;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->onTransact$com$android$bluetooth$ble$app$IEasyTetherCoreCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$bluetooth$ble$app$IEasyTetherCoreCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 5
    if-eq p1, v2, :cond_6

    .line 7
    const/4 v4, 0x2

    .line 9
    const-string v5, "ShareNetworkControllerImpl"

    .line 10
    if-eq p1, v4, :cond_4

    .line 12
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    const v0, 0x5f4e5446

    .line 17
    if-eq p1, v0, :cond_0

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    return v2

    .line 30
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    sget-object p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 46
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 51
    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 67
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 69
    if-eqz p1, :cond_3

    .line 71
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 81
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    const-string p0, "onApSupportAutoConnect"

    .line 88
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :cond_3
    :goto_0
    return v2

    .line 98
    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 102
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 105
    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 115
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 120
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 121
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 123
    if-eqz p1, :cond_5

    .line 125
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 127
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 129
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 133
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 135
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    const-string p1, "onApConnectFail"

    .line 142
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 147
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 149
    if-eqz p1, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getHotspotList()Ljava/util/List;

    .line 153
    move-result-object p0

    .line 156
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;->onHotspotUpdate(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    goto :goto_1

    .line 160
    :catch_1
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_5
    :goto_1
    return v2

    .line 165
    :cond_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    move-result p1

    .line 172
    if-gez p1, :cond_7

    .line 173
    goto :goto_2

    .line 175
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    .line 176
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    :goto_2
    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 181
    move-result-object p1

    .line 184
    new-instance p3, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;

    .line 185
    invoke-direct {p3, p2, v0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 187
    invoke-interface {p1, p3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 190
    :try_start_2
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 193
    if-eqz p1, :cond_8

    .line 195
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 197
    move-result-object p1

    .line 200
    if-eqz p1, :cond_8

    .line 201
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 205
    move-result-object p1

    .line 208
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 209
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 211
    if-eqz p1, :cond_8

    .line 213
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 215
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 217
    move-result-object p0

    .line 220
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 221
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 223
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onApInfoUpdate(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    goto :goto_3

    .line 230
    :catch_2
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_8
    :goto_3
    return v2
    .line 235
.end method
