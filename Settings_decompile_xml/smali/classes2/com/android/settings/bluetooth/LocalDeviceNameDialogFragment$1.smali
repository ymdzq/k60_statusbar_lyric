.class Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalDeviceNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 72
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    .line 74
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    :cond_2
    :goto_0
    return-void
.end method
