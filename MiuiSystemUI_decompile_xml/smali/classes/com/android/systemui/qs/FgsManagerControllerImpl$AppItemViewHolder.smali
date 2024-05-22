.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final appLabelView:Landroid/widget/TextView;

.field public final durationView:Landroid/widget/TextView;

.field public final iconView:Landroid/widget/ImageView;

.field public final stopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a035e    # @id/fgs_manager_app_item_label

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->appLabelView:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a035c    # @id/fgs_manager_app_item_duration

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a035d    # @id/fgs_manager_app_item_icon

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->iconView:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0a035f    # @id/fgs_manager_app_item_stop_button

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/Button;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    .line 47
    return-void
    .line 49
.end method
