.class public final Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;

    .line 2
    move-result-object v0

    .line 5
    return-object v0
    .line 6
.end method

.method public static providesPluginDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule;->providesPluginDebug()Z

    .line 2
    move-result v0

    .line 5
    return v0
    .line 6
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
