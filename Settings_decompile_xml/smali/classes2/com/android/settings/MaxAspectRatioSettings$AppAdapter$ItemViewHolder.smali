.class Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MaxAspectRatioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public root:Landroid/view/View;

.field final synthetic this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

.field public title:Landroid/widget/TextView;

.field public toggle:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V
    .locals 2

    .line 268
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    .line 269
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 270
    iput-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    const v0, 0x1020006    # @android:id/icon

    .line 271
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016    # @android:id/title

    .line 272
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    .line 273
    sget v0, Lcom/android/settings/R$id;->switch_widget:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 274
    new-instance v1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;-><init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
