.class public Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;
.super Ljava/lang/Object;
.source "EasyTetherHotspotEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batteryPercent:I

.field private bssid:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private is5G:Z

.field private realSsid:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry$1;

    invoke-direct {v0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 32
    iput p4, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 41
    iput p4, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    .line 42
    iput-object p5, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getBatteryPercent()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    return p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getIs5G()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    return p0
.end method

.method public getRealSsid()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-void
.end method

.method public setBatteryPercent(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setIs5G(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    return-void
.end method

.method public setRealSsid(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-boolean p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->is5G:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->batteryPercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
