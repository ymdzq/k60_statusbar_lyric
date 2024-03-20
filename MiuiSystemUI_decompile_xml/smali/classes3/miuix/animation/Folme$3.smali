.class Lmiuix/animation/Folme$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lmiuix/animation/Folme;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 29
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 31
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 41
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v1

    .line 50
    if-lez v1, :cond_2

    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 53
    move-result-object v1

    .line 56
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    const/4 p0, 0x2

    .line 59
    iput p0, v1, Landroid/os/Message;->what:I

    .line 60
    const-wide/16 v2, 0x3e8

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    :cond_2
    return-void
    .line 67
.end method
