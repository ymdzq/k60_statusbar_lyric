.class public final synthetic Lcom/android/systemui/util/concurrency/ExecutorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/concurrency/ExecutorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/ExecutorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ExecutorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget p0, p1, Landroid/os/Message;->what:I

    .line 7
    if-nez p0, :cond_0

    .line 9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->runnable:Ljava/lang/Runnable;

    .line 15
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "Unrecognized message: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    .line 43
.end method
