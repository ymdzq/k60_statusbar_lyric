.class final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->resources:Landroid/content/res/Resources;

    .line 4
    const v0, 0x7f130a03    # @string/quick_settings_tiles_retail_mode 'night,dark,dnd,flashlight,rotation,location'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    const-string v0, ","

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 25
    move-result v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    move-object v2, v1

    .line 75
    check-cast v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 76
    instance-of v2, v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    .line 78
    xor-int/lit8 v2, v2, 0x1

    .line 80
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 87
    :cond_2
    return-object p0
    .line 88
.end method
