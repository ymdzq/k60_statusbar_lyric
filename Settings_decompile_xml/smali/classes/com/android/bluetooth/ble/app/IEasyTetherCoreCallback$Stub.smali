.class public abstract Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;
.super Landroid/os/Binder;
.source "IEasyTetherCoreCallback.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onApConnectFail:I = 0x2

.field static final TRANSACTION_onApInfoUpdate:I = 0x1

.field static final TRANSACTION_onApSupportAutoConnect:I = 0x3


# direct methods
.method public static synthetic $r8$lambda$AGnRytHgNuiBmtHI8vKhdtwhS_8(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 30
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "onApSupportAutoConnect"

    return-object p0

    :cond_1
    const-string/jumbo p0, "onApConnectFail"

    return-object p0

    :cond_2
    const-string/jumbo p0, "onApInfoUpdate"

    return-object p0
.end method

.method private static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 104
    sget-object v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 105
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic onApConnectFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic onApInfoUpdate(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic onApSupportAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 123
    :cond_1
    sget-object p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1, p3}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->onApSupportAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->onApConnectFail(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_4

    const/4 p3, 0x0

    goto :goto_0

    .line 100
    :cond_4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 p4, 0x0

    .line 101
    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p4, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p3}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p1, p4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->onApInfoUpdate(Ljava/util/Map;)V

    :goto_1
    return v1

    .line 89
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
