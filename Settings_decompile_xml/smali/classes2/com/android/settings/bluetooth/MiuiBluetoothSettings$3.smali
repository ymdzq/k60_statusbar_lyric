.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    return-void
.end method

.method public onInit(Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    .line 266
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateContent(I)V

    return-void
.end method
