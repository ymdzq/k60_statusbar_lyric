.class public final enum Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

.field public static final enum CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

.field public static final enum ELLIPSE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    const-string v1, "CIRCLE"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 10
    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 12
    const-string v2, "ROUNDED_BOX"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 20
    const-string v3, "ELLIPSE"

    .line 22
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ELLIPSE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 28
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->$VALUES:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->$VALUES:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 8
    return-object v0
    .line 10
.end method
