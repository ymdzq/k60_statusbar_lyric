.class Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiuiZonePickerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/MiuiZonePickerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTimezones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/TimeZoneObj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V
    .locals 1

    .line 188
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    invoke-static {p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmContext(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    invoke-static {p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmZonePickerHelper(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Lcom/android/settings/datetime/ZonePickerHelper;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/ZonePickerHelper;->queryTimezoneItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mTimezones:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mTimezones:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mTimezones:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 212
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->timezone_search_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimeZoneObj;

    .line 218
    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object p3

    .line 219
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-static {p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$mhighlight(Lcom/android/settings/datetime/MiuiZonePickerSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 220
    sget v0, Lcom/android/settings/R$id;->text1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p0

    .line 220
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget p0, Lcom/android/settings/R$id;->text2:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->getGmtName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/TimeZoneObj;",
            ">;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->mTimezones:Ljava/util/List;

    return-void
.end method
