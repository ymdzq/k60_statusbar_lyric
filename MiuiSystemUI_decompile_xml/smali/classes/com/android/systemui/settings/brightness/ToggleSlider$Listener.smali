.class public interface abstract Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;


# virtual methods
.method public onChanged(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;ZZIZ)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    invoke-virtual {p0, p4, p2, p5}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    .line 4
    return-void
    .line 7
.end method

.method public onInit(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onStop(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
