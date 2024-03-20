.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final miuiChargeDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->miuiChargeDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->id:I

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    new-instance p0, Lcom/miui/charge/MiuiChargeController;

    .line 12
    invoke-direct {p0}, Lcom/miui/charge/MiuiChargeController;-><init>()V

    .line 14
    return-object p0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 18
    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->id:I

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 22
    throw v0

    .line 25
    :cond_1
    new-instance p0, Lcom/miui/charge/MiuiChargeManager;

    .line 26
    invoke-direct {p0}, Lcom/miui/charge/MiuiChargeManager;-><init>()V

    .line 28
    return-object p0

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl$SwitchingProvider;->miuiChargeDependencyComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;

    .line 32
    new-instance v0, Lcom/miui/charge/dagger/MiuiChargeDependency;

    .line 34
    invoke-direct {v0}, Lcom/miui/charge/dagger/MiuiChargeDependency;-><init>()V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;->injectMiuiChargeDependency(Lcom/miui/charge/dagger/MiuiChargeDependency;)Lcom/miui/charge/dagger/MiuiChargeDependency;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method
