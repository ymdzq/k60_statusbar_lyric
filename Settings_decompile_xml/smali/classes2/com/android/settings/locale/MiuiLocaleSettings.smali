.class public Lcom/android/settings/locale/MiuiLocaleSettings;
.super Lcom/android/settings/BaseFragment;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;,
        Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;,
        Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLocaleAdapter:Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

.field private mLocaleList:Landroid/widget/ListView;

.field private mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

.field private mOnListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

.field private mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private mSearchViewEmpty:Landroid/widget/LinearLayout;

.field private mSelectedLocale:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7_Sg_ZE3YYGZtfeKig9yesgZVQg(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->lambda$showInstallPreInstallAppDialog$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5wrPR00NQQMfEMeY16gZb05-lc(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/locale/MiuiLocaleSettings;->lambda$showInstallPreInstallAppDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/locale/MiuiLocaleSettings;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputMethodManager(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocaleAdapter(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleAdapter:Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocaleList(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocaleSettingsHelper(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/LocaleSettingsHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryAsyncTask(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchText(Lcom/android/settings/locale/MiuiLocaleSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchViewEmpty(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchViewEmpty:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedLocale(Lcom/android/settings/locale/MiuiLocaleSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSelectedLocale:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSearchText(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhighlight(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/locale/MiuiLocaleSettings;->highlight(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/locale/MiuiLocaleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/locale/MiuiLocaleSettings$1;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyLocaleSelect(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 272
    invoke-static {p1, v0}, Lmiui/os/MiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "time-zone"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 281
    :cond_0
    new-instance p1, Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;

    invoke-direct {p1, p0}, Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V

    .line 282
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "MiuiLocaleSettings"

    const-string v0, "Fail to call MiuiInit.initCustEnvironment, please retry."

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->finish()V

    :goto_0
    return-void
.end method

.method private highlight(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 341
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 342
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->search_locale_highlight_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 343
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/16 v3, 0x21

    .line 342
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showInstallPreInstallAppDialog$0(Ljava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->applyLocaleSelect(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showInstallPreInstallAppDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    .line 266
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/settings/locale/MiuiLocaleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showInstallPreInstallAppDialog(Ljava/lang/String;)V
    .locals 2

    .line 260
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 261
    sget v1, Lcom/android/settings/R$string;->install_preinstall_app:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/locale/MiuiLocaleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 268
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settings/locale/MiuiLocaleSettings;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/MiuiSettings;

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mContext:Landroid/content/Context;

    .line 110
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_MEXICO_TELCEL:Z

    const-string/jumbo v1, "mx"

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSelectedLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 111
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lmiui/os/MiuiInit;->getCustVariants()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 112
    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "MiuiLocaleSettings"

    const-string v1, "can not get cust variants, finish"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->finish(Z)V

    :cond_3
    const-string/jumbo p0, "setting_Additional_settings_region"

    .line 117
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 122
    sget p3, Lcom/android/settings/R$layout;->locale_search:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    sget p2, Lcom/android/settings/R$id;->search_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchViewEmpty:Landroid/widget/LinearLayout;

    .line 124
    sget p2, Lcom/android/settings/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleList:Landroid/widget/ListView;

    .line 125
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 p3, 0x1

    .line 127
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 128
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 129
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    sget p3, Lcom/android/settings/R$layout;->timezone_search_titlebar:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 130
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    const p3, 0x1020009    # @android:id/input

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSearchView:Landroid/widget/EditText;

    .line 132
    new-instance v1, Lcom/android/settings/locale/MiuiLocaleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/locale/MiuiLocaleSettings$2;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p3, 0x102002c    # @android:id/home

    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 150
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance p3, Lcom/android/settings/locale/MiuiLocaleSettings$3;

    invoke-direct {p3, p0}, Lcom/android/settings/locale/MiuiLocaleSettings$3;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mContext:Landroid/content/Context;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 158
    invoke-static {}, Lcom/android/settings/locale/LocaleSettingsHelper;->getInstance()Lcom/android/settings/locale/LocaleSettingsHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    invoke-virtual {p3}, Lcom/android/settings/locale/LocaleSettingsHelper;->getCurrentLocale()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    invoke-static {}, Lmiui/os/MiuiInit;->getCustVariants()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/locale/LocaleSettingsHelper;->setLocales([Ljava/lang/String;)V

    .line 163
    :cond_0
    sget-boolean p2, Lcom/android/settings/RegionUtils;->IS_MEXICO_TELCEL:Z

    if-eqz p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    const-string/jumbo p3, "mx"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/locale/LocaleSettingsHelper;->setLocales([Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleSettingsHelper:Lcom/android/settings/locale/LocaleSettingsHelper;

    iget-object p3, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/settings/locale/LocaleSettingsHelper;->constructLocaleList(Landroid/content/Context;)V

    .line 168
    new-instance p2, Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    iget-object p3, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleAdapter:Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    .line 169
    iget-object p3, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleList:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    new-instance p2, Lcom/android/settings/locale/MiuiLocaleSettings$4;

    invoke-direct {p2, p0}, Lcom/android/settings/locale/MiuiLocaleSettings$4;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V

    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mOnListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 183
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleList:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

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

    .line 228
    iget-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleAdapter:Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/locale/LocaleInfo;

    invoke-virtual {p1}, Lcom/android/settings/locale/LocaleInfo;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSelectedLocale:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 230
    iput-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mSelectedLocale:Ljava/lang/String;

    .line 231
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mLocaleAdapter:Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->showInstallPreInstallAppDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No need to set since same local chosen,selectedLocale="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiLocaleSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 291
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mDialog:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 191
    :cond_0
    new-instance v0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;-><init>(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    .line 192
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings;->mQueryAsyncTask:Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    .line 305
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    return-void
.end method
