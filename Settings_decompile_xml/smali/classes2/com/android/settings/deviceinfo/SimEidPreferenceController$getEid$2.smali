.class final Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getEid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.settings.deviceinfo.SimEidPreferenceController$getEid$2"
    f = "SimEidPreferenceController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/deviceinfo/SimEidPreferenceController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;-><init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 120
    iget v0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string/jumbo p1, "ro.vendor.miui.support_esim"

    const/4 v0, 0x0

    .line 121
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p0, "miui.telephony.TelephonyManagerEx"

    .line 122
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getDefault"

    new-array v2, v0, [Ljava/lang/Class;

    .line 123
    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getProductEid"

    new-array v2, v0, [Ljava/lang/Class;

    .line 124
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "ro.vendor.miui.use_google_lpa"

    .line 125
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 126
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$getEidStatus$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->getEid()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    .line 120
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
