.class public final Lcom/android/systemui/controls/ui/ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final resource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0d0086    # @layout/controls_spinner_item 'res/layout/controls_spinner_item.xml'

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 5
    iput v0, p0, Lcom/android/systemui/controls/ui/ItemAdapter;->resource:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 9
    if-nez p2, :cond_0

    .line 11
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 13
    iget p0, p0, Lcom/android/systemui/controls/ui/ItemAdapter;->resource:I

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    instance-of p3, p0, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;

    .line 26
    if-eqz p3, :cond_1

    .line 28
    check-cast p0, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    if-nez p0, :cond_2

    .line 34
    new-instance p0, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;

    .line 36
    invoke-direct {p0, p2}, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    .line 44
    move-result-object p3

    .line 47
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 53
    iget-object p1, p1, Lcom/android/systemui/controls/ui/SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-object p2
    .line 60
.end method
