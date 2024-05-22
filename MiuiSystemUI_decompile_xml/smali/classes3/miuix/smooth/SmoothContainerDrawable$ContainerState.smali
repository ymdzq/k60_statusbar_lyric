.class public final Lmiuix/smooth/SmoothContainerDrawable$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

.field public mLayerType:I

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
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

    .line 3
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

    .line 6
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>(Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 7
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 8
    iget-object p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iput-object p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 9
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 10
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    .line 11
    iget p1, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

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
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method
