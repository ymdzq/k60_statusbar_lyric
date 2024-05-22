.class Lcom/miui/maml/RenderUpdater$1;
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
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/RenderUpdater;->access$002(Lcom/miui/maml/RenderUpdater;Z)Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 12
    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v3, v0, v1}, Lcom/miui/maml/ScreenElementRoot;->updateIfNeeded(J)J

    .line 18
    move-result-wide v3

    .line 21
    iput-wide v3, v2, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 22
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 24
    iput-wide v0, v2, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    .line 26
    iget-boolean v0, v2, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 28
    if-nez v0, :cond_0

    .line 30
    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$200(Lcom/miui/maml/RenderUpdater;)Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 38
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$000(Lcom/miui/maml/RenderUpdater;)Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 46
    iget-wide v1, v0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 48
    const-wide v3, 0x7fffffffffffffffL

    .line 50
    cmp-long v1, v1, v3

    .line 55
    if-gez v1, :cond_0

    .line 57
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;

    .line 59
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 63
    invoke-static {v1}, Lcom/miui/maml/RenderUpdater;->access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;

    .line 65
    move-result-object v1

    .line 68
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 69
    iget-wide v2, p0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :cond_0
    return-void
    .line 76
.end method
