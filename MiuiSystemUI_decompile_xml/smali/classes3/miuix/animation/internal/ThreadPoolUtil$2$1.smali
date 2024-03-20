.class Lmiuix/animation/internal/ThreadPoolUtil$2$1;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/ThreadPoolUtil$2;


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/ThreadPoolUtil$2;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2$1;->this$0:Lmiuix/animation/internal/ThreadPoolUtil$2;

    .line 2
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 7
    return-void
    .line 10
.end method
