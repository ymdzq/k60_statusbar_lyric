.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/dagger/ReferenceGlobalRootComponent$Builder;


# instance fields
.field public context:Landroid/content/Context;

.field public instrumentationTest:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    new-instance v3, Lcom/android/systemui/dagger/GlobalModule;

    invoke-direct {v3}, Lcom/android/systemui/dagger/GlobalModule;-><init>()V

    new-instance v4, Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-direct {v4}, Lcom/android/systemui/dagger/AndroidInternalsModule;-><init>()V

    new-instance v5, Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-direct {v5}, Lcom/android/systemui/dagger/FrameworkServicesModule;-><init>()V

    new-instance v6, Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-direct {v6}, Lcom/android/systemui/unfold/UnfoldTransitionModule;-><init>()V

    new-instance v7, Lcom/android/systemui/unfold/UnfoldSharedModule;

    invoke-direct {v7}, Lcom/android/systemui/unfold/UnfoldSharedModule;-><init>()V

    new-instance v8, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    invoke-direct {v8}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;-><init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final context(Landroid/content/Context;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final instrumentationTest(Z)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bridge synthetic instrumentationTest(Z)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest(Z)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;

    move-result-object p0

    return-object p0
.end method
