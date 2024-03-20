.class public final Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Landroid/widget/FrameLayout;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/widget/FrameLayout;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 18
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
