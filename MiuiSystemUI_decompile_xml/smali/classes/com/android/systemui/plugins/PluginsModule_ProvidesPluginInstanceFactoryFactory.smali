.class public final Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field private final isDebugProvider:Ljavax/inject/Provider;

.field private final privilegedPluginsProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->privilegedPluginsProvider:Ljavax/inject/Provider;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->isDebugProvider:Ljavax/inject/Provider;

    .line 7
    return-void
    .line 9
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/PluginsModule;->providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 6
    return-object p0
    .line 9
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->privilegedPluginsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->isDebugProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->get()Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    move-result-object p0

    return-object p0
.end method
