.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/JsonNull;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    .line 4
    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    instance-of p0, p1, Lcom/google/gson/JsonNull;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
    .line 12
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const-class p0, Lcom/google/gson/JsonNull;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
