.class Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public root:Landroid/view/View;

.field final synthetic this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

.field public title:Landroid/widget/TextView;

.field public toggle:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V
    .locals 2

    .line 229
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    .line 230
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 231
    iput-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    const v0, 0x1020006    # @android:id/icon

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016    # @android:id/title

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    .line 234
    sget v0, Lcom/android/settings/R$id;->switch_widget:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 235
    new-instance v1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
