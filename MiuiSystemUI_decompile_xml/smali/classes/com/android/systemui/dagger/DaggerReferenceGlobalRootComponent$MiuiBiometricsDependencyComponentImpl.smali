.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependencyComponent;


# instance fields
.field public final miuiBiometricsDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

.field public miuiBiometricsDependencyProvider:Ljavax/inject/Provider;

.field public miuiFaceUnlockManagerProvider:Ljavax/inject/Provider;

.field public miuiFastUnlockControllerProvider:Ljavax/inject/Provider;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->initialize()V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final createDependency()Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;

    return-object p0
.end method

.method public final bridge synthetic createDependency()Lcom/miui/systemui/IDependency;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->createDependency()Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

    .line 8
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;I)V

    .line 11
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiFastUnlockControllerProvider:Ljavax/inject/Provider;

    .line 18
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

    .line 26
    const/4 v4, 0x2

    .line 28
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;I)V

    .line 29
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiFaceUnlockManagerProvider:Ljavax/inject/Provider;

    .line 36
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

    .line 44
    const/4 v4, 0x0

    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;I)V

    .line 47
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiBiometricsDependencyProvider:Ljavax/inject/Provider;

    .line 54
    return-void
    .line 56
.end method

.method public final injectMiuiBiometricsDependency(Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;)Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiFastUnlockControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;->mMiuiFastUnlockController:Ldagger/Lazy;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->miuiFaceUnlockManagerProvider:Ljavax/inject/Provider;

    .line 10
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 12
    move-result-object p0

    .line 15
    iput-object p0, p1, Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependency;->mMiuiFaceUnlockManager:Ldagger/Lazy;

    .line 16
    return-object p1
    .line 18
.end method
