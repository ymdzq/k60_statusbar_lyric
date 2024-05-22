.class public final Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;
.super Lcom/android/systemui/qs/QSDetailContent$ItemHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final summary:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final toggle:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailContent$ItemHolder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x1020016    # @android:id/title

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->title:Landroid/widget/TextView;

    .line 14
    const v0, 0x1020010    # @android:id/summary

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->summary:Landroid/widget/TextView;

    .line 25
    const v0, 0x1020017    # @android:id/toggle

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 36
    return-void
    .line 38
.end method
