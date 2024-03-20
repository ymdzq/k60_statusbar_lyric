.class public final Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public tintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    filled-new-array {p1}, [Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 6
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 10
    return-void
    .line 12
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 6
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    return-object v0
    .line 18
.end method


# virtual methods
.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final setState([I)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    .line 12
    move-result-object v3

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 16
    move-result v0

    .line 19
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-virtual {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    move p0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p0, v2

    .line 27
    :goto_0
    if-nez p1, :cond_2

    .line 28
    if-eqz p0, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :cond_2
    :goto_1
    return v1
    .line 34
.end method
