.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 5
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 2
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x2

    .line 15
    :goto_0
    const/16 v0, 0x797e

    .line 16
    invoke-static {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->notifySurfaceFlinger(II)V

    .line 18
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    .line 21
    move-result-object v0

    .line 24
    const/16 v1, 0x11

    .line 25
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 28
    return-void
    .line 31
.end method
