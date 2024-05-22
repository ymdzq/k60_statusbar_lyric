.class final enum Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 10
    new-instance v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 12
    const-string v2, "PLAY"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 20
    new-instance v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 22
    const-string v3, "PAUSE"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 30
    new-instance v3, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 32
    const-string v4, "RESUME"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 40
    new-instance v4, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 42
    const-string v5, "PLAY_WITH_PARAMS"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 50
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 52
    move-result-object v0

    .line 55
    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 56
    return-void
    .line 58
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 8
    return-object v0
    .line 10
.end method
