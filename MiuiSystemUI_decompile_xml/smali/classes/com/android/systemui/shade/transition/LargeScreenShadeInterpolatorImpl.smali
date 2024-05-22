.class public final Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;


# instance fields
.field public final context:Landroid/content/Context;

.field public inSplitShade:Z

.field public final portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

.field public final splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lcom/android/systemui/shade/transition/SplitShadeInterpolator;Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    new-instance p3, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl$1;

    .line 11
    invoke-direct {p3, p0}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl$1;-><init>(Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;)V

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 25
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public final getBehindScrimAlpha(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getBehindScrimAlpha(F)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final getNotificationContentAlpha(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationContentAlpha(F)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final getNotificationFooterAlpha(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationFooterAlpha(F)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final getNotificationScrimAlpha(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationScrimAlpha(F)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final getQsAlpha(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->inSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeInterpolator:Lcom/android/systemui/shade/transition/SplitShadeInterpolator;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    .line 9
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getQsAlpha(F)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method
