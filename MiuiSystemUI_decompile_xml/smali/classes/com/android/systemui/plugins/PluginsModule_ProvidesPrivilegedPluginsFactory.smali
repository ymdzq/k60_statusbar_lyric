.class public final Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    return-void
    .line 7
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;-><init>(Ljavax/inject/Provider;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 6
    return-object p0
    .line 9
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
