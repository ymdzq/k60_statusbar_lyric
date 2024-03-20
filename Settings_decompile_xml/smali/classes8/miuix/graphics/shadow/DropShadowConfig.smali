.class public Lmiuix/graphics/shadow/DropShadowConfig;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    }
.end annotation


# instance fields
.field blurRadiusDp:F

.field blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

.field offsetXDp:F

.field offsetYDp:F

.field shadowColor:I

.field shadowDarkColor:I

.field spread:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 17
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p0, p1, v0}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method constructor <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 8

    const-string v0, "#0D000000"

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#0DFFFFFF"

    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    .line 21
    invoke-direct/range {v1 .. v7}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method constructor <init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowConfig;->spread:F

    .line 29
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    .line 30
    iput p2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    .line 31
    iput p3, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    .line 32
    iput p4, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    .line 33
    iput p5, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    .line 34
    iput-object p6, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    return-void
.end method
