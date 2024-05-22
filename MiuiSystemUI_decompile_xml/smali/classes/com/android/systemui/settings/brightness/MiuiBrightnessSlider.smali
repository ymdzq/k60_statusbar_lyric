.class public final Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# instance fields
.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mListener:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;

.field public mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final mOnInterceptListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;

.field public final mSeekListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;-><init>(Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mOnInterceptListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;

    .line 10
    new-instance p1, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;-><init>(Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;)V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mSeekListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final isVisible()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    .line 6
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 10
    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->mirrorTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    return p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mSeekListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$2;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mOnInterceptListener:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    move-object v0, p0

    .line 11
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    .line 14
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 19
    return-void
    .line 22
.end method

.method public final setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const-string v0, "BrightnessController"

    .line 4
    const-string v1, "device is managed by admin!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 15
    return-void
    .line 18
.end method

.method public final setMax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setMax(I)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setMax(I)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getMax()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setMax(I)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    .line 23
    move-result v1

    .line 26
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setValue(I)V

    .line 27
    new-instance p1, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 39
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    .line 42
    :goto_0
    return-void
    .line 45
.end method

.method public final setOnChangedListener(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mListener:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;

    .line 2
    return-void
    .line 4
.end method

.method public final setValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setValue(I)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setValue(I)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
