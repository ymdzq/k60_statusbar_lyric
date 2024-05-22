.class final synthetic Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToLockscreenAodOrDozing$1$3;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    const-string/jumbo v4, "toQuint"

    .line 7
    const-string/jumbo v5, "toQuint(Ljava/lang/Object;Lcom/android/systemui/util/kotlin/Quad;)Lcom/android/systemui/util/kotlin/Quint;"

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
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Lcom/android/systemui/util/kotlin/Quad;

    .line 8
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance p0, Lcom/android/systemui/util/kotlin/Quint;

    .line 23
    iget-object v2, p2, Lcom/android/systemui/util/kotlin/Quad;->first:Ljava/lang/Object;

    .line 25
    iget-object v3, p2, Lcom/android/systemui/util/kotlin/Quad;->second:Ljava/lang/Object;

    .line 27
    iget-object v4, p2, Lcom/android/systemui/util/kotlin/Quad;->third:Ljava/lang/Object;

    .line 29
    iget-object v5, p2, Lcom/android/systemui/util/kotlin/Quad;->fourth:Ljava/lang/Object;

    .line 31
    move-object v0, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/kotlin/Quint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-object p0
    .line 37
.end method
