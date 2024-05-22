.class public final Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public currentState:I

.field public final mCastingCallbacks:Ljava/util/ArrayList;

.field public final mExtraListener:Ljava/util/ArrayList;

.field public mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mCastingCallbacks:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mExtraListener:Ljava/util/ArrayList;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mExtraListener:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/plugins/PluginListener;

    .line 25
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/PluginListener;->onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mCastingCallbacks:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p1

    .line 36
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 46
    check-cast p2, Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 49
    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->registerCastingCallback(Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    return-void
    .line 55
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mExtraListener:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/plugins/PluginListener;

    .line 20
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 27
    iget p1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 29
    const/4 v0, 0x3

    .line 31
    if-nez p1, :cond_1

    .line 32
    iput v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 34
    const-class p1, Lcom/android/systemui/plugins/PluginManager;

    .line 36
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    .line 42
    const-class v0, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 44
    const/4 v1, 0x1

    .line 46
    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 47
    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    iput v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 54
    :goto_1
    return-void
    .line 56
.end method
