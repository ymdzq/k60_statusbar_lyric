.class public final enum Lcom/airbnb/lottie/model/layer/Layer$LayerType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 2
    const-string v1, "PRE_COMP"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 10
    new-instance v1, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 12
    const-string v2, "SOLID"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 20
    const-string v3, "IMAGE"

    .line 22
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 28
    new-instance v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 30
    const-string v4, "NULL"

    .line 32
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance v4, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 38
    const-string v5, "SHAPE"

    .line 40
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 46
    const-string v6, "TEXT"

    .line 48
    const/4 v7, 0x5

    .line 50
    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 51
    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 54
    const-string v7, "UNKNOWN"

    .line 56
    const/4 v8, 0x6

    .line 58
    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 62
    filled-new-array/range {v0 .. v6}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 64
    move-result-object v0

    .line 67
    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 2
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 8
    return-object v0
    .line 10
.end method
