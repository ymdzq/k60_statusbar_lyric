.class public final Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAlpha:I

.field public final mColorStateList:Landroid/content/res/ColorStateList;

.field public final mThemeAttrs:[I

.field public final mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;[IILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mThemeAttrs:[I

    .line 7
    iput p3, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mAlpha:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 11
    return-void
    .line 13
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
    iget-object p0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/DrawableWrapper;

    .line 3
    new-instance p2, Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mThemeAttrs:[I

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    .line 5
    iget-object p1, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    iget p0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mAlpha:I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-object p2
.end method
