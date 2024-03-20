.class Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;
.super Landroid/widget/BaseAdapter;
.source "FluencyModeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FluencyModeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;Landroid/content/Context;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_3

    .line 186
    iget-object p3, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p3}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmContentArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object p3

    array-length p3, p3

    if-lt p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 190
    iget-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/android/settings/R$layout;->fluency_mode_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 192
    :cond_1
    sget p3, Lcom/android/settings/R$id;->txt_fluency_content:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 193
    sget v0, Lcom/android/settings/R$id;->txt_fluency_summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v1}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmContentArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v1}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmStatus(Lcom/android/settings/display/FluencyModeListPreference;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p0}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmSummaryArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-object p2
.end method
