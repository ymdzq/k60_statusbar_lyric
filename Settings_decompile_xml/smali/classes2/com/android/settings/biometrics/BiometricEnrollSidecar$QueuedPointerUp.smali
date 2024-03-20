.class Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedPointerUp"
.end annotation


# instance fields
.field private final sensorId:I

.field final synthetic this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;I)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;->this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent-IA;)V

    .line 146
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;->sensorId:I

    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;->sensorId:I

    invoke-interface {p1, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onPointerUp(I)V

    return-void
.end method
