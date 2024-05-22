.class public Lcom/google/android/setupdesign/view/NavigationBarButton;
.super Landroid/widget/Button;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->init()V

    return-void
.end method

.method private getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aget-object v3, v1, v2

    .line 10
    aput-object v3, v0, v2

    .line 12
    const/4 v3, 0x1

    .line 14
    aget-object v4, v1, v3

    .line 15
    aput-object v4, v0, v3

    .line 17
    const/4 v3, 0x2

    .line 19
    aget-object v4, v1, v3

    .line 20
    aput-object v4, v0, v3

    .line 22
    const/4 v4, 0x3

    .line 24
    aget-object v1, v1, v4

    .line 25
    aput-object v1, v0, v4

    .line 27
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p0

    .line 32
    aget-object v1, p0, v2

    .line 33
    const/4 v2, 0x4

    .line 35
    aput-object v1, v0, v2

    .line 36
    const/4 v1, 0x5

    .line 38
    aget-object p0, p0, v3

    .line 39
    aput-object p0, v0, v1

    .line 41
    return-object v0
    .line 43
.end method


# virtual methods
.method public final init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    array-length v3, v0

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    aget-object v3, v0, v2

    .line 18
    if-eqz v3, :cond_1

    .line 20
    invoke-static {v3}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 22
    move-result-object v3

    .line 25
    aput-object v3, v0, v2

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    aget-object v1, v0, v1

    .line 31
    const/4 v2, 0x1

    .line 33
    aget-object v2, v0, v2

    .line 34
    const/4 v3, 0x2

    .line 36
    aget-object v3, v0, v3

    .line 37
    const/4 v4, 0x3

    .line 39
    aget-object v0, v0, v4

    .line 40
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
    .line 45
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-static {p2}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 10
    move-result-object p2

    .line 13
    :cond_1
    if-eqz p3, :cond_2

    .line 14
    invoke-static {p3}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 16
    move-result-object p3

    .line 19
    :cond_2
    if-eqz p4, :cond_3

    .line 20
    invoke-static {p4}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 22
    move-result-object p4

    .line 25
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->tintDrawables()V

    .line 29
    return-void
    .line 32
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-static {p2}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 10
    move-result-object p2

    .line 13
    :cond_1
    if-eqz p3, :cond_2

    .line 14
    invoke-static {p3}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 16
    move-result-object p3

    .line 19
    :cond_2
    if-eqz p4, :cond_3

    .line 20
    invoke-static {p4}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 22
    move-result-object p4

    .line 25
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->tintDrawables()V

    .line 29
    return-void
    .line 32
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->tintDrawables()V

    .line 5
    return-void
    .line 8
.end method

.method public final tintDrawables()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton;->getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    aget-object v5, v1, v4

    .line 17
    instance-of v6, v5, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 19
    if-eqz v6, :cond_0

    .line 21
    check-cast v5, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 23
    iput-object v0, v5, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 25
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    .line 27
    move-result-object v6

    .line 30
    invoke-virtual {v0, v6, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 31
    move-result v6

    .line 34
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    .line 46
    :cond_2
    return-void
    .line 49
.end method
