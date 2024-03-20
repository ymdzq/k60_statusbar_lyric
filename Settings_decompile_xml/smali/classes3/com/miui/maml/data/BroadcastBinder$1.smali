.class Lcom/miui/maml/data/BroadcastBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/BroadcastBinder;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/BroadcastBinder;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/BroadcastBinder;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method
