.class Lcom/android/settings/bluetooth/BluetoothSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


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

    .line 287
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    .line 292
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/16 p1, 0xc

    if-ne p2, p1, :cond_0

    .line 301
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fputmInitiateDiscoverable(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    :cond_0
    return-void
.end method
