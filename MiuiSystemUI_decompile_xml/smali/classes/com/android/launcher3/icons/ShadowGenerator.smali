.class public final Lcom/android/launcher3/icons/ShadowGenerator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBlurPaint:Landroid/graphics/Paint;

.field public final mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mIconSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    .line 22
    int-to-float p1, p1

    .line 24
    const v1, 0x3d0f5c29    # 0.035f

    .line 25
    mul-float/2addr p1, v1

    .line 28
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 29
    invoke-direct {v0, p1, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 31
    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 34
    return-void
    .line 36
.end method