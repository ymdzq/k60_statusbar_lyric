.class final Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$biometricUnlockState$1"
    f = "KeyguardRepository.kt"
    l = {
        0x1e6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->$biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method

.method public static final invokeSuspend$dispatchUpdate(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 2

    .line 1
    iget p2, p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p1, "Invalid BiometricUnlockModel value: "

    .line 12
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 21
    :pswitch_0
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 22
    goto :goto_0

    .line 24
    :pswitch_1
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 25
    goto :goto_0

    .line 27
    :pswitch_2
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 28
    goto :goto_0

    .line 30
    :pswitch_3
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 31
    goto :goto_0

    .line 33
    :pswitch_4
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 34
    goto :goto_0

    .line 36
    :pswitch_5
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 37
    goto :goto_0

    .line 39
    :pswitch_6
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 40
    goto :goto_0

    .line 42
    :pswitch_7
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 43
    :goto_0
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 49
    if-eqz p1, :cond_0

    .line 51
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 53
    move-result-object p0

    .line 56
    const-string p1, "Failed to send "

    .line 57
    const-string p2, "biometric mode"

    .line 59
    const-string v0, " - downstream canceled or failed."

    .line 61
    const-string v1, "KeyguardRepositoryImpl"

    .line 63
    invoke-static {p1, p2, v0, v1, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :cond_0
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 70
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->$biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 6
    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 8
    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->L$0:Ljava/lang/Object;

    .line 11
    return-object v0
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    new-instance v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1$callback$1;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 32
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->$biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 34
    invoke-direct {v1, p1, v3, v4}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 36
    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 39
    check-cast v3, Ljava/util/HashSet;

    .line 41
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 46
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->$biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 48
    invoke-static {p1, v3, v4}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->invokeSuspend$dispatchUpdate(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 50
    new-instance v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1$1;

    .line 53
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->$biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 55
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1$callback$1;)V

    .line 57
    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;->label:I

    .line 60
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    if-ne p0, v0, :cond_2

    .line 66
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    return-object p0
    .line 71
.end method
