.class public abstract Lcom/miui/maml/folme/AnimatedProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lcom/miui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lcom/miui/maml/folme/IAnimatedProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$1;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 48
    new-instance v2, Lcom/miui/maml/folme/AnimatedProperty$2;

    const-string/jumbo v3, "y"

    invoke-direct {v2, v3}, Lcom/miui/maml/folme/AnimatedProperty$2;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 65
    new-instance v4, Lcom/miui/maml/folme/AnimatedProperty$3;

    const-string/jumbo v5, "scaleX"

    invoke-direct {v4, v5}, Lcom/miui/maml/folme/AnimatedProperty$3;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 82
    new-instance v6, Lcom/miui/maml/folme/AnimatedProperty$4;

    const-string/jumbo v7, "scaleY"

    invoke-direct {v6, v7}, Lcom/miui/maml/folme/AnimatedProperty$4;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 99
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$5;

    const-string/jumbo v9, "rotation"

    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$5;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    .line 116
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$6;

    const-string/jumbo v11, "rotationX"

    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$6;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 133
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$7;

    const-string/jumbo v13, "rotationY"

    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$7;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 150
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$8;

    const-string/jumbo v15, "rotationZ"

    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$8;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v16, v14

    .line 167
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$9;

    move-object/from16 v17, v15

    const-string v15, "h"

    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$9;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v18, v12

    .line 184
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$10;

    move-object/from16 v19, v13

    const-string/jumbo v13, "w"

    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$10;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v20, v10

    .line 201
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$11;

    move-object/from16 v21, v11

    const-string v11, "alpha"

    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$11;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v22, v8

    .line 218
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$12;

    move-object/from16 v23, v9

    const-string/jumbo v9, "tintColor"

    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$12;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    move-object/from16 v24, v8

    .line 235
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$13;

    move-object/from16 v25, v9

    const-string v9, "pivotX"

    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$13;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v26, v8

    .line 252
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$14;

    move-object/from16 v27, v9

    const-string v9, "pivotY"

    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$14;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v28, v8

    .line 269
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$15;

    move-object/from16 v29, v9

    const-string v9, "pivotZ"

    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$15;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    move-object/from16 v30, v8

    .line 287
    sget-object v8, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, v30

    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .locals 1

    .line 310
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method
