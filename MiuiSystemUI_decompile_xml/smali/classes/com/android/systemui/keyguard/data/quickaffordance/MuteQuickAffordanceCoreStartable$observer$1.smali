.class public final synthetic Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;->$tmp0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;->$tmp0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 10
    new-instance v1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p1, p0, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;-><init>(ILcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;Lkotlin/coroutines/Continuation;)V

    .line 15
    const/4 p1, 0x2

    .line 18
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    invoke-static {v0, p0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    return-void
.end method
