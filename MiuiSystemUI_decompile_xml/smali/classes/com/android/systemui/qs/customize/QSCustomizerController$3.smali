.class public final Lcom/android/systemui/qs/customize/QSCustomizerController$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateTransparentViewHeight()V

    .line 17
    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 30
    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v2, 0x7f0b00f9    # @integer/quick_settings_num_columns '4'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 41
    move-result v1

    .line 44
    iget v2, p1, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    .line 45
    if-eq v1, v2, :cond_0

    .line 47
    iput v1, p1, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    .line 49
    const/4 v0, 0x1

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 54
    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 62
    move-result-object p1

    .line 65
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 66
    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 72
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    .line 74
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 76
    :cond_1
    return-void
    .line 79
.end method
