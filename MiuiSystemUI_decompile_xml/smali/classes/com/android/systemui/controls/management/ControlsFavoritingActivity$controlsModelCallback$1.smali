.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    move-object v1, v2

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 12
    move-result v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/controls/management/StructureContainer;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->rearrangeButton:Landroid/widget/Button;

    .line 22
    if-nez p0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move-object v2, p0

    .line 27
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/controls/management/StructureContainer;->model:Lcom/android/systemui/controls/management/ControlsModel;

    .line 28
    invoke-interface {p0}, Lcom/android/systemui/controls/management/ControlsModel;->getFavorites()Ljava/util/List;

    .line 30
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    move-result p0

    .line 37
    xor-int/lit8 p0, p0, 0x1

    .line 38
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 40
    return-void
    .line 43
.end method

.method public final onFirstChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->doneButton:Landroid/view/View;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    return-void
    .line 13
.end method
