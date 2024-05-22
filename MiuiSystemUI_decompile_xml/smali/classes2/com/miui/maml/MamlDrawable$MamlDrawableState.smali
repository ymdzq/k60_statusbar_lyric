.class public Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field protected mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mStateBadgeLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getChangingConfigurations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->createDrawable()Lcom/miui/maml/MamlDrawable;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move-object v2, v1

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 20
    if-eqz v3, :cond_2

    .line 22
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 26
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 28
    iget v4, p0, Landroid/graphics/Rect;->top:I

    .line 30
    iget v5, p0, Landroid/graphics/Rect;->right:I

    .line 32
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 34
    invoke-direct {v1, v3, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 39
    return-object v0
    .line 42
.end method
