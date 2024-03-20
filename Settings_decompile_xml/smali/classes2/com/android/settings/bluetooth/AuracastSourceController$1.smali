.class Lcom/android/settings/bluetooth/AuracastSourceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AuracastSourceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AuracastSourceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastSourceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$1;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string p1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 101
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receiver half close broadcast:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AuracastSourceController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$1;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->onBluetoothStateChanged(I)V

    :cond_0
    return-void
.end method
