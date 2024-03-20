.class Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 53
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    .line 61
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 62
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->-$$Nest$mhandleStateChanged(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;IZ)V

    return-void
.end method
