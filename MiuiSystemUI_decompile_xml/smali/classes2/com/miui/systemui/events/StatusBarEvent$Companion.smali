.class public final Lcom/miui/systemui/events/StatusBarEvent$Companion;
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
    invoke-direct {p0}, Lcom/miui/systemui/events/StatusBarEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getForceBlack(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "force_black_v2"

    .line 6
    const/4 v1, -0x1

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    const-string p0, "2"

    .line 16
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object p0

    .line 22
    const-string p1, "force_black"

    .line 23
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 25
    move-result p0

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    const-string p0, "1"

    .line 31
    return-object p0

    .line 33
    :cond_1
    const-string p0, "0"

    .line 34
    return-object p0
    .line 36
.end method
