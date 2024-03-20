.class public final Lcom/android/keyguard/event/KeyguardEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/event/KeyguardEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClockStyle(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    const-string/jumbo v0, "\u6c34\u5e73\u5c45\u4e2d\u65f6\u949f"

    .line 3
    if-eq p1, p0, :cond_3

    .line 6
    const/4 p0, 0x2

    .line 8
    if-eq p1, p0, :cond_2

    .line 9
    const/4 p0, 0x3

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    const/4 p0, 0x4

    .line 14
    const-string/jumbo v1, "\u5de6\u4e0a\u89d2\u5927\u65f6\u949f"

    .line 15
    if-eq p1, p0, :cond_0

    .line 18
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string/jumbo v0, "\u7ad6\u76f4\u65f6\u949f"

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    const-string/jumbo v0, "\u5de6\u4e0a\u89d2\u65f6\u949f"

    .line 31
    :cond_3
    :goto_0
    return-object v0
    .line 34
.end method

.method public final getUnlockWay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    move-result p0

    .line 5
    const/16 v0, 0xcca

    .line 6
    if-eq p0, v0, :cond_8

    .line 8
    const/16 v0, 0xe07

    .line 10
    if-eq p0, v0, :cond_6

    .line 12
    const v0, 0x2e0635

    .line 14
    if-eq p0, v0, :cond_4

    .line 17
    const v0, 0x2fd65d

    .line 19
    if-eq p0, v0, :cond_2

    .line 22
    const v0, 0x33af38

    .line 24
    if-eq p0, v0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "none"

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo p0, "\u65e0\u5bc6\u7801"

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    const-string p0, "face"

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    const-string/jumbo p0, "\u4eba\u8138\u89e3\u9501"

    .line 52
    goto :goto_1

    .line 55
    :cond_4
    const-string p0, "band"

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p0

    .line 61
    if-nez p0, :cond_5

    .line 62
    goto :goto_0

    .line 64
    :cond_5
    const-string/jumbo p0, "\u84dd\u7259\u89e3\u9501"

    .line 65
    goto :goto_1

    .line 68
    :cond_6
    const-string p0, "pw"

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 74
    if-nez p0, :cond_7

    .line 75
    goto :goto_0

    .line 77
    :cond_7
    const-string/jumbo p0, "\u5bc6\u7801\u89e3\u9501"

    .line 78
    goto :goto_1

    .line 81
    :cond_8
    const-string p0, "fp"

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p0

    .line 87
    if-nez p0, :cond_9

    .line 88
    :goto_0
    const-string p0, ""

    .line 90
    goto :goto_1

    .line 92
    :cond_9
    const-string/jumbo p0, "\u6307\u7eb9\u89e3\u9501"

    .line 93
    :goto_1
    return-object p0
    .line 96
.end method

.method public final trackIfEventParams(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const-string/jumbo p0, "\u662f"

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 8
    :goto_0
    return-object p0
    .line 11
.end method
