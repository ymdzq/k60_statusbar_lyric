.class Lcom/android/settings/SettingsFragment$SearchItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchItemViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public path:Landroid/widget/TextView;

.field public summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1461
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1472
    :cond_0
    sget v0, Lcom/android/settings/R$id;->settings_search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 1473
    sget v0, Lcom/android/settings/R$id;->settings_search_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->name:Landroid/widget/TextView;

    .line 1474
    sget v0, Lcom/android/settings/R$id;->settings_search_item_path:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 1465
    :cond_1
    sget v0, Lcom/android/settings/R$id;->settings_search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 1466
    sget v0, Lcom/android/settings/R$id;->settings_search_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->name:Landroid/widget/TextView;

    .line 1467
    sget v0, Lcom/android/settings/R$id;->settings_search_item_path:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->path:Landroid/widget/TextView;

    :goto_0
    return-void
.end method
