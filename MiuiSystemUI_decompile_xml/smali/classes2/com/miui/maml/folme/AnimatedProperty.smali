.class public abstract Lcom/miui/maml/folme/AnimatedProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/folme/IAnimatedProperty;


# static fields
.field public static final ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field public static final PROPERTY_NAME_H:Ljava/lang/String; = "h"

.field public static final PROPERTY_NAME_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final PROPERTY_NAME_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final PROPERTY_NAME_PIVOT_Z:Ljava/lang/String; = "pivotZ"

.field public static final PROPERTY_NAME_ROTATION:Ljava/lang/String; = "rotation"

.field public static final PROPERTY_NAME_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final PROPERTY_NAME_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final PROPERTY_NAME_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final PROPERTY_NAME_TINT_COLOR:Ljava/lang/String; = "tintColor"

.field public static final PROPERTY_NAME_W:Ljava/lang/String; = "w"

.field public static final PROPERTY_NAME_X:Ljava/lang/String; = "x"

.field public static final PROPERTY_NAME_Y:Ljava/lang/String; = "y"

.field public static final ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$1;

    .line 9
    const-string/jumbo v1, "x"

    .line 11
    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$1;-><init>(Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 17
    new-instance v2, Lcom/miui/maml/folme/AnimatedProperty$2;

    .line 19
    const-string/jumbo v3, "y"

    .line 21
    invoke-direct {v2, v3}, Lcom/miui/maml/folme/AnimatedProperty$2;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v2, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 27
    new-instance v4, Lcom/miui/maml/folme/AnimatedProperty$3;

    .line 29
    const-string v5, "scaleX"

    .line 31
    invoke-direct {v4, v5}, Lcom/miui/maml/folme/AnimatedProperty$3;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v4, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 36
    new-instance v6, Lcom/miui/maml/folme/AnimatedProperty$4;

    .line 38
    const-string v7, "scaleY"

    .line 40
    invoke-direct {v6, v7}, Lcom/miui/maml/folme/AnimatedProperty$4;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v6, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 45
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$5;

    .line 47
    const-string v9, "rotation"

    .line 49
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$5;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    .line 54
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$6;

    .line 56
    const-string v11, "rotationX"

    .line 58
    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$6;-><init>(Ljava/lang/String;)V

    .line 60
    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 63
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$7;

    .line 65
    const-string v13, "rotationY"

    .line 67
    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$7;-><init>(Ljava/lang/String;)V

    .line 69
    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 72
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$8;

    .line 74
    const-string v15, "rotationZ"

    .line 76
    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$8;-><init>(Ljava/lang/String;)V

    .line 78
    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

    .line 81
    move-object/from16 v16, v14

    .line 83
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$9;

    .line 85
    move-object/from16 v17, v15

    .line 87
    const-string v15, "h"

    .line 89
    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$9;-><init>(Ljava/lang/String;)V

    .line 91
    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 94
    move-object/from16 v18, v12

    .line 96
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$10;

    .line 98
    move-object/from16 v19, v13

    .line 100
    const-string/jumbo v13, "w"

    .line 102
    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$10;-><init>(Ljava/lang/String;)V

    .line 105
    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    .line 108
    move-object/from16 v20, v10

    .line 110
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$11;

    .line 112
    move-object/from16 v21, v11

    .line 114
    const-string v11, "alpha"

    .line 116
    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$11;-><init>(Ljava/lang/String;)V

    .line 118
    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    .line 121
    move-object/from16 v22, v8

    .line 123
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$12;

    .line 125
    move-object/from16 v23, v9

    .line 127
    const-string/jumbo v9, "tintColor"

    .line 129
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$12;-><init>(Ljava/lang/String;)V

    .line 132
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 135
    move-object/from16 v24, v8

    .line 137
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$13;

    .line 139
    move-object/from16 v25, v9

    .line 141
    const-string v9, "pivotX"

    .line 143
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$13;-><init>(Ljava/lang/String;)V

    .line 145
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 148
    move-object/from16 v26, v8

    .line 150
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$14;

    .line 152
    move-object/from16 v27, v9

    .line 154
    const-string v9, "pivotY"

    .line 156
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$14;-><init>(Ljava/lang/String;)V

    .line 158
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 161
    move-object/from16 v28, v8

    .line 163
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$15;

    .line 165
    move-object/from16 v29, v9

    .line 167
    const-string v9, "pivotZ"

    .line 169
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$15;-><init>(Ljava/lang/String;)V

    .line 171
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    .line 174
    move-object/from16 v30, v8

    .line 176
    sget-object v8, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 178
    invoke-virtual {v8, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 198
    invoke-virtual {v0, v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 203
    invoke-virtual {v0, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    invoke-virtual {v0, v13, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    move-object/from16 v1, v22

    .line 215
    move-object/from16 v2, v23

    .line 217
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    move-object/from16 v1, v20

    .line 224
    move-object/from16 v2, v21

    .line 226
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    move-object/from16 v1, v18

    .line 233
    move-object/from16 v2, v19

    .line 235
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    move-object/from16 v1, v16

    .line 242
    move-object/from16 v2, v17

    .line 244
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 249
    move-object/from16 v1, v24

    .line 251
    move-object/from16 v2, v25

    .line 253
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 258
    move-object/from16 v1, v26

    .line 260
    move-object/from16 v2, v27

    .line 262
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 267
    move-object/from16 v1, v28

    .line 269
    move-object/from16 v2, v29

    .line 271
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    move-object/from16 v1, v30

    .line 278
    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
    .line 283
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/property/FloatProperty;

    .line 8
    return-object p0
    .line 10
.end method
