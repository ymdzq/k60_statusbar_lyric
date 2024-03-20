.class public Lcom/android/settings/MiuiSettings$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public arrowRight:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/MiuiSettings;

.field public title:Landroid/widget/TextView;

.field public value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSettings;Landroid/view/View;)V
    .locals 4

    .line 1020
    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->this$0:Lcom/android/settings/MiuiSettings;

    .line 1021
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1022
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x1020016    # @android:id/title

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 1054
    sget v0, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 1055
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1056
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1032
    :cond_0
    sget v0, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1034
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1035
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1037
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    const p1, 0x1020006    # @android:id/icon

    .line 1040
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1041
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x1020010    # @android:id/summary

    .line 1042
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1043
    sget p1, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    .line 1045
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1046
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 1047
    iget-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 1048
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1049
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1050
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 1025
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    :cond_4
    :goto_1
    return-void
.end method
