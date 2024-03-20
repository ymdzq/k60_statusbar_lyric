.class Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CutoutModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CutoutModeSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleViewHolder"
.end annotation


# instance fields
.field public headerTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Landroid/view/View;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;->this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    .line 277
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 278
    sget p1, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;->headerTitle:Landroid/widget/TextView;

    return-void
.end method
