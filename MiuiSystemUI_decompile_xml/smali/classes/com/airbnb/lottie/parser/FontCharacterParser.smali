.class public abstract Lcom/airbnb/lottie/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "ch"

    .line 2
    const-string/jumbo v1, "size"

    .line 4
    const-string/jumbo v2, "w"

    .line 7
    const-string/jumbo v3, "style"

    .line 10
    const-string v4, "fFamily"

    .line 13
    const-string v5, "data"

    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    move-result-object v0

    .line 24
    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 25
    const-string/jumbo v0, "shapes"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 34
    move-result-object v0

    .line 37
    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    return-void
    .line 40
.end method
