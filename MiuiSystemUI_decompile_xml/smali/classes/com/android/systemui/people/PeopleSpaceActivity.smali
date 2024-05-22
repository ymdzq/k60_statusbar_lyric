.class public Lcom/android/systemui/people/PeopleSpaceActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mViewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mViewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mViewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;

    .line 11
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 13
    const-class v1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    move-result-object v1

    .line 27
    const-string v2, "appWidgetId"

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 33
    iget-object v1, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_appWidgetId:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 40
    new-instance p1, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;

    .line 43
    invoke-direct {p1, p0}, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleSpaceActivity;)V

    .line 45
    const-string v1, "PeopleSpaceActivity"

    .line 48
    const-string v2, "Using the View implementation of the PeopleSpaceActivity"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v1, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 57
    move-result-object v1

    .line 60
    const v2, 0x7f0d02ac    # @layout/people_space_activity 'res/layout/people_space_activity.xml'

    .line 61
    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    invoke-static {v1, v0, p0, p1}, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;)V

    .line 71
    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 74
    return-void
    .line 77
.end method
