.class final synthetic Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;->INSTANCE:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Lkotlin/Triple;

    .line 2
    const-string v1, "<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 4
    const/4 v2, 0x4

    .line 6
    invoke-direct {p0, v2, v0, v1}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p2

    .line 15
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 16
    new-instance p3, Lkotlin/Triple;

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p2

    .line 27
    invoke-direct {p3, p1, p0, p2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-object p3
    .line 31
.end method
