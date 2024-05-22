.class public interface abstract Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x2
.end annotation


# static fields
.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract onAccessibilityModeChanged(Ljava/lang/Boolean;)V
.end method

.method public abstract onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onDismissRequested(I)V
.end method

.method public abstract onLayoutDirectionChanged(I)V
.end method

.method public onPerformHapticFeedback(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onScreenOff()V
.end method

.method public abstract onShowCsdWarning(II)V
.end method

.method public onShowRequested(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onShowRequested(IZI)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowRequested(I)V

    return-void
.end method

.method public abstract onShowSafetyWarning(I)V
.end method

.method public abstract onShowSilentHint()V
.end method

.method public abstract onShowVibrateHint()V
.end method

.method public abstract onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
.end method
