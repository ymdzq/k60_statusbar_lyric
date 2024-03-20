.class public interface abstract Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
