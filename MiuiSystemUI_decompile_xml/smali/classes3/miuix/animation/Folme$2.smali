.class Lmiuix/animation/Folme$2;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    check-cast p0, Ljava/util/List;

    .line 13
    invoke-static {p0}, Lmiuix/animation/Folme;->access$400(Ljava/util/List;)V

    .line 15
    return-void

    .line 18
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->access$300()V

    .line 19
    invoke-static {v0}, Lmiuix/animation/Folme;->access$000(Z)V

    .line 22
    return-void
    .line 25
.end method
