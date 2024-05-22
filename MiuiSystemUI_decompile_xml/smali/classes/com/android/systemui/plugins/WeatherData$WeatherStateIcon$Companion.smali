.class public final Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon$Companion;
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
    invoke-direct {p0}, Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;->values()[Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

    .line 2
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    aget-object v3, p0, v2

    .line 11
    invoke-virtual {v3}, Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;->getId()I

    .line 13
    move-result v4

    .line 16
    if-ne v4, p1, :cond_0

    .line 17
    const/4 v4, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v4, v1

    .line 21
    :goto_1
    if-eqz v4, :cond_1

    .line 22
    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    const/4 v3, 0x0

    .line 28
    :goto_2
    return-object v3
    .line 29
.end method
