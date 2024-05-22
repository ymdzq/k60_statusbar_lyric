.class Lcom/miui/maml/ScreenElementRoot$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$currentTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    iput-wide p2, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    iget-wide v1, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->reset(J)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    .line 19
    move-result-object p0

    .line 22
    const-string v0, "init"

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "onAction init fail."

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    const-string v0, "ScreenElementRoot"

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    :goto_0
    return-void
    .line 49
.end method
