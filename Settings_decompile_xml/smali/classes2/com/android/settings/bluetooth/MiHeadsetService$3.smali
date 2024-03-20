.class Lcom/android/settings/bluetooth/MiHeadsetService$3;
.super Landroid/content/BroadcastReceiver;
.source "MiHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiHeadsetService;->createService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiHeadsetService;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$3;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    .line 254
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    .line 261
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$3;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$mgetProfileProxy(Lcom/android/settings/bluetooth/MiHeadsetService;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$3;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiHeadsetService;I)V

    :cond_3
    :goto_0
    return-void
.end method
