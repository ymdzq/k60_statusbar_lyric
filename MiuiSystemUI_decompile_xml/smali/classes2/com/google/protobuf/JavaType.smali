.class public final enum Lcom/google/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/protobuf/JavaType;

.field public static final enum BOOLEAN:Lcom/google/protobuf/JavaType;

.field public static final enum BYTE_STRING:Lcom/google/protobuf/JavaType;

.field public static final enum DOUBLE:Lcom/google/protobuf/JavaType;

.field public static final enum ENUM:Lcom/google/protobuf/JavaType;

.field public static final enum FLOAT:Lcom/google/protobuf/JavaType;

.field public static final enum INT:Lcom/google/protobuf/JavaType;

.field public static final enum LONG:Lcom/google/protobuf/JavaType;

.field public static final enum MESSAGE:Lcom/google/protobuf/JavaType;

.field public static final enum STRING:Lcom/google/protobuf/JavaType;

.field public static final enum VOID:Lcom/google/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v6, Lcom/google/protobuf/JavaType;

    .line 2
    const-string v1, "VOID"

    .line 4
    const/4 v2, 0x0

    .line 6
    const-class v3, Ljava/lang/Void;

    .line 7
    const-class v4, Ljava/lang/Void;

    .line 9
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    sput-object v6, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    .line 16
    new-instance v1, Lcom/google/protobuf/JavaType;

    .line 18
    const-string v8, "INT"

    .line 20
    const/4 v9, 0x1

    .line 22
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    const-class v11, Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v12

    .line 31
    move-object v7, v1

    .line 32
    move-object v10, v13

    .line 33
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 34
    sput-object v1, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    .line 37
    new-instance v2, Lcom/google/protobuf/JavaType;

    .line 39
    const-string v15, "LONG"

    .line 41
    const/16 v16, 0x2

    .line 43
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 45
    const-class v18, Ljava/lang/Long;

    .line 47
    const-wide/16 v3, 0x0

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object v19

    .line 54
    move-object v14, v2

    .line 55
    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 56
    sput-object v2, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    .line 59
    new-instance v3, Lcom/google/protobuf/JavaType;

    .line 61
    const-string v8, "FLOAT"

    .line 63
    const/4 v9, 0x3

    .line 65
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    const-class v11, Ljava/lang/Float;

    .line 68
    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v12

    .line 74
    move-object v7, v3

    .line 75
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    sput-object v3, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    .line 79
    new-instance v4, Lcom/google/protobuf/JavaType;

    .line 81
    const-string v15, "DOUBLE"

    .line 83
    const/16 v16, 0x4

    .line 85
    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 87
    const-class v18, Ljava/lang/Double;

    .line 89
    const-wide/16 v7, 0x0

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 93
    move-result-object v19

    .line 96
    move-object v14, v4

    .line 97
    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 98
    sput-object v4, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    .line 101
    new-instance v5, Lcom/google/protobuf/JavaType;

    .line 103
    const-string v8, "BOOLEAN"

    .line 105
    const/4 v9, 0x5

    .line 107
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 108
    const-class v11, Ljava/lang/Boolean;

    .line 110
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    move-object v7, v5

    .line 114
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    sput-object v5, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    .line 118
    new-instance v7, Lcom/google/protobuf/JavaType;

    .line 120
    const-string v15, "STRING"

    .line 122
    const/16 v16, 0x6

    .line 124
    const-class v17, Ljava/lang/String;

    .line 126
    const-class v18, Ljava/lang/String;

    .line 128
    const-string v19, ""

    .line 130
    move-object v14, v7

    .line 132
    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    sput-object v7, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    .line 136
    new-instance v8, Lcom/google/protobuf/JavaType;

    .line 138
    const-string v21, "BYTE_STRING"

    .line 140
    const/16 v22, 0x7

    .line 142
    const-class v23, Lcom/google/protobuf/ByteString;

    .line 144
    const-class v24, Lcom/google/protobuf/ByteString;

    .line 146
    sget-object v25, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 148
    move-object/from16 v20, v8

    .line 150
    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 152
    sput-object v8, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    .line 155
    new-instance v9, Lcom/google/protobuf/JavaType;

    .line 157
    const-string v11, "ENUM"

    .line 159
    const/16 v12, 0x8

    .line 161
    const-class v14, Ljava/lang/Integer;

    .line 163
    const/4 v15, 0x0

    .line 165
    move-object v10, v9

    .line 166
    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 167
    sput-object v9, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    .line 170
    new-instance v10, Lcom/google/protobuf/JavaType;

    .line 172
    const-string v17, "MESSAGE"

    .line 174
    const/16 v18, 0x9

    .line 176
    const-class v19, Ljava/lang/Object;

    .line 178
    const-class v20, Ljava/lang/Object;

    .line 180
    const/16 v21, 0x0

    .line 182
    move-object/from16 v16, v10

    .line 184
    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 186
    sput-object v10, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    .line 189
    move-object v0, v6

    .line 191
    move-object v6, v7

    .line 192
    move-object v7, v8

    .line 193
    move-object v8, v9

    .line 194
    move-object v9, v10

    .line 195
    filled-new-array/range {v0 .. v9}, [Lcom/google/protobuf/JavaType;

    .line 196
    move-result-object v0

    .line 199
    sput-object v0, Lcom/google/protobuf/JavaType;->$VALUES:[Lcom/google/protobuf/JavaType;

    .line 200
    return-void
    .line 202
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 7
    iput-object p5, p0, Lcom/google/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    .line 9
    return-void
    .line 11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/JavaType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/JavaType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/JavaType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/protobuf/JavaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/JavaType;->$VALUES:[Lcom/google/protobuf/JavaType;

    .line 2
    invoke-virtual {v0}, [Lcom/google/protobuf/JavaType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/protobuf/JavaType;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getBoxedType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 2
    return-object p0
    .line 4
.end method
