.class public Lcom/miui/systemui/views/BlurOnDefaultThemeView;
.super Lcom/miui/blur/sdk/backdrop/BackdropBlurView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBlurDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->updateBlurStatusIfNeed$1()V

    .line 18
    return-void
    .line 21
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 12
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->onDetachedFromWindow()V

    .line 15
    return-void
    .line 18
.end method

.method public final onMiuiThemeChanged(ZZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->mBlurDisabled:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->setBlurEnabled(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final updateBlurStatusIfNeed$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    sget-boolean v1, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    iget-boolean v1, p0, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->mBlurDisabled:Z

    .line 18
    if-nez v1, :cond_1

    .line 20
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v3

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    .line 25
    iget-boolean v4, v4, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 27
    if-eqz v4, :cond_2

    .line 29
    if-eqz v0, :cond_2

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    move v2, v3

    .line 34
    :goto_1
    if-eq v1, v2, :cond_3

    .line 35
    invoke-virtual {p0, v1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurView;->setBlurEnabled(Z)V

    .line 37
    :cond_3
    return-void
    .line 40
.end method
