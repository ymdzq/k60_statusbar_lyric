.class public interface abstract Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
