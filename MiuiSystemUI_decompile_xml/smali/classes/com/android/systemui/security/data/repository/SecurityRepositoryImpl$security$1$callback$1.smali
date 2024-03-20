.class public final Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 9
    const/4 v1, 0x3

    .line 12
    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    return-void
    .line 16
.end method
