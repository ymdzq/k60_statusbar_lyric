.class final Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 4
    move-result p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 8
    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 12
    move-result v1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 16
    move-result v2

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string v3, "onTrustChanged enabled: "

    .line 24
    const-string v4, ", newlyUnlocked: "

    .line 26
    const-string v5, ", userId: "

    .line 28
    invoke-static {v3, p0, v4, v0, v5}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p0

    .line 33
    const-string v0, ", flags: "

    .line 34
    const-string v3, ", grantMessages: "

    .line 36
    invoke-static {p0, v1, v0, v2, v3}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0
    .line 48
.end method
