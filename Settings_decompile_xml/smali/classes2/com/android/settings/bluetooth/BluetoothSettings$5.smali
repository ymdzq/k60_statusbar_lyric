.class Lcom/android/settings/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 277
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "device"

    .line 278
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 280
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->bluetooth_device_advanced_title:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 279
    invoke-static/range {v0 .. v6}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method
