.class public final Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mIsFromTouch:Z

.field public mUserStarted:Z

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mIsFromTouch:Z

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-boolean p3, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mIsFromTouch:Z

    .line 4
    if-eqz p3, :cond_0

    .line 6
    iget-boolean p3, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 8
    if-nez p3, :cond_0

    .line 10
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 19
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mListener:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const/4 v1, 0x0

    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 26
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move v4, p2

    .line 30
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;->onChanged(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;ZZIZ)V

    .line 31
    :cond_1
    :goto_0
    return-void
    .line 34
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mIsFromTouch:Z

    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mListener:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->getValue()I

    .line 19
    move-result v5

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;->onChanged(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;ZZIZ)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 33
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 39
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 46
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 48
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    .line 50
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setBrightnessMirrorVisible(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 62
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    .line 64
    :cond_2
    return-void
    .line 67
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mIsFromTouch:Z

    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->getValue()I

    .line 16
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 20
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    .line 26
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 32
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 34
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 38
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->getValue()I

    .line 40
    move-result v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setValue(I)V

    .line 44
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->mUserStarted:Z

    .line 47
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 49
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mListener:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;

    .line 51
    if-eqz v1, :cond_2

    .line 53
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->getValue()I

    .line 58
    move-result v5

    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;->onChanged(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;ZZIZ)V

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 68
    if-eqz p0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 72
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 79
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 81
    const/16 v1, 0xff

    .line 83
    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setBrightnessMirrorVisible(Z)V

    .line 91
    :cond_3
    return-void
    .line 94
.end method
