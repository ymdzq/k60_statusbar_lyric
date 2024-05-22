.class public final Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public final isSupportCelluarShared:Z

.field public final simCardState:I

.field public final state:I

.field public final underlyingNetwork:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo$1;

    .line 2
    invoke-direct {v0}, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->state:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 23
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->isSupportCelluarShared:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->underlyingNetwork:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->simCardState:I

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceId:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->state:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->isSupportCelluarShared:Z

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    iget p2, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->underlyingNetwork:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p0, p0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->simCardState:I

    .line 27
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
    .line 32
.end method
