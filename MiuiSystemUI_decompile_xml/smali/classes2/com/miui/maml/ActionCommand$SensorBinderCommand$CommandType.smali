.class final enum Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 10
    new-instance v1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 12
    const-string v2, "TURN_ON"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 20
    new-instance v2, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 22
    const-string v3, "TURN_OFF"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 30
    filled-new-array {v0, v1, v2}, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 36
    return-void
    .line 38
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 8
    return-object v0
    .line 10
.end method
