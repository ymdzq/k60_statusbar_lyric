.class public final Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mLayerType:I

.field public mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field public mRadii:[F

.field public mRadius:F

.field public mStrokeColor:I

.field public mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 3
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 4
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 7
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 8
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    .line 9
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    .line 10
    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    .line 11
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 12
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 13
    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 14
    iget p1, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    iput p1, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$1;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0, p0}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    .line 5
    new-instance p0, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {p0, v0, p1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$1;)V

    return-object p0
.end method
