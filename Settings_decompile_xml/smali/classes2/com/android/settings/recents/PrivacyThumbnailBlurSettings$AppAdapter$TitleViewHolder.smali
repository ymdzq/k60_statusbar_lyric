.class Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleViewHolder"
.end annotation


# instance fields
.field public headerTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    .line 217
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 218
    sget p1, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;->headerTitle:Landroid/widget/TextView;

    const/4 p0, 0x0

    .line 219
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
