.class public Lcom/android/settings/emergency/ui/view/ContactsItemView;
.super Landroid/widget/LinearLayout;
.source "ContactsItemView.java"


# instance fields
.field private mDeleteBtn:Landroid/widget/ImageView;

.field private mDragBtn:Landroid/widget/ImageView;

.field private mEditMode:Z

.field private mName:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindData(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mNumber:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->emergency_contact_name_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->emergency_contact_number_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-boolean p1, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mEditMode:Z

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDragBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDragBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    sget v0, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mName:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/android/settings/R$id;->number:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mNumber:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/android/settings/R$id;->drag_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDragBtn:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/android/settings/R$id;->delete_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDeleteBtn:Landroid/widget/ImageView;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mEditMode:Z

    return-void
.end method

.method public setOnDeleteBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDragBtnClickListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsItemView;->mDragBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
