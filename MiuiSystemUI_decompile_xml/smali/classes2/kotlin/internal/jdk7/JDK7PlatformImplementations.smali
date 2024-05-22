.class public Lkotlin/internal/jdk7/JDK7PlatformImplementations;
.super Lkotlin/internal/PlatformImplementations;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/internal/PlatformImplementations;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v0

    .line 9
    const/16 v1, 0x13

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 20
    goto :goto_2

    .line 23
    :cond_2
    invoke-super {p0, p1, p2}, Lkotlin/internal/PlatformImplementations;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 24
    :goto_2
    return-void
    .line 27
.end method
