.class final synthetic Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Lkotlin/Pair;

    .line 2
    const-string v1, "<init>(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 4
    const/4 v2, 0x3

    .line 6
    invoke-direct {p0, v2, v0, v1}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 2
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    new-instance p0, Lkotlin/Pair;

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    return-object p0
    .line 11
.end method
