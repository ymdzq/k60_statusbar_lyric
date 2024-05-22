.class public interface abstract Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDensityOrFontScaleChanged(Z)V
    .locals 0

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onLayoutDirectionChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMaxBoundsChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onMaxBoundsChanged(Z)V
    .locals 0

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onMaxBoundsChanged()V

    return-void
.end method

.method public onMiBlurChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMiuiThemeChanged(ZZ)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onMiuiThemeChanged(Z)V

    return-void
.end method

.method public onScreenLayoutSizeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onThemeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
