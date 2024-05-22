.class public final Lcom/android/systemui/plugins/WeatherData$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/WeatherData$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDESCRIPTION_KEY$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSTATE_KEY$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getTEMPERATURE_KEY$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getUSE_CELSIUS_KEY$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method private final readIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
    .line 16
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/android/systemui/plugins/WeatherData;
    .locals 5

    .line 1
    const-string v0, "description"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;->Companion:Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon$Companion;

    .line 8
    const-string/jumbo v2, "state"

    .line 10
    const/4 v3, -0x1

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon$Companion;->fromInt(I)Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

    .line 18
    move-result-object v1

    .line 21
    const-string/jumbo v2, "temperature"

    .line 22
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/plugins/WeatherData$Companion;->readIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 28
    const-string v2, "WeatherData"

    .line 29
    if-eqz v0, :cond_1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    const-string/jumbo v3, "use_celsius"

    .line 35
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    if-nez p0, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    new-instance v4, Lcom/android/systemui/plugins/WeatherData;

    .line 47
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 49
    move-result v3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p0

    .line 56
    invoke-direct {v4, v0, v1, v3, p0}, Lcom/android/systemui/plugins/WeatherData;-><init>(Ljava/lang/String;Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;ZI)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "Weather data parsed "

    .line 62
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, " from "

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v4

    .line 85
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "Weather data did not parse from "

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 p0, 0x0

    .line 103
    return-object p0
    .line 104
.end method
