.class public final Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final chevron:Landroid/widget/ImageView;

.field public final icon:Landroid/widget/ImageView;

.field public final newDot:Landroid/widget/ImageView;

.field public final text:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->view:Landroid/view/View;

    .line 5
    const v0, 0x7f0a0412    # @id/icon

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->icon:Landroid/widget/ImageView;

    .line 16
    const v0, 0x7f0a0966    # @id/text

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->text:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0a0691    # @id/new_dot

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->newDot:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0a01e7    # @id/chevron_icon

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->chevron:Landroid/widget/ImageView;

    .line 49
    return-void
    .line 51
.end method
