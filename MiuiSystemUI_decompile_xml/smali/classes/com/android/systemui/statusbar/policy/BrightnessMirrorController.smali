.class public abstract Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public mBrightnessMirror:Landroid/widget/FrameLayout;

.field public final mBrightnessMirrorListeners:Landroid/util/ArraySet;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

.field public final mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mVisibilityCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 14
    const v0, 0x7f0a015d    # @id/brightness_mirror_container

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/FrameLayout;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 31
    invoke-virtual {p4, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 37
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 40
    const/4 v0, -0x2

    .line 42
    iget-object v1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    const/4 v2, -0x1

    .line 45
    invoke-virtual {p4, v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 51
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 53
    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;

    .line 55
    move-object p3, p0

    .line 57
    check-cast p3, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    .line 58
    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;)V

    .line 60
    check-cast p2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 63
    iput-object p1, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    .line 65
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 67
    return-void
    .line 69
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final reinflate()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 12
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v2

    .line 22
    const v3, 0x7f0d0053    # @layout/brightness_mirror_container 'res/layout/brightness_mirror_container.xml'

    .line 23
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/FrameLayout;

    .line 31
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 33
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 39
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 47
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 50
    const/4 v5, -0x2

    .line 52
    iget-object v6, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    const/4 v7, -0x1

    .line 55
    invoke-virtual {v3, v6, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 56
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 69
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 71
    move-result v1

    .line 74
    if-ge v4, v1, :cond_0

    .line 75
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 81
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;->onBrightnessMirrorReinflated()V

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_0
    return-void
    .line 89
.end method

.method public final removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public abstract setLocationAndSize(Landroid/view/View;)V
.end method

.method public abstract updateResources()V
.end method
