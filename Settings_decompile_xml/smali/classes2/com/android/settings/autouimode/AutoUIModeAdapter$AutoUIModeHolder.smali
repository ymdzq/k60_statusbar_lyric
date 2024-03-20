.class Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AutoUIModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoUIModeHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field switcher:Lmiuix/slidingwidget/widget/SlidingButton;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    sget v0, Lcom/android/settings/R$id;->icon_imageView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->image:Landroid/widget/ImageView;

    .line 121
    sget v0, Lcom/android/settings/R$id;->app_name_textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->title:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/android/settings/R$id;->sliding_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method
