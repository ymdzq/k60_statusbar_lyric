.class public final Lcom/google/android/setupdesign/template/DescriptionMixin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudDescriptionMixin:[I

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 18
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    .line 24
    move-result-object p3

    .line 27
    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    .line 33
    move-result-object p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    :cond_0
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 43
    move-result-object p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    .line 49
    move-result-object p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
    .line 61
.end method


# virtual methods
.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 2
    const v0, 0x7f0a0927    # @id/sud_layout_subtitle

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/widget/TextView;

    .line 11
    return-object p0
    .line 13
.end method
