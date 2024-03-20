.class public Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DropDownPreferenceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDemoItems:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 2

    .line 31
    sget v0, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout:I

    const v1, 0x1020014    # @android:id/text1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public addAll([Ljava/lang/Object;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 77
    iget-object v1, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput-object v0, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 71
    iput-object v0, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    array-length p0, p0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->dropdown_demo_adapter_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance p3, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;-><init>(Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder-IA;)V

    .line 57
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 63
    check-cast p3, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;

    .line 64
    iget-object p3, p3, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public updateEnabledIME([Ljava/lang/CharSequence;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->mDemoItems:[Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->clear()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->addAll([Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
