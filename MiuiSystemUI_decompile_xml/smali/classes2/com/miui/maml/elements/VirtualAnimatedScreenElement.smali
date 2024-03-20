.class public Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final PROPERTY_NAME_RESERVE_COLOR_1:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_COLOR_2:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_1:Ljava/lang/String; = "float1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_2:Ljava/lang/String; = "float2"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_3:Ljava/lang/String; = "float3"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_4:Ljava/lang/String; = "float4"

.field public static final TAG_NAME:Ljava/lang/String; = "VirtualElement"


# instance fields
.field private mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;

    .line 2
    const-string v1, "color1"

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 9
    new-instance v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;

    .line 11
    invoke-direct {v2, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 13
    sput-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 16
    new-instance v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;

    .line 18
    const-string v4, "float1"

    .line 20
    invoke-direct {v3, v4}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 22
    sput-object v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    .line 25
    new-instance v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;

    .line 27
    const-string v6, "float2"

    .line 29
    invoke-direct {v5, v6}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;-><init>(Ljava/lang/String;)V

    .line 31
    sput-object v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    .line 34
    new-instance v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;

    .line 36
    const-string v8, "float3"

    .line 38
    invoke-direct {v7, v8}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;-><init>(Ljava/lang/String;)V

    .line 40
    sput-object v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    .line 43
    new-instance v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;

    .line 45
    const-string v10, "float4"

    .line 47
    invoke-direct {v9, v10}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;-><init>(Ljava/lang/String;)V

    .line 49
    sput-object v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    .line 52
    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    invoke-virtual {v11, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    invoke-virtual {v1, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    invoke-virtual {v1, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    invoke-virtual {v1, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    const/16 v4, 0x44d

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 91
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    const/16 v6, 0x44e

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v6

    .line 102
    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    const/16 v8, 0x44f

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v8

    .line 113
    invoke-virtual {v1, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    const/16 v10, 0x450

    .line 119
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v10

    .line 124
    invoke-virtual {v1, v10, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    const/16 v11, 0x451

    .line 130
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v11

    .line 135
    invoke-virtual {v1, v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    const/16 v12, 0x452

    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v12

    .line 146
    invoke-virtual {v1, v12, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 155
    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    invoke-virtual {v0, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    invoke-virtual {v0, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    invoke-virtual {v0, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
    .line 180
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance v8, Lcom/miui/maml/folme/PropertyWrapper;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 14
    const-string v3, ".color1"

    .line 16
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 27
    move-result v5

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    move-object v1, v8

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 34
    iput-object v8, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 37
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 46
    const-string v4, ".color2"

    .line 48
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v10

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 54
    move-result-object v11

    .line 57
    const/16 v16, 0x0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 60
    move-result v13

    .line 63
    const-wide/16 v17, 0x0

    .line 64
    move-object v9, v1

    .line 66
    move-object/from16 v12, v16

    .line 67
    move-wide/from16 v14, v17

    .line 69
    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 71
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 74
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 83
    const-string v4, ".float1"

    .line 85
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 91
    move-result-object v4

    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 96
    move-result v6

    .line 99
    const-wide/16 v10, 0x0

    .line 100
    move-object v2, v1

    .line 102
    move-object v5, v9

    .line 103
    move-wide v7, v10

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 105
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 108
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 117
    const-string v4, ".float2"

    .line 119
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 125
    move-result-object v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 129
    move-result v6

    .line 132
    move-object v2, v1

    .line 133
    move-object/from16 v5, v16

    .line 134
    move-wide/from16 v7, v17

    .line 136
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 138
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 141
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 150
    const-string v4, ".float3"

    .line 152
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v6

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 158
    move-result-object v7

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 162
    move-result v2

    .line 165
    move-object v5, v1

    .line 166
    move-object v8, v9

    .line 167
    move v9, v2

    .line 168
    invoke-direct/range {v5 .. v11}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 169
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 172
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 181
    const-string v4, ".float4"

    .line 183
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 189
    move-result-object v4

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 193
    move-result v6

    .line 196
    move-object v2, v1

    .line 197
    move-object/from16 v5, v16

    .line 198
    move-wide/from16 v7, v17

    .line 200
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 202
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 205
    return-void
    .line 207
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public isInFolmeMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    return p0
    .line 4
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public tick(J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
