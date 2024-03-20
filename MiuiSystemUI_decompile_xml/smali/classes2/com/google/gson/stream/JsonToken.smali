.class public final enum Lcom/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/google/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/google/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/google/gson/stream/JsonToken;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/gson/stream/JsonToken;

    .line 2
    const-string v1, "BEGIN_ARRAY"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 10
    new-instance v1, Lcom/google/gson/stream/JsonToken;

    .line 12
    const-string v2, "END_ARRAY"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 20
    new-instance v2, Lcom/google/gson/stream/JsonToken;

    .line 22
    const-string v3, "BEGIN_OBJECT"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 30
    new-instance v3, Lcom/google/gson/stream/JsonToken;

    .line 32
    const-string v4, "END_OBJECT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 40
    new-instance v4, Lcom/google/gson/stream/JsonToken;

    .line 42
    const-string v5, "NAME"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 50
    new-instance v5, Lcom/google/gson/stream/JsonToken;

    .line 52
    const-string v6, "STRING"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 60
    new-instance v6, Lcom/google/gson/stream/JsonToken;

    .line 62
    const-string v7, "NUMBER"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 70
    new-instance v7, Lcom/google/gson/stream/JsonToken;

    .line 72
    const-string v8, "BOOLEAN"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 80
    new-instance v8, Lcom/google/gson/stream/JsonToken;

    .line 82
    const-string v9, "NULL"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 91
    new-instance v9, Lcom/google/gson/stream/JsonToken;

    .line 93
    const-string v10, "END_DOCUMENT"

    .line 95
    const/16 v11, 0x9

    .line 97
    invoke-direct {v9, v10, v11}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v9, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 102
    filled-new-array/range {v0 .. v9}, [Lcom/google/gson/stream/JsonToken;

    .line 104
    move-result-object v0

    .line 107
    sput-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    .line 108
    return-void
    .line 110
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/stream/JsonToken;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/stream/JsonToken;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    .line 2
    invoke-virtual {v0}, [Lcom/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/stream/JsonToken;

    .line 8
    return-object v0
    .line 10
.end method
