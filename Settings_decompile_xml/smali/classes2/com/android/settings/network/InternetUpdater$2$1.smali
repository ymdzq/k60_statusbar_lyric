.class Lcom/android/settings/network/InternetUpdater$2$1;
.super Ljava/lang/Object;
.source "InternetUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/InternetUpdater$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/network/InternetUpdater$2;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/settings/network/InternetUpdater$2;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$2$1;->this$1:Lcom/android/settings/network/InternetUpdater$2;

    iput-object p2, p0, Lcom/android/settings/network/InternetUpdater$2$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater$2$1;->this$1:Lcom/android/settings/network/InternetUpdater$2;

    iget-object v0, v0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {v0}, Lcom/android/settings/network/InternetUpdater;->-$$Nest$mfetchActiveNetwork(Lcom/android/settings/network/InternetUpdater;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater$2$1;->this$1:Lcom/android/settings/network/InternetUpdater$2;

    iget-object v0, v0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {v0}, Lcom/android/settings/network/InternetUpdater;->-$$Nest$fgetmListener(Lcom/android/settings/network/InternetUpdater;)Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater$2$1;->this$1:Lcom/android/settings/network/InternetUpdater$2;

    iget-object v0, v0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {v0}, Lcom/android/settings/network/InternetUpdater;->-$$Nest$fgetmListener(Lcom/android/settings/network/InternetUpdater;)Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater$2$1;->this$1:Lcom/android/settings/network/InternetUpdater$2;

    iget-object v1, v1, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {v1}, Lcom/android/settings/network/InternetUpdater;->-$$Nest$fgetmWifiManager(Lcom/android/settings/network/InternetUpdater;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onWifiEnabledChanged(Z)V

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$2$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_1
    return-void
.end method
