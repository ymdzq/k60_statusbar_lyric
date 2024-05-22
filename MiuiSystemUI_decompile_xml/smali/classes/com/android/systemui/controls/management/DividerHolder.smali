.class public final Lcom/android/systemui/controls/management/DividerHolder;
.super Lcom/android/systemui/controls/management/Holder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final divider:Landroid/view/View;

.field public final frame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/Holder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a0392    # @id/frame

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/controls/management/DividerHolder;->frame:Landroid/view/View;

    .line 12
    const v0, 0x7f0a02e3    # @id/divider

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/controls/management/DividerHolder;->divider:Landroid/view/View;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/ElementWrapper;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/DividerWrapper;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    .line 4
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    if-eqz v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/controls/management/DividerHolder;->frame:Landroid/view/View;

    .line 14
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-boolean p1, p1, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    .line 19
    if-eqz p1, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/DividerHolder;->divider:Landroid/view/View;

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    return-void
    .line 30
.end method
