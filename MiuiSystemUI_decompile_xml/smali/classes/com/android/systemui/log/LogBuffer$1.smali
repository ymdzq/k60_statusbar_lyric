.class final Lcom/android/systemui/log/LogBuffer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer$1;->this$0:Lcom/android/systemui/log/LogBuffer;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer$1;->this$0:Lcom/android/systemui/log/LogBuffer;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/log/LogBuffer;->access$getEchoMessageQueue$p(Lcom/android/systemui/log/LogBuffer;)Ljava/util/concurrent/BlockingQueue;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/log/LogMessage;

    .line 12
    invoke-static {v0, v1}, Lcom/android/systemui/log/LogBuffer;->access$echoToDesiredEndpoints(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 17
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    return-object p0
    .line 27
.end method
