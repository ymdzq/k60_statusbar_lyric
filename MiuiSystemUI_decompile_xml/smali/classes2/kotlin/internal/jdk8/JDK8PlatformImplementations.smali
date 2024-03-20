.class public Lkotlin/internal/jdk8/JDK8PlatformImplementations;
.super Lkotlin/internal/jdk7/JDK7PlatformImplementations;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/internal/jdk7/JDK7PlatformImplementations;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final defaultPlatformRandom()Lkotlin/random/Random;
    .locals 1

    .line 1
    sget-object p0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p0

    .line 9
    const/16 v0, 0x22

    .line 10
    if-lt p0, v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    if-eqz p0, :cond_2

    .line 18
    new-instance p0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    .line 20
    invoke-direct {p0}, Lkotlin/random/jdk8/PlatformThreadLocalRandom;-><init>()V

    .line 22
    goto :goto_2

    .line 25
    :cond_2
    new-instance p0, Lkotlin/random/FallbackThreadLocalRandom;

    .line 26
    invoke-direct {p0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    .line 28
    :goto_2
    return-object p0
    .line 31
.end method
