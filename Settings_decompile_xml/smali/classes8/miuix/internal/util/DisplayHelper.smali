.class public final Lmiuix/internal/util/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# instance fields
.field private mDensity:F

.field private mDensityDpi:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHeightDps:I

.field private mHeightPixels:I

.field private mWidthDps:I

.field private mWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lmiuix/internal/util/DisplayHelper;->getAndroidScreenProperty(Landroid/content/Context;)V

    return-void
.end method

.method private getAndroidScreenProperty(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 31
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 32
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    iget-object p1, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    .line 34
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    .line 35
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    .line 36
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    int-to-float p1, v0

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 38
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    int-to-float p1, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 39
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    .line 51
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    return p0
.end method

.method public getHeightPixels()I
    .locals 0

    .line 47
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    return p0
.end method

.method public getWidthPixels()I
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    return p0
.end method
