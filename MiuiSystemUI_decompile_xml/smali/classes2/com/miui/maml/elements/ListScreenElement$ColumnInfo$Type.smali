.class public final enum Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 2
    const-string v1, "STRING"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 10
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 12
    const-string v2, "BITMAP"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 20
    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 22
    const-string v3, "INTEGER"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 30
    new-instance v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 32
    const-string v4, "DOUBLE"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 40
    new-instance v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 42
    const-string v5, "LONG"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 50
    new-instance v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 52
    const-string v6, "FLOAT"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 60
    filled-new-array/range {v0 .. v5}, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public isNumber()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 6
    if-eq p0, v0, :cond_1

    .line 8
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 10
    if-eq p0, v0, :cond_1

    .line 12
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 14
    if-ne p0, v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
    .line 22
.end method
