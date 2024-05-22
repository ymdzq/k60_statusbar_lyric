.class Lcom/miui/maml/ScreenElementRoot$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p0}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v0, "ScreenElementRoot"

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
