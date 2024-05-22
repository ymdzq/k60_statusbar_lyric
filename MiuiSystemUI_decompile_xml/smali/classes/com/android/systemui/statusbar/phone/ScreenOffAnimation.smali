.class public interface abstract Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/LightRevealScrim;)V
.end method

.method public abstract isAnimationPlaying()Z
.end method

.method public abstract isKeyguardHideDelayed()Z
.end method

.method public abstract isKeyguardShowDelayed()Z
.end method

.method public abstract onAlwaysOnChanged(Z)V
.end method

.method public abstract onScrimOpaqueChanged(Z)V
.end method

.method public abstract overrideNotificationsDozeAmount()V
.end method

.method public abstract shouldAnimateClockChange()Z
.end method

.method public abstract shouldAnimateDozingChange()Z
.end method

.method public abstract shouldDelayDisplayDozeTransition()Z
.end method

.method public abstract shouldDelayKeyguardShow()Z
.end method

.method public abstract shouldHideScrimOnWakeUp()Z
.end method

.method public abstract shouldPlayAnimation()Z
.end method

.method public abstract startAnimation()Z
.end method
