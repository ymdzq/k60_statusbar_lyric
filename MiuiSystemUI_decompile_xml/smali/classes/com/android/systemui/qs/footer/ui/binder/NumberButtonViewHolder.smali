.class public final Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final newDot:Landroid/widget/ImageView;

.field public final number:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->view:Landroid/view/View;

    .line 5
    const v0, 0x7f0a06ba    # @id/number

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->number:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0a0691    # @id/new_dot

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->newDot:Landroid/widget/ImageView;

    .line 27
    return-void
    .line 29
.end method
