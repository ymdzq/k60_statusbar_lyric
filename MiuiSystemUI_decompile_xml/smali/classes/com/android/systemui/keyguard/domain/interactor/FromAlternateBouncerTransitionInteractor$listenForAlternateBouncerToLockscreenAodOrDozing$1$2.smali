.class final synthetic Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToLockscreenAodOrDozing$1$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v2, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 2
    const/4 v1, 0x5

    .line 4
    const-class v3, Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 5
    const-string/jumbo v4, "toQuad"

    .line 7
    const-string/jumbo v5, "toQuad(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/systemui/util/kotlin/Quad;"

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
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 8
    check-cast p3, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 10
    check-cast p4, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p4

    .line 17
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 18
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    .line 20
    check-cast p0, Lcom/android/systemui/util/kotlin/Utils$Companion;

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p1

    .line 27
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p4

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance p0, Lcom/android/systemui/util/kotlin/Quad;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/kotlin/Quad;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    return-object p0
    .line 40
.end method
