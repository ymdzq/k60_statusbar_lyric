.class public final Lcom/android/systemui/plugins/ClockSettings$Companion;
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
    invoke-direct {p0}, Lcom/android/systemui/plugins/ClockSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockSettings;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    return-object v0

    .line 17
    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    .line 18
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/android/systemui/plugins/ClockSettings;

    .line 23
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    move-object v1, v0

    .line 44
    :goto_2
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 49
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v0

    .line 66
    :cond_4
    invoke-direct {p1, v1, v0}, Lcom/android/systemui/plugins/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/systemui/plugins/ClockSettings;->setMetadata(Lorg/json/JSONObject;)V

    .line 88
    :cond_5
    return-object p1
    .line 91
.end method

.method public final serialize(Lcom/android/systemui/plugins/ClockSettings;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-string p0, ""

    .line 4
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/plugins/ClockSettings;->getClockId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/plugins/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {}, Lcom/android/systemui/plugins/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/plugins/ClockSettings;->getMetadata()Lorg/json/JSONObject;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    return-object p0
    .line 52
.end method
