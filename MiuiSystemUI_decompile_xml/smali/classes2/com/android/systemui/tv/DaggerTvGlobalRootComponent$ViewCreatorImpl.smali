.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewCreator;


# instance fields
.field public final attributeSet:Landroid/util/AttributeSet;

.field public final context:Landroid/content/Context;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public final viewCreatorImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->viewCreatorImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    .line 11
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->context:Landroid/content/Context;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final createMiuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 10
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/systemui/util/InjectionInflationController;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foldNotifManagerProvider:Ljavax/inject/Provider;

    .line 22
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 28
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/qs/MiuiQSContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;)V

    .line 30
    return-object v0
    .line 33
.end method

.method public final createMiuiQSPanel()Lcom/android/systemui/qs/MiuiQSPanel;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->context:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lcom/android/systemui/qs/logging/QSLogger;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    move-object v6, v0

    .line 49
    check-cast v6, Lcom/android/internal/logging/UiEventLogger;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->securityDialogProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    move-object v7, p0

    .line 60
    check-cast v7, Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 61
    move-object v0, v8

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/MiuiQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V

    .line 64
    return-object v8
    .line 67
.end method

.method public final createMiuiQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->context:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lcom/android/systemui/qs/logging/QSLogger;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    move-object v6, v0

    .line 49
    check-cast v6, Lcom/android/internal/logging/UiEventLogger;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ViewCreatorImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->securityDialogProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    move-object v7, p0

    .line 60
    check-cast v7, Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 61
    move-object v0, v8

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/MiuiQuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V

    .line 64
    return-object v8
    .line 67
.end method
