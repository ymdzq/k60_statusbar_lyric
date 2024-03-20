.class public abstract Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "nm"

    .line 2
    const-string v1, "g"

    .line 4
    const-string v2, "o"

    .line 6
    const-string/jumbo v3, "t"

    .line 8
    const-string/jumbo v4, "s"

    .line 11
    const-string v5, "e"

    .line 14
    const-string/jumbo v6, "w"

    .line 16
    const-string v7, "lc"

    .line 19
    const-string v8, "lj"

    .line 21
    const-string v9, "ml"

    .line 23
    const-string v10, "hd"

    .line 25
    const-string v11, "d"

    .line 27
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    move-result-object v0

    .line 36
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 37
    const-string v0, "p"

    .line 39
    const-string v1, "k"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 47
    move-result-object v0

    .line 50
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 51
    const-string v0, "n"

    .line 53
    const-string/jumbo v1, "v"

    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 66
    return-void
    .line 68
.end method
