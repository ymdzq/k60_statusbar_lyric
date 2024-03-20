.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field headerTitle:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;Landroid/view/View;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    .line 447
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 448
    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->-$$Nest$fgetmHeaderView(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;)Landroid/view/View;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    const p1, 0x1020006    # @android:id/icon

    .line 451
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x1020016    # @android:id/title

    .line 452
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x1020010    # @android:id/summary

    .line 453
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 454
    sget p1, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    return-void
.end method
