.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/List;

.field public final synthetic $didAnyFail:Z

.field public final synthetic $remaining:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;Landroid/content/ComponentName;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Landroid/service/controls/Control;

    .line 23
    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 25
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    const-string v3, ""

    .line 31
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/List;

    .line 37
    if-nez v4, :cond_2

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    move-result v5

    .line 49
    const/4 v6, 0x6

    .line 50
    if-ge v5, v6, :cond_0

    .line 51
    new-instance v5, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 53
    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 58
    invoke-virtual {v2}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 59
    move-result-object v7

    .line 62
    invoke-virtual {v2}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 63
    move-result-object v8

    .line 66
    invoke-virtual {v2}, Landroid/service/controls/Control;->getDeviceType()I

    .line 67
    move-result v2

    .line 70
    invoke-direct {v5, v6, v7, v8, v2}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 81
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 83
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/CharSequence;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 112
    check-cast v2, Ljava/util/List;

    .line 113
    sget-object v4, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 115
    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 117
    invoke-direct {v4, v1, v3, v2}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 119
    invoke-static {v4}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 122
    goto :goto_1

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 126
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 128
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 130
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    .line 137
    new-instance v1, Lcom/android/systemui/controls/controller/SeedResponse;

    .line 139
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 141
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 146
    const/4 v3, 0x1

    .line 147
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    .line 156
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    .line 160
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    .line 162
    return-void
    .line 165
.end method
