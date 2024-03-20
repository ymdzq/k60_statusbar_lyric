.class public Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;
.super Landroidx/preference/Preference;
.source "InputMethodCloudPastePreference.java"


# instance fields
.field private mCloudBubbleImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mRedPointImage:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mContext:Landroid/content/Context;

    .line 24
    sget p1, Lcom/android/settings/R$layout;->input_method_cloud_data_paste_mode_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRootView:Landroid/view/View;

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->red_point:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRedPointImage:Landroid/widget/ImageView;

    .line 34
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->bubble_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mCloudBubbleImage:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->setImageShow(I)V

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setImageShow(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "selectValue is error : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodCloudPaste"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mCloudBubbleImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRedPointImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRedPointImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mCloudBubbleImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mRedPointImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->mCloudBubbleImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
