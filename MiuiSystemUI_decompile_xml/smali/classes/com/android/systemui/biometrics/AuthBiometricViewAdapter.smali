.class public interface abstract Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract cancelAnimation()V
.end method

.method public abstract isCoex()Z
.end method

.method public abstract onAuthenticationFailed(ILjava/lang/String;)V
.end method

.method public abstract onAuthenticationSucceeded(I)V
.end method

.method public abstract onDialogAnimatedIn(Z)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onHelp(ILjava/lang/String;)V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onSaveState(Landroid/os/Bundle;)V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract restoreState(Landroid/os/Bundle;)V
.end method

.method public abstract startTransitionToCredentialUI()V
.end method