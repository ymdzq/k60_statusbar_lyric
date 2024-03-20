.class public final Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field private final managerLazyProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->managerLazyProvider:Ljavax/inject/Provider;

    .line 5
    return-void
    .line 7
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static newInstance(Ldagger/Lazy;)Lcom/android/systemui/plugins/PluginDependencyProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Ldagger/Lazy;)V

    .line 4
    return-object v0
    .line 7
.end method


# virtual methods
.method public get()Lcom/android/systemui/plugins/PluginDependencyProvider;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->managerLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->newInstance(Ldagger/Lazy;)Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->get()Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method
