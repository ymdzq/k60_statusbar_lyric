.class Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AiSettingsSubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AiSettingsSubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemHolder"
.end annotation


# instance fields
.field itembg:Landroid/widget/RelativeLayout;

.field selected:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/AiSettingsSubAdapter;Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    sget p1, Lcom/android/settings/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->tv:Landroid/widget/TextView;

    .line 82
    sget p1, Lcom/android/settings/R$id;->selected_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->selected:Landroid/widget/ImageView;

    .line 83
    sget p1, Lcom/android/settings/R$id;->item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->itembg:Landroid/widget/RelativeLayout;

    return-void
.end method
