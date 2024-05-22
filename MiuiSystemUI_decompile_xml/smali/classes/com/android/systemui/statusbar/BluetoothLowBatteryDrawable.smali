.class public Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFillDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 7
    return-void
    .line 10
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->canApplyTheme()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
    .line 7
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    const p2, 0x7f0817f9    # @drawable/stat_sys_bluetooth_handsfree_battery_1_not_tint 'res/drawable/stat_sys_bluetooth_handsfree_battery_1_not_tint.xml'

    .line 5
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p3

    .line 15
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
    .line 29
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLayoutDirectionChanged(I)Z

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    return-void
    .line 10
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BluetoothLowBatteryDrawable;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method
