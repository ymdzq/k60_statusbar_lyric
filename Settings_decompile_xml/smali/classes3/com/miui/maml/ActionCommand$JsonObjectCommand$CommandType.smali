.class final enum Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$JsonObjectCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;",
        ">;"
    }
.end annotation


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
.method static constructor <clinit>()V
    .locals 9

    .line 2574
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2575
    new-instance v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v2, "PUT_STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2576
    new-instance v2, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v3, "PUT_BOOLEAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2577
    new-instance v3, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v4, "PUT_INT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2578
    new-instance v4, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v5, "PUT_JSON_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2579
    new-instance v5, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v6, "PUT_JSON_ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2580
    new-instance v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const-string v7, "REMOVE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2573
    filled-new-array/range {v0 .. v6}, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2573
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 2573
    const-class v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 2573
    sget-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-object v0
.end method
