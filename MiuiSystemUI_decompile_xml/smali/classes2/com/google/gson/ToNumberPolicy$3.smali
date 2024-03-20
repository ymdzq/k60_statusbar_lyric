.class final enum Lcom/google/gson/ToNumberPolicy$3;
.super Lcom/google/gson/ToNumberPolicy;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "LONG_OR_DOUBLE"

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/gson/ToNumberPolicy;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 6

    .line 1
    const-string p0, "; at path "

    .line 2
    const-string v0, "JSON forbids NaN and infinities: "

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    const/4 v2, 0x1

    .line 19
    :try_start_1
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    .line 24
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    invoke-virtual {v3}, Ljava/lang/Double;->isNaN()Z

    .line 30
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    :cond_0
    iget-boolean v4, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 36
    if-eqz v4, :cond_2

    .line 38
    :cond_1
    return-object v3

    .line 40
    :cond_2
    new-instance v4, Lcom/google/gson/stream/MalformedJsonException;

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    invoke-direct {v4, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    new-instance v3, Lcom/google/gson/JsonParseException;

    .line 70
    const-string v4, "Cannot parse "

    .line 72
    invoke-static {v4, v1, p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-direct {v3, p0, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    throw v3
    .line 92
.end method
