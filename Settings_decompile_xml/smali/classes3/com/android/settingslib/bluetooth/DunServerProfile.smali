.class public final Lcom/android/settingslib/bluetooth/DunServerProfile;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;
    }
.end annotation


# static fields
.field private static V:Z = true


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothDun;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/DunServerProfile;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetV()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settingslib/bluetooth/DunServerProfile;->V:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/settingslib/bluetooth/DunServerProfile;Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener-IA;)V

    const/16 p0, 0x1f

    invoke-virtual {v0, p1, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    .line 163
    sget-boolean v0, Lcom/android/settingslib/bluetooth/DunServerProfile;->V:Z

    const-string v1, "DunServerProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    const/16 v3, 0x1f

    .line 167
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up DUN proxy"

    .line 170
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 153
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_network_pan:I

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 158
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_network_pan_bonded:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_network_pan:I

    :goto_0
    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 134
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_dun:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    .line 0
    const/16 p0, 0xb

    return p0
.end method

.method public getProfileId()I
    .locals 0

    .line 0
    const/16 p0, 0x1f

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DunServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 146
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 144
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_dun_profile_summary_connected:I

    return p0

    .line 141
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_dun_profile_summary_use_for:I

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "DUN Server"

    return-object p0
.end method
