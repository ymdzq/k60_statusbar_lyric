.class public final Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final batteryPercent:I

.field public final bssid:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final is5G:Z

.field public final realSsid:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry$1;

    .line 2
    invoke-direct {v0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 28
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    .line 44
    return-void
    .line 46
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
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-boolean p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
    .line 32
.end method
