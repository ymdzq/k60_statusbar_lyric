.class public final Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $block:Ljava/lang/Runnable;

.field public final synthetic this$0:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    .line 2
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method
