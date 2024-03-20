.class Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CutoutModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CutoutModeSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public spinner:Lmiuix/appcompat/widget/Spinner;

.field final synthetic this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Landroid/view/View;)V
    .locals 3

    .line 262
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    .line 263
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020006    # @android:id/icon

    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016    # @android:id/title

    .line 265
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    .line 266
    sget v0, Lcom/android/settings/R$id;->spinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    .line 267
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    iget-object v0, v0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    const v2, 0x1020014    # @android:id/text1

    invoke-static {p1}, Lcom/android/settings/CutoutModeSettings$AppAdapter;->-$$Nest$fgetmCutoutModeEntries(Lcom/android/settings/CutoutModeSettings$AppAdapter;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 268
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
