.class public final Lmiuix/graphics/shadow/DropShadowConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final blurRadiusDp:F

.field public final offsetXDp:F

.field public offsetYDp:F

.field public final shadowColor:I

.field public final shadowDarkColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 2
    const-string v0, "#0D000000"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 9
    const-string v1, "#0DFFFFFF"

    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    .line 20
    iput v2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    .line 22
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    .line 24
    iput v1, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    .line 26
    iput v2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    .line 28
    iput v2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    .line 30
    const/high16 v0, 0x42480000    # 50.0f

    .line 32
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    .line 34
    return-void
    .line 36
.end method
