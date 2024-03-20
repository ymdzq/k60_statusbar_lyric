.class final enum Lcom/miui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 10
    new-instance v1, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 12
    const-string v2, "STR_TOLOWER"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 20
    new-instance v2, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 22
    const-string v3, "STR_TOUPPER"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 30
    new-instance v3, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 32
    const-string v4, "STR_TRIM"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 40
    new-instance v4, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 42
    const-string v5, "STR_REPLACE"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 50
    new-instance v5, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 52
    const-string v6, "STR_REPLACEALL"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 60
    new-instance v6, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 62
    const-string v7, "STR_REPLACEFIRST"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 70
    new-instance v7, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 72
    const-string v8, "STR_CONTAINS"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 80
    new-instance v8, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 82
    const-string v9, "STR_STARTWITH"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 91
    new-instance v9, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 93
    const-string v10, "STR_ENDSWITH"

    .line 95
    const/16 v11, 0x9

    .line 97
    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v9, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 102
    new-instance v10, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 104
    const-string v11, "STR_ISEMPTY"

    .line 106
    const/16 v12, 0xa

    .line 108
    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v10, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 113
    new-instance v11, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 115
    const-string v12, "STR_MATCHES"

    .line 117
    const/16 v13, 0xb

    .line 119
    invoke-direct {v11, v12, v13}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v11, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 124
    new-instance v12, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 126
    const-string v13, "STR_INDEXOF"

    .line 128
    const/16 v14, 0xc

    .line 130
    invoke-direct {v12, v13, v14}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 132
    sput-object v12, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 135
    new-instance v13, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 137
    const-string v14, "STR_LASTINDEXOF"

    .line 139
    const/16 v15, 0xd

    .line 141
    invoke-direct {v13, v14, v15}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 143
    sput-object v13, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 146
    filled-new-array/range {v0 .. v13}, [Lcom/miui/maml/data/StringFunctions$Fun;

    .line 148
    move-result-object v0

    .line 151
    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    .line 152
    return-void
    .line 154
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/StringFunctions$Fun;

    .line 8
    return-object v0
    .line 10
.end method
