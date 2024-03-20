.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 191
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iget-boolean v0, p1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez v0, :cond_0

    .line 192
    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmUnlockListener(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmSetKeyOnReady(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iget-boolean v0, p1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$mcheckBtBond(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$msetKeyToDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    :cond_2
    return-void
.end method
