.class public final Lcom/android/systemui/plugins/WeatherData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final Companion:Lcom/android/systemui/plugins/WeatherData$Companion;

.field public static final DEBUG:Z = true

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final INVALID_WEATHER_ICON_STATE:I = -0x1

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "WeatherData"

.field public static final TEMPERATURE_KEY:Ljava/lang/String; = "temperature"

.field public static final USE_CELSIUS_KEY:Ljava/lang/String; = "use_celsius"


# instance fields
.field private final description:Ljava/lang/String;

.field private final state:Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

.field private final temperature:I

.field private final useCelsius:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/WeatherData$Companion;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/WeatherData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    sput-object v0, Lcom/android/systemui/plugins/WeatherData;->Companion:Lcom/android/systemui/plugins/WeatherData$Companion;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/plugins/WeatherData;->description:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/plugins/WeatherData;->state:Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/plugins/WeatherData;->useCelsius:Z

    .line 9
    iput p4, p0, Lcom/android/systemui/plugins/WeatherData;->temperature:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/WeatherData;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getState()Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/WeatherData;->state:Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTemperature()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/WeatherData;->temperature:I

    .line 2
    return p0
    .line 4
.end method

.method public final getUseCelsius()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/WeatherData;->useCelsius:Z

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/plugins/WeatherData;->useCelsius:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "C"

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "F"

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/plugins/WeatherData;->state:Lcom/android/systemui/plugins/WeatherData$WeatherStateIcon;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/plugins/WeatherData;->description:Ljava/lang/String;

    .line 13
    iget p0, p0, Lcom/android/systemui/plugins/WeatherData;->temperature:I

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " (\""

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "\") "

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo p0, "\u00b0"

    .line 41
    invoke-static {v3, p0, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0
    .line 48
.end method
