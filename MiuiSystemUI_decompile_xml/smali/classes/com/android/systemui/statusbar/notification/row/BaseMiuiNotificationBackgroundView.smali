.class public Lcom/android/systemui/statusbar/notification/row/BaseMiuiNotificationBackgroundView;
.super Lcom/miui/systemui/views/BlurOnDefaultThemeView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mHighSamplingFrequency:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/systemui/views/BlurOnDefaultThemeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->HEAVY_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRequestedSamplingPeriodNs()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/BaseMiuiNotificationBackgroundView;->mHighSamplingFrequency:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getRequestedSamplingPeriodNs()I

    .line 8
    move-result p0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final setBlurDisable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->mBlurDisabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->updateBlurStatusIfNeed$1()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 7
    return-void
    .line 10
.end method

.method public final setHighSamplingFrequency(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/BaseMiuiNotificationBackgroundView;->mHighSamplingFrequency:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 4
    return-void
    .line 7
.end method
