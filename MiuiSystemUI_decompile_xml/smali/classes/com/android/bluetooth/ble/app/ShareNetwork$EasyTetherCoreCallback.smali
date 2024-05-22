.class public final Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    if-eq p1, v2, :cond_9

    .line 7
    const/4 v4, 0x2

    .line 9
    const-string v5, "ShareNetworkControllerImpl"

    .line 10
    if-eq p1, v4, :cond_6

    .line 12
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_3

    .line 15
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    const v0, 0x5f4e5446

    .line 20
    if-eq p1, v0, :cond_0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    return v2

    .line 33
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result p1

    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 44
    if-eqz p2, :cond_2

    .line 46
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 59
    check-cast p2, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 60
    iget-object p2, p2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 62
    if-eqz p2, :cond_2

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 72
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 74
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onCelluarTetherStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_2
    :goto_0
    return v2

    .line 86
    :cond_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 90
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    sget-object p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 102
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 107
    if-eqz p1, :cond_5

    .line 109
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 117
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 122
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 123
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 125
    if-eqz p1, :cond_5

    .line 127
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 134
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 135
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 137
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    const-string p0, "onApSupportAutoConnect"

    .line 144
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    goto :goto_1

    .line 149
    :catch_1
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :cond_5
    :goto_1
    return v2

    .line 154
    :cond_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 158
    :try_start_2
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 161
    if-eqz p1, :cond_8

    .line 163
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 168
    if-eqz p1, :cond_8

    .line 169
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 173
    move-result-object p1

    .line 176
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 177
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 179
    if-eqz p1, :cond_8

    .line 181
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 185
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 189
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 191
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    sget-boolean p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 198
    if-nez p1, :cond_7

    .line 200
    goto :goto_2

    .line 202
    :cond_7
    const-string p1, "onApConnectFail"

    .line 203
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getHotspotList()Ljava/util/List;

    .line 210
    move-result-object p1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onHotspotUpdateCallback(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    goto :goto_2

    .line 217
    :catch_2
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :cond_8
    :goto_2
    return v2

    .line 222
    :cond_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    move-result p1

    .line 229
    if-gez p1, :cond_a

    .line 230
    goto :goto_3

    .line 232
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    .line 233
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    :goto_3
    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 238
    move-result-object p1

    .line 241
    new-instance p3, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;

    .line 242
    invoke-direct {p3, p2, v0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 244
    invoke-interface {p1, p3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 247
    :try_start_3
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 250
    if-eqz p1, :cond_b

    .line 252
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 254
    move-result-object p1

    .line 257
    if-eqz p1, :cond_b

    .line 258
    iget-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 260
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 262
    move-result-object p1

    .line 265
    check-cast p1, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 266
    iget-object p1, p1, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 268
    if-eqz p1, :cond_b

    .line 270
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;->mShareNetwork:Ljava/lang/ref/WeakReference;

    .line 272
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 274
    move-result-object p0

    .line 277
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 278
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 280
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onApInfoUpdate(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 284
    goto :goto_4

    .line 287
    :catch_3
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    :cond_b
    :goto_4
    return v2
    .line 292
.end method
