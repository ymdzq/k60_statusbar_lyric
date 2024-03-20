.class final synthetic Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToAodOrDozing$1$3;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v2, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 2
    const/4 v1, 0x3

    .line 4
    const-class v3, Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 5
    const-string/jumbo v4, "toTriple"

    .line 7
    const-string/jumbo v5, "toTriple(Ljava/lang/Object;Lkotlin/Pair;)Lkotlin/Triple;"

    .line 10
    const/4 v6, 0x4

    .line 13
    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 2
    check-cast p2, Lkotlin/Pair;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1, p2}, Lcom/android/systemui/util/kotlin/Utils$Companion;->toTriple(Ljava/lang/Object;Lkotlin/Pair;)Lkotlin/Triple;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method
