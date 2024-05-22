.class public final Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/IDependency;


# instance fields
.field public mMiuiFaceUnlockManager:Ldagger/Lazy;

.field public mMiuiFastUnlockController:Ldagger/Lazy;


# virtual methods
.method public final initDependency(Landroid/util/ArrayMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;->mMiuiFastUnlockController:Ldagger/Lazy;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 10
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;->mMiuiFaceUnlockManager:Ldagger/Lazy;

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 26
    const-class p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 29
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
    .line 34
.end method
