.class final enum Lcom/miui/maml/util/IntentInfo$Type;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum INT:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum LONG:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum STRING:Lcom/miui/maml/util/IntentInfo$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    .line 2
    const-string v1, "STRING"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    .line 10
    new-instance v1, Lcom/miui/maml/util/IntentInfo$Type;

    .line 12
    const-string v2, "INT"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 20
    new-instance v2, Lcom/miui/maml/util/IntentInfo$Type;

    .line 22
    const-string v3, "LONG"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    .line 30
    new-instance v3, Lcom/miui/maml/util/IntentInfo$Type;

    .line 32
    const-string v4, "FLOAT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 40
    new-instance v4, Lcom/miui/maml/util/IntentInfo$Type;

    .line 42
    const-string v5, "DOUBLE"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 50
    new-instance v5, Lcom/miui/maml/util/IntentInfo$Type;

    .line 52
    const-string v6, "BOOLEAN"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    .line 60
    filled-new-array/range {v0 .. v5}, [Lcom/miui/maml/util/IntentInfo$Type;

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->$VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

    .line 66
    return-void
    .line 68
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/util/IntentInfo$Type;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/util/IntentInfo$Type;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->$VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/util/IntentInfo$Type;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/util/IntentInfo$Type;

    .line 8
    return-object v0
    .line 10
.end method
