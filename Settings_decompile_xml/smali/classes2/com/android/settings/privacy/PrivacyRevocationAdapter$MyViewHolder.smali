.class public Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrivacyRevocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/PrivacyRevocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field iconImageView:Landroid/widget/ImageView;

.field slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 103
    sget v0, Lcom/android/settings/R$id;->sliding_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method
