.class public final enum Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    const-string v1, "BUTT"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    .line 7
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 10
    const-string v2, "ROUND"

    .line 12
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 18
    const-string v3, "UNKNOWN"

    .line 20
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    .line 23
    filled-new-array {v0, v1, v2}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 8
    return-object v0
    .line 10
.end method
