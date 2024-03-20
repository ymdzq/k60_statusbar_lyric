.class final enum Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$GraphicsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1669
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1670
    new-instance v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v2, "BEGIN_FILL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1671
    new-instance v2, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v3, "BEGIN_GRADIENT_FILL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1672
    new-instance v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v4, "CREATE_GRADIENT_BOX"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1673
    new-instance v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v5, "CURVE_TO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1674
    new-instance v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v6, "CUBIC_CURVE_TO"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1675
    new-instance v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v7, "DRAW_CIRCLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1676
    new-instance v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v8, "DRAW_ELLIPSE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1677
    new-instance v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v9, "DRAW_RECT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1678
    new-instance v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v10, "DRAW_ROUND_RECT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1679
    new-instance v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v11, "LINE_GRADIENT_STYLE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1680
    new-instance v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v12, "LINE_STYLE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1681
    new-instance v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v13, "LINE_TO"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1682
    new-instance v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v14, "MOVE_TO"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1683
    new-instance v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v15, "SET_RENDER_LISTENER"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    move-object/from16 v13, v16

    .line 1668
    filled-new-array/range {v0 .. v14}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1668
    const-class v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1668
    sget-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object v0
.end method
