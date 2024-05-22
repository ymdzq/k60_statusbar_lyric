.class final enum Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field public static final enum UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 10
    new-instance v1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 12
    const-string v2, "UPDATE_UNIFORM"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 20
    filled-new-array {v0, v1}, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 26
    return-void
    .line 28
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 8
    return-object v0
    .line 10
.end method
