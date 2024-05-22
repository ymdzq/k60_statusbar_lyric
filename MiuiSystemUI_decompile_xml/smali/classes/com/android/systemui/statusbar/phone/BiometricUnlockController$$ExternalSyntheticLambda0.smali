.class public final synthetic Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Landroid/metrics/LogMaker;

    .line 9
    const/16 v2, 0x6a1

    .line 11
    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 13
    const/16 v2, 0xa

    .line 16
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 22
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 26
    move-result-object v1

    .line 29
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 32
    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 35
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 41
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 43
    move-result-object p0

    .line 46
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;

    .line 47
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 49
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 52
    return-void
    .line 55
.end method
