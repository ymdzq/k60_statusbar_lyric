.class final Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Lcom/miui/maml/MamlDisplayEventReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    invoke-direct {p0, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onVsync(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    const-wide/16 v1, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Lcom/miui/maml/RenderVsyncUpdater;->access$222(Lcom/miui/maml/RenderVsyncUpdater;J)J

    .line 6
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 9
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 19
    invoke-static {p0}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 21
    move-result-object p0

    .line 24
    const-wide/32 v1, 0xf4240

    .line 25
    div-long/2addr p1, v1

    .line 28
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 29
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$200(Lcom/miui/maml/RenderVsyncUpdater;)J

    .line 4
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v0, v0, v2

    .line 10
    if-gtz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 14
    invoke-static {p0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 20
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 28
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver;->scheduleVsync()V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method
