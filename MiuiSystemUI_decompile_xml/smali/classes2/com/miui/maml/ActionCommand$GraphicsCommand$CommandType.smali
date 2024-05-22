.class final enum Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 2
    const-string v1, "INVALID"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 10
    new-instance v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 12
    const-string v2, "BEGIN_FILL"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 20
    new-instance v2, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 22
    const-string v3, "BEGIN_GRADIENT_FILL"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 30
    new-instance v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 32
    const-string v4, "CREATE_GRADIENT_BOX"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 40
    new-instance v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 42
    const-string v5, "CURVE_TO"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 50
    new-instance v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 52
    const-string v6, "CUBIC_CURVE_TO"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 60
    new-instance v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 62
    const-string v7, "DRAW_CIRCLE"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 70
    new-instance v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 72
    const-string v8, "DRAW_ELLIPSE"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 80
    new-instance v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 82
    const-string v9, "DRAW_RECT"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 91
    new-instance v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 93
    const-string v10, "DRAW_ROUND_RECT"

    .line 95
    const/16 v11, 0x9

    .line 97
    invoke-direct {v9, v10, v11}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 102
    new-instance v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 104
    const-string v11, "LINE_GRADIENT_STYLE"

    .line 106
    const/16 v12, 0xa

    .line 108
    invoke-direct {v10, v11, v12}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 113
    new-instance v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 115
    const-string v12, "LINE_STYLE"

    .line 117
    const/16 v13, 0xb

    .line 119
    invoke-direct {v11, v12, v13}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 124
    new-instance v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 126
    const-string v13, "LINE_TO"

    .line 128
    const/16 v14, 0xc

    .line 130
    invoke-direct {v12, v13, v14}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 132
    sput-object v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 135
    new-instance v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 137
    const-string v14, "MOVE_TO"

    .line 139
    const/16 v15, 0xd

    .line 141
    invoke-direct {v13, v14, v15}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 143
    sput-object v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 146
    new-instance v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 148
    const-string v15, "SET_RENDER_LISTENER"

    .line 150
    move-object/from16 v16, v13

    .line 152
    const/16 v13, 0xe

    .line 154
    invoke-direct {v14, v15, v13}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 156
    sput-object v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 159
    move-object/from16 v13, v16

    .line 161
    filled-new-array/range {v0 .. v14}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 163
    move-result-object v0

    .line 166
    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 167
    return-void
    .line 169
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 8
    return-object v0
    .line 10
.end method
