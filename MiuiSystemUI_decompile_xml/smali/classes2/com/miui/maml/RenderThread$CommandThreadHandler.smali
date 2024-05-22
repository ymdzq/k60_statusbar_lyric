.class Lcom/miui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p1}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    .line 13
    goto :goto_0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 17
    invoke-static {p0, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    .line 19
    :goto_0
    return-void
    .line 22
.end method

.method public setPause(Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 7
    iput p1, v0, Landroid/os/Message;->what:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
    .line 14
.end method
