.class public final Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final isStrongBiometric:Z

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 9
    return-void
    .line 11
.end method
