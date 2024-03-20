.class public final synthetic Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    .line 2
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/android/systemui/complication/ComplicationId;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

    .line 20
    iget v3, v2, Lcom/android/systemui/complication/ComplicationId$Factory;->mNextId:I

    .line 22
    add-int/lit8 v4, v3, 0x1

    .line 24
    iput v4, v2, Lcom/android/systemui/complication/ComplicationId$Factory;->mNextId:I

    .line 26
    invoke-direct {v1, v3}, Lcom/android/systemui/complication/ComplicationId;-><init>(I)V

    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/systemui/complication/ComplicationId;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;

    .line 40
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;->create(Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;)Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;

    .line 42
    move-result-object p0

    .line 45
    invoke-interface {p0}, Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;->getViewModelProvider()Lcom/android/systemui/complication/ComplicationViewModelProvider;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/complication/ComplicationId;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    const-class v0, Lcom/android/systemui/complication/ComplicationViewModel;

    .line 54
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    .line 56
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/systemui/complication/ComplicationViewModel;

    .line 60
    return-object p0
    .line 62
.end method
