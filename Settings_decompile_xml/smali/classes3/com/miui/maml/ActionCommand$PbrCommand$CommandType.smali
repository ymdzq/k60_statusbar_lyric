.class final enum Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$PbrCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field public static final enum UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1590
    new-instance v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 1591
    new-instance v1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    const-string v2, "UPDATE_UNIFORM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 1589
    filled-new-array {v0, v1}, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    .locals 1

    .line 1589
    const-class v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    .locals 1

    .line 1589
    sget-object v0, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    return-object v0
.end method
