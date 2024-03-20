.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controlInfo:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $structureName:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$structureName:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$controlInfo:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$structureName:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$controlInfo:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_5

    .line 7
    :pswitch_0
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$componentName:Landroid/content/ComponentName;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$structureName:Ljava/lang/Object;

    .line 13
    check-cast v1, Ljava/lang/CharSequence;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$controlInfo:Ljava/lang/Object;

    .line 17
    check-cast v2, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 19
    invoke-static {v0}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v4

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v3

    .line 39
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 50
    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 52
    iget-object v7, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 54
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    move v3, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move v3, v6

    .line 64
    :goto_1
    if-eqz v3, :cond_3

    .line 65
    move v5, v6

    .line 67
    goto :goto_4

    .line 68
    :cond_3
    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 69
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Ljava/util/List;

    .line 75
    if-eqz v3, :cond_6

    .line 77
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v3

    .line 82
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 92
    move-object v6, v4

    .line 93
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 94
    iget-object v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 96
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    goto :goto_2

    .line 104
    :cond_5
    const/4 v4, 0x0

    .line 105
    :goto_2
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 106
    if-eqz v4, :cond_6

    .line 108
    goto :goto_3

    .line 110
    :cond_6
    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 111
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 113
    invoke-direct {v4, v0, v1, v3}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 115
    :goto_3
    iget-object v0, v4, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 118
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    .line 120
    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 124
    iget-object v2, v4, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 126
    iget-object v3, v4, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 128
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 130
    invoke-static {v1}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 133
    :goto_4
    if-eqz v5, :cond_7

    .line 136
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 138
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$componentName:Landroid/content/ComponentName;

    .line 142
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 148
    move-result-object v1

    .line 151
    check-cast v0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 157
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 159
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 161
    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 165
    :cond_7
    return-void

    .line 168
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$componentName:Landroid/content/ComponentName;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$structureName:Ljava/lang/Object;

    .line 173
    check-cast v2, Ljava/util/function/Consumer;

    .line 175
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;->$controlInfo:Ljava/lang/Object;

    .line 177
    check-cast p0, Ljava/util/function/Consumer;

    .line 179
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 181
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 186
.end method
