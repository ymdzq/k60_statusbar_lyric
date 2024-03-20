.class public final Lcom/android/settingslib/bluetooth/BroadcastProfile;
.super Ljava/lang/Object;
.source "BroadcastProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Broadcast"

.field private static final ORDINAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BroadcastProfile"

.field private static V:Z = true


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothBroadcast;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BroadcastProfile;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/BroadcastProfile;Landroid/bluetooth/BluetoothBroadcast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetV()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->V:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mIsProfileReady:Z

    const-string v0, "BroadcastProfile"

    const-string v1, "BroadcastProfile constructor"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;-><init>(Lcom/android/settingslib/bluetooth/BroadcastProfile;Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener-IA;)V

    const/16 p0, 0x21

    invoke-virtual {v0, p1, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 1

    const-string p0, "BroadcastProfile"

    const-string v0, "accessProfileEnabled"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 4

    .line 185
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->V:Z

    const-string v1, "BroadcastProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    if-eqz v0, :cond_1

    .line 188
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    const/16 v3, 0x21

    .line 189
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up Broadcast proxy"

    .line 192
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getBroadcastStatus()I
    .locals 2

    const-string v0, "BroadcastProfile"

    const-string v1, "getBroadcastStatus"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothBroadcast;->GetBroadcastStatus()I

    move-result p0

    return p0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getEncryptionKey()[B
    .locals 2

    const-string v0, "BroadcastProfile"

    const-string v1, "getEncryptionKey"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothBroadcast;->GetEncryptionKey()[B

    move-result-object p0

    return-object p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 153
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_broadcast:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getProfileId()I
    .locals 1

    const-string p0, "BroadcastProfile"

    const-string v0, "getProfileId"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x21

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoConnectable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isProfileReady()Z
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProfileReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mIsProfileReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setBroadcastMode(Z)Z
    .locals 2

    const-string v0, "BroadcastProfile"

    const-string/jumbo v1, "setBroadcastMode"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothBroadcast;->SetBroadcastMode(Z)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setEncryption(ZIZ)Z
    .locals 2

    const-string v0, "BroadcastProfile"

    const-string/jumbo v1, "setEncryption"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile;->mService:Landroid/bluetooth/BluetoothBroadcast;

    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothBroadcast;->SetEncryption(ZIZ)Z

    move-result p0

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "Broadcast"

    return-object p0
.end method
