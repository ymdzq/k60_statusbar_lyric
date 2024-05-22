.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mTransparentTimerListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$TransparentTimerListener;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 8
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozeShowIconTimeout:Z

    .line 15
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 25
    if-nez v1, :cond_1

    .line 27
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->dismissFingerpirntIcon()V

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->cancel()V

    .line 32
    :cond_2
    return-void
    .line 35
.end method
