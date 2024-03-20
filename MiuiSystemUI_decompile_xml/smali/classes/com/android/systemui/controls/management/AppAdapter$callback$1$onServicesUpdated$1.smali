.class public final Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/AppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/AppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/management/AppAdapter;->resources:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 19
    move-result-object v0

    .line 22
    new-instance v2, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1;

    .line 23
    invoke-direct {v2, v0}, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v3

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v5

    .line 44
    if-eqz v5, :cond_4

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 50
    move-object v6, v5

    .line 51
    check-cast v6, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 52
    iget-object v6, v6, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 54
    if-eqz v6, :cond_3

    .line 56
    iget-object v7, v0, Lcom/android/systemui/controls/management/AppAdapter;->authorizedPanels:Ljava/util/Set;

    .line 58
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v6, 0x0

    .line 67
    :goto_1
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    goto :goto_2

    .line 74
    :cond_2
    move v6, v1

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 77
    :goto_3
    if-eqz v6, :cond_0

    .line 78
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 84
    move-result-object v1

    .line 87
    iput-object v1, v0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 90
    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 92
    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$2;

    .line 94
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$2;-><init>(Lcom/android/systemui/controls/management/AppAdapter;)V

    .line 96
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
    .line 102
.end method
