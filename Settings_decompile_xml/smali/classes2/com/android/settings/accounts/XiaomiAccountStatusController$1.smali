.class Lcom/android/settings/accounts/XiaomiAccountStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "XiaomiAccountStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/XiaomiAccountStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/XiaomiAccountStatusController;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XiaomiAccountStatusController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountStatusController;

    invoke-virtual {p0}, Lcom/android/settings/accounts/XiaomiAccountStatusController;->updateStatus()V

    return-void
.end method
