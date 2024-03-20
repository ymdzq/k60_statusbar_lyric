.class final enum Lcom/miui/maml/util/ColorParser$ExpressionType;
.super Ljava/lang/Enum;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/ColorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExpressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/util/ColorParser$ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/util/ColorParser$ExpressionType;

.field public static final enum ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

.field public static final enum CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

.field public static final enum INVALID:Lcom/miui/maml/util/ColorParser$ExpressionType;

.field public static final enum VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/miui/maml/util/ColorParser$ExpressionType;

    const-string v1, "CONST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/ColorParser$ExpressionType;->CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 33
    new-instance v1, Lcom/miui/maml/util/ColorParser$ExpressionType;

    const-string v2, "VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 34
    new-instance v2, Lcom/miui/maml/util/ColorParser$ExpressionType;

    const-string v3, "ARGB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/util/ColorParser$ExpressionType;->ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 35
    new-instance v3, Lcom/miui/maml/util/ColorParser$ExpressionType;

    const-string v4, "INVALID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/util/ColorParser$ExpressionType;->INVALID:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Lcom/miui/maml/util/ColorParser$ExpressionType;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lcom/miui/maml/util/ColorParser$ExpressionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/util/ColorParser$ExpressionType;
    .locals 1

    .line 31
    const-class v0, Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/ColorParser$ExpressionType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/util/ColorParser$ExpressionType;
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v0}, [Lcom/miui/maml/util/ColorParser$ExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/util/ColorParser$ExpressionType;

    return-object v0
.end method
