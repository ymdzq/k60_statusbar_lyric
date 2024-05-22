.class public final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final resources:Landroid/content/res/Resources;

.field public final retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

.field public final retailModeTiles$delegate:Lkotlin/Lazy;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Landroid/content/res/Resources;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lcom/android/systemui/retail/data/repository/RetailModeRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->resources:Landroid/content/res/Resources;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 15
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 21
    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;)V

    .line 25
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeTiles$delegate:Lkotlin/Lazy;

    .line 32
    return-void
    .line 34
.end method
