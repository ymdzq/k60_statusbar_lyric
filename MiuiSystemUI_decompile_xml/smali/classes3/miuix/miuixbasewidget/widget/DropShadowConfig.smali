.class public final Lmiuix/miuixbasewidget/widget/DropShadowConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final blurRadiusDp:F

.field public offsetXDp:F

.field public offsetYDp:F

.field public shadowColor:I

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
    iput v2, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    .line 20
    iput v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    .line 22
    iput v1, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowDarkColor:I

    .line 24
    iput v2, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    .line 26
    iput v2, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    .line 28
    const/high16 v0, 0x41b80000    # 23.0f

    .line 30
    iput v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    .line 32
    return-void
    .line 34
.end method
