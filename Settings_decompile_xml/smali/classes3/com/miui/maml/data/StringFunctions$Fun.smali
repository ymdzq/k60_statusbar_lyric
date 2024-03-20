.class final enum Lcom/miui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


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
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 20
    new-instance v1, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v2, "STR_TOLOWER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 21
    new-instance v2, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v3, "STR_TOUPPER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 22
    new-instance v3, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v4, "STR_TRIM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 23
    new-instance v4, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v5, "STR_REPLACE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 24
    new-instance v5, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v6, "STR_REPLACEALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 25
    new-instance v6, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v7, "STR_REPLACEFIRST"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 27
    new-instance v7, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v8, "STR_CONTAINS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 28
    new-instance v8, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v9, "STR_STARTWITH"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 29
    new-instance v9, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v10, "STR_ENDSWITH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 30
    new-instance v10, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v11, "STR_ISEMPTY"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 31
    new-instance v11, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v12, "STR_MATCHES"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 32
    new-instance v12, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v13, "STR_INDEXOF"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 33
    new-instance v13, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v14, "STR_LASTINDEXOF"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 17
    filled-new-array/range {v0 .. v13}, [Lcom/miui/maml/data/StringFunctions$Fun;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 17
    const-class v0, Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/StringFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, [Lcom/miui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/StringFunctions$Fun;

    return-object v0
.end method
