.class Lmiuix/animation/internal/AnimRunner$1;
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
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    if-eqz p0, :cond_1

    .line 4
    const/4 p1, 0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$200()V

    .line 10
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$100()V

    .line 14
    :goto_0
    return-void
    .line 17
.end method
