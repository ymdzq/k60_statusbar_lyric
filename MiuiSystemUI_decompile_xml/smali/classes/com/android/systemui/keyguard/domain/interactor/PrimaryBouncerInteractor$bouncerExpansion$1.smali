.class final Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$bouncerExpansion$1"
    f = "PrimaryBouncerInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    move-result p0

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;

    .line 16
    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 18
    iput p0, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->F$0:F

    .line 21
    iput-boolean p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->Z$0:Z

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->F$0:F

    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;->Z$0:Z

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    sub-float/2addr p0, p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    new-instance p1, Ljava/lang/Float;

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    .line 22
    return-object p1

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method
