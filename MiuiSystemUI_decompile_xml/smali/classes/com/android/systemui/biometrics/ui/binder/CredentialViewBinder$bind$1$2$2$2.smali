.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $errorView:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;->$errorView:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;->$errorView:Ljava/lang/Object;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 12
    check-cast p0, Landroid/widget/TextView;

    .line 14
    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt;->access$setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 16
    return-object p2

    .line 19
    :goto_0
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    .line 20
    check-cast p0, Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 22
    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;->remaining:Ljava/lang/Integer;

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 32
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 33
    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;->message:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->onCredentialAttemptsRemaining(ILjava/lang/String;)V

    .line 37
    return-object p2

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method
