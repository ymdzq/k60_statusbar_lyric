.class Lcom/android/settings/accounts/XiaomiAccountUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "XiaomiAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 115
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;

    invoke-static {p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmXiaomiAccountHandler(Lcom/android/settings/accounts/XiaomiAccountUtils;)Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;

    invoke-static {p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmXiaomiAccountHandler(Lcom/android/settings/accounts/XiaomiAccountUtils;)Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$1;->this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;

    invoke-static {p0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmXiaomiAccountHandler(Lcom/android/settings/accounts/XiaomiAccountUtils;)Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;

    move-result-object p0

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
