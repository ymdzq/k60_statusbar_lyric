.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mParent:Landroid/graphics/drawable/Drawable$ConstantState;


# virtual methods
.method public final canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    invoke-direct {v0, v1, v1, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method
