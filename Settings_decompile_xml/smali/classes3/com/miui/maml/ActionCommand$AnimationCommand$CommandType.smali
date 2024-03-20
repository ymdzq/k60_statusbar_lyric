.class final enum Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$AnimationCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2117
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2118
    new-instance v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v2, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2119
    new-instance v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v3, "PAUSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2120
    new-instance v3, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v4, "RESUME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2121
    new-instance v4, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v5, "PLAY_WITH_PARAMS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2116
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 2116
    const-class v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 2116
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method
