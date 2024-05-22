.class Lcom/miui/maml/RenderUpdater$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
