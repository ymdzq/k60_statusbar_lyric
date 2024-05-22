.class public final Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 4
    const-string v4, "biometric wakelock: TIMEOUT!!"

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 11
    iget-object v1, v0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const-string v2, "BiometricUnlockLogger"

    .line 15
    const/4 v5, 0x0

    .line 17
    const/16 v6, 0x8

    .line 18
    const/4 v7, 0x0

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 26
    return-void
    .line 29
.end method
