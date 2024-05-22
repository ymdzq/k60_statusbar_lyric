.class public final Lcom/android/systemui/controls/management/AppAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final favRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

.field public final favorites:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/management/FavoritesRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->view:Landroid/view/View;

    .line 7
    const p2, 0x1020006    # @android:id/icon

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Landroid/widget/ImageView;

    .line 16
    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 18
    const p2, 0x1020016    # @android:id/title

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->title:Landroid/widget/TextView;

    .line 29
    const p2, 0x7f0a0357    # @id/favorites

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favorites:Landroid/widget/TextView;

    .line 40
    return-void
    .line 42
.end method
