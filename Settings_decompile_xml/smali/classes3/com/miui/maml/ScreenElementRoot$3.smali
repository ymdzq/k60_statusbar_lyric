.class Lcom/miui/maml/ScreenElementRoot$3;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    iput-object p2, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScreenElementRoot"

    .line 1332
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
