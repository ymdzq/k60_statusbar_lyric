.class public final Landroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mImageTint:Landroidx/appcompat/widget/TintInfo;

.field public mLevel:I

.field public final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final applySupportImageTint()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    sget-object v2, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 12
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawableState()[I

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    .line 8
    invoke-static {v0, p1, v2, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 10
    move-result-object v7

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    iget-object v4, v7, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 18
    const/4 v6, 0x0

    .line 20
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 21
    move-object v0, p0

    .line 23
    move-object v3, p1

    .line 24
    move v5, p2

    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p1

    .line 32
    const/4 p2, -0x1

    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    invoke-virtual {v7, v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 37
    move-result v0

    .line 40
    if-eq v0, p2, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 58
    :cond_1
    const/4 p1, 0x2

    .line 60
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_2
    const/4 p1, 0x3

    .line 74
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 81
    move-result p1

    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 93
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 98
    throw p0
    .line 101
.end method

.method public final setImageResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 26
    return-void
    .line 29
.end method
