.class Lcom/android/settings/DialogListPreference$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DialogListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DialogListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/DialogListPreference;Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getSummaryText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-static {v0}, Lcom/android/settings/DialogListPreference;->-$$Nest$fgetmSummaries(Lcom/android/settings/DialogListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-static {v0}, Lcom/android/settings/DialogListPreference;->-$$Nest$fgetmSummaries(Lcom/android/settings/DialogListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-static {p0}, Lcom/android/settings/DialogListPreference;->-$$Nest$fgetmSummaries(Lcom/android/settings/DialogListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private getTitleText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/android/settings/R$layout;->dialog_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 124
    :cond_0
    sget p3, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 125
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getPaddingStart()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v2, v1

    .line 129
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 130
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 132
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 135
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/DialogListPreference$ListAdapter;->getTitleText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/DialogListPreference$ListAdapter;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-static {v1}, Lcom/android/settings/DialogListPreference;->-$$Nest$fgetmCheckedItem(Lcom/android/settings/DialogListPreference;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/DialogListPreference$ListAdapter;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
