.class public final Landroidx/lifecycle/Transformations$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic val$mapFunction:Landroidx/arch/core/util/Function;

.field public final synthetic val$result:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$1;->val$result:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    iput-object p2, p0, Landroidx/lifecycle/Transformations$1;->val$mapFunction:Landroidx/arch/core/util/Function;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/Transformations$1;->val$mapFunction:Landroidx/arch/core/util/Function;

    .line 2
    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/lifecycle/Transformations$1;->val$result:Landroidx/lifecycle/MediatorLiveData;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method
