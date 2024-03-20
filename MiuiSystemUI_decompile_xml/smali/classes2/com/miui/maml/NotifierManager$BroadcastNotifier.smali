.class public Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
    .line 16
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public onRegister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 12
    if-nez v0, :cond_1

    .line 14
    const-string p0, "NotifierManager"

    .line 16
    const-string v0, "onRegister: mIntentFilter is null"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 34
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 37
    :cond_2
    return-void
    .line 40
.end method

.method public onUnregister()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
    .line 9
.end method
