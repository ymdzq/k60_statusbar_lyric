.class public abstract Lcom/android/systemui/common/ui/binder/TextViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 10
    iget p1, p1, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 23
    iget-object p1, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;->text:Ljava/lang/String;

    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void

    .line 30
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    throw p0
    .line 36
.end method
