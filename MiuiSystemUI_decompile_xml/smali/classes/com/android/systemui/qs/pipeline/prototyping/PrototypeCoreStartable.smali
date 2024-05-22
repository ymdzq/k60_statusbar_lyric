.class public final Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final autoAddRepository:Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->autoAddRepository:Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method
