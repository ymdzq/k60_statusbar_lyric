.class final Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;

.field final synthetic $shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$1;->$shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$1;->$callback:Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$1;->$shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$1;->$callback:Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
