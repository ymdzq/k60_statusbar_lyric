.class Lcom/miui/maml/RenderVsyncUpdater$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$1;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater$1;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    .line 4
    return-void
    .line 7
.end method
