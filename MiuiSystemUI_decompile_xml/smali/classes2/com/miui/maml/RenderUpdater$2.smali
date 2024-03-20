.class Lcom/miui/maml/RenderUpdater$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderUpdater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$500(Lcom/miui/maml/RenderUpdater;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 7
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lcom/miui/maml/RenderUpdater;->access$602(Lcom/miui/maml/RenderUpdater;Z)Z

    .line 10
    return-void
    .line 13
.end method
