.class Lcom/android/settings/wireless/MiuiNfcRepairController$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNfcRepairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wireless/MiuiNfcRepairController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wireless/MiuiNfcRepairController;


# direct methods
.method constructor <init>(Lcom/android/settings/wireless/MiuiNfcRepairController;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNfcRepairController$2;->this$0:Lcom/android/settings/wireless/MiuiNfcRepairController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.nfc.action.repair.rsp"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/settings/wireless/MiuiNfcRepairController$2;->this$0:Lcom/android/settings/wireless/MiuiNfcRepairController;

    invoke-static {p1}, Lcom/android/settings/wireless/MiuiNfcRepairController;->access$000(Lcom/android/settings/wireless/MiuiNfcRepairController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcRepairController$2;->this$0:Lcom/android/settings/wireless/MiuiNfcRepairController;

    invoke-static {v0}, Lcom/android/settings/wireless/MiuiNfcRepairController;->-$$Nest$fgetmReceiver(Lcom/android/settings/wireless/MiuiNfcRepairController;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo p1, "success"

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 227
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNfcRepairController$2;->this$0:Lcom/android/settings/wireless/MiuiNfcRepairController;

    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
