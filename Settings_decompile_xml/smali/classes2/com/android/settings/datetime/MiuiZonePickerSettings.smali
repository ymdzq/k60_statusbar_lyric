.class public Lcom/android/settings/datetime/MiuiZonePickerSettings;
.super Lcom/android/settings/BaseFragment;
.source "MiuiZonePickerSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mOnListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTimeZoneList:Landroid/widget/ListView;

.field private mTimezoneAdapter:Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

.field private mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImm(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchText(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZonePickerHelper(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Lcom/android/settings/datetime/ZonePickerHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSearchText(Lcom/android/settings/datetime/MiuiZonePickerSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhighlight(Lcom/android/settings/datetime/MiuiZonePickerSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->highlight(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/android/settings/datetime/MiuiZonePickerSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings$3;-><init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V

    iput-object v0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private highlight(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 177
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->search_locale_highlight_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 179
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/16 v3, 0x21

    .line 178
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private onSortModeChange(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/ZonePickerHelper;->setSortMode(I)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->onQueryTextSubmit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 139
    sget p0, Lcom/android/settings/R$menu;->timezone_sort_mode:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 64
    sget p3, Lcom/android/settings/R$layout;->timezone_search:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget p2, Lcom/android/settings/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimeZoneList:Landroid/widget/ListView;

    .line 66
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 69
    sget p3, Lcom/android/settings/R$layout;->timezone_search_titlebar:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 70
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 71
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    const p3, 0x1020009    # @android:id/input

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mSearchView:Landroid/widget/EditText;

    .line 75
    iget-object v1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p3, 0x102002c    # @android:id/home

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    new-instance p3, Lcom/android/settings/datetime/MiuiZonePickerSettings$1;

    invoke-direct {p3, p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings$1;-><init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mContext:Landroid/content/Context;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 87
    new-instance p2, Lcom/android/settings/datetime/ZonePickerHelper;

    iget-object p3, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settings/datetime/ZonePickerHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;

    .line 88
    new-instance p2, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

    invoke-direct {p2, p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;-><init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimezoneAdapter:Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

    .line 89
    iget-object p3, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimeZoneList:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance p2, Lcom/android/settings/datetime/MiuiZonePickerSettings$2;

    invoke-direct {p2, p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings$2;-><init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V

    iput-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mOnListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 104
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-virtual {p2}, Lcom/android/settings/datetime/ZonePickerHelper;->getSortMode()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->onSortModeChange(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimezoneAdapter:Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimeZoneObj;

    .line 131
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mContext:Landroid/content/Context;

    const-string p3, "alarm"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 132
    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timezone changed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiZonePickerSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    sget v1, Lcom/android/settings/R$id;->sort_by_timezone:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->onSortModeChange(I)V

    goto :goto_0

    .line 148
    :cond_0
    sget v1, Lcom/android/settings/R$id;->sort_by_alphabet:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->onSortModeChange(I)V

    .line 151
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimezoneAdapter:Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

    iget-object v1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mZonePickerHelper:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/ZonePickerHelper;->queryTimezoneItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;->setData(Ljava/util/List;)V

    .line 125
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings;->mTimezoneAdapter:Lcom/android/settings/datetime/MiuiZonePickerSettings$TimezoneAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
