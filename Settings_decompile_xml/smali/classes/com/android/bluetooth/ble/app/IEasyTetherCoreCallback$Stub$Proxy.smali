.class Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEasyTetherCoreCallback.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$kIyvRpFHyV14nuzSMxByH8AdRbY(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->lambda$onApInfoUpdate$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method

.method private static synthetic lambda$onApInfoUpdate$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    return-object p0
.end method

.method public onApConnectFail(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw p0
.end method

.method public onApInfoUpdate(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 156
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    new-instance v1, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 166
    :goto_0
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw p0
.end method

.method public onApSupportAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x3

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw p0
.end method
