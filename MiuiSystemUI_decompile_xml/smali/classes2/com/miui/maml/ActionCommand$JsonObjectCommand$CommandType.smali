.class final enum Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 10
    new-instance v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 12
    const-string v2, "PUT_STRING"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 20
    new-instance v2, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 22
    const-string v3, "PUT_BOOLEAN"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 30
    new-instance v3, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 32
    const-string v4, "PUT_INT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 40
    new-instance v4, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 42
    const-string v5, "PUT_JSON_OBJECT"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 50
    new-instance v5, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 52
    const-string v6, "PUT_JSON_ARRAY"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 60
    new-instance v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 62
    const-string v7, "REMOVE"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 70
    filled-new-array/range {v0 .. v6}, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 72
    move-result-object v0

    .line 75
    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 76
    return-void
    .line 78
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 8
    return-object v0
    .line 10
.end method
