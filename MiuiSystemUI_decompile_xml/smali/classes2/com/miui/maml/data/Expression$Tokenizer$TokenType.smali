.class public final enum Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_JSON_ARR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_JSON_OBJ:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 10
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 12
    const-string v2, "VAR_NUM"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 20
    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 22
    const-string v3, "VAR_STR"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 30
    new-instance v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 32
    const-string v4, "VAR_JSON_OBJ"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_OBJ:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 40
    new-instance v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 42
    const-string v5, "VAR_JSON_ARR"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_ARR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 50
    new-instance v5, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 52
    const-string v6, "NUM"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 60
    new-instance v6, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 62
    const-string v7, "STR"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 70
    new-instance v7, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 72
    const-string v8, "OPE"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 80
    new-instance v8, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 82
    const-string v9, "FUN"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 91
    new-instance v9, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 93
    const-string v10, "BRACKET_ROUND"

    .line 95
    const/16 v11, 0x9

    .line 97
    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v9, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 102
    new-instance v10, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 104
    const-string v11, "BRACKET_SQUARE"

    .line 106
    const/16 v12, 0xa

    .line 108
    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v10, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 113
    filled-new-array/range {v0 .. v10}, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 115
    move-result-object v0

    .line 118
    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 119
    return-void
    .line 121
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 8
    return-object v0
    .line 10
.end method
