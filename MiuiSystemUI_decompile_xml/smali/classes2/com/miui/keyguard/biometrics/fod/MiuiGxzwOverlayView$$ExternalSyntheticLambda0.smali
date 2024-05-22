.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/16 v1, 0x797e

    .line 4
    const/16 v2, 0x11

    .line 6
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 13
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mWaitDisableReadingMode:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mWaitDisableReadingMode:Z

    .line 20
    invoke-static {v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->notifySurfaceFlinger(II)V

    .line 22
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0, v2, v3, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 29
    :cond_0
    return-void

    .line 32
    :pswitch_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 33
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v1, p0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;I)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 46
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->$r8$clinit:I

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->notifySurfaceFlinger(II)V

    .line 53
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, v2, v3, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
