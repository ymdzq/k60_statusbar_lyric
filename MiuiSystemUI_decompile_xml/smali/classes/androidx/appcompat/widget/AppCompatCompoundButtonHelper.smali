.class public final Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mButtonTintList:Landroid/content/res/ColorStateList;

.field public mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mHasButtonTint:Z

.field public mHasButtonTintMode:Z

.field public mSkipNextApply:Z

.field public final mView:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final applyButtonTint()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    iget-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 10
    if-nez v2, :cond_0

    .line 12
    iget-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 14
    if-eqz v2, :cond_4

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v1

    .line 21
    iget-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 31
    if-eqz v2, :cond_2

    .line 33
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 40
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_4
    return-void
    .line 56
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    sget-object v2, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    .line 8
    invoke-static {v0, p1, v2, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 10
    move-result-object v7

    .line 13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

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
    const/4 p1, 0x1

    .line 29
    :try_start_0
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 30
    move-result p2

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {v7, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 37
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz p2, :cond_0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 46
    invoke-static {p2, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    goto :goto_0

    .line 54
    :catch_0
    :cond_0
    move p1, v0

    .line 55
    :goto_0
    if-nez p1, :cond_1

    .line 56
    :try_start_2
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 58
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v7, v0, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 64
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 70
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_1
    const/4 p1, 0x2

    .line 81
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 82
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_2
    const/4 p1, 0x3

    .line 95
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 96
    move-result p2

    .line 99
    if-eqz p2, :cond_3

    .line 100
    const/4 p2, -0x1

    .line 102
    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 103
    move-result p1

    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 115
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 120
    throw p0
    .line 123
.end method
