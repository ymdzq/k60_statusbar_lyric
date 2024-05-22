.class Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "onNotify: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "NotifierManager"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    .line 33
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 36
    return-void
    .line 39
.end method
