.class public Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;
.super Lcom/android/settings/BaseFragment;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;,
        Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;
    }
.end annotation


# static fields
.field public static final TAG_APP_ITEM:I

.field public static final mListFlags:[I


# instance fields
.field private mAdapter:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

.field private mApkIconLoader:Lcom/android/settings/ApkIconLoader;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDisabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mListChoices:[Ljava/lang/String;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mAdapter:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApkIconLoader(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/ApkIconLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckbox(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDisabledApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mEnabledApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->loadPackages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetAppText(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getAppText(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget v0, Lcom/android/settings/R$string;->auto_disable_screenbuttons_title:I

    sput v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->TAG_APP_ITEM:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 66
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mListFlags:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 175
    new-instance v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$3;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mEnabledApps:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDisabledApps:Ljava/util/List;

    return-void
.end method

.method private static getAppText(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 262
    sget p1, Lcom/android/settings/R$string;->auto_disable_screenbuttons_ask:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 264
    sget p1, Lcom/android/settings/R$string;->auto_disable_screenbuttons_auto:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 266
    sget p1, Lcom/android/settings/R$string;->auto_disable_screenbuttons_no:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private initHeaderView()V
    .locals 5

    const-string v0, "is_pad"

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->auto_disable_screenbuttons_checkbox:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    .line 132
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v3

    const-string v4, "enable_auto_disable_screen_rotation"

    .line 131
    invoke-static {v1, v4, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    const v2, 0x1020001    # @android:id/checkbox

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 134
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    new-instance v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$2;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mAdapter:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->setHeaderView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 186
    new-instance v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroidx/fragment/app/FragmentManager;)V

    const/4 p0, 0x0

    .line 254
    invoke-virtual {v0, p0}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/Void;

    .line 255
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0xabea

    invoke-static {p1, v0}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;I)V

    .line 80
    new-instance p1, Lcom/android/settings/ApkIconLoader;

    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 90
    sget p1, Lcom/android/settings/R$string;->auto_disable_screenbuttons_ask:I

    .line 91
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->auto_disable_screenbuttons_auto:I

    .line 92
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->auto_disable_screenbuttons_no:I

    .line 93
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mListChoices:[Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader;->stop()V

    .line 167
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    .line 172
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 101
    sget p0, Lcom/android/settings/R$layout;->auto_disable_screenbuttons_app_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 106
    instance-of p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 107
    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    sget p2, Lcom/android/settings/R$id;->recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    new-instance p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mAdapter:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    .line 118
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->initHeaderView()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->loadPackages()V

    .line 121
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mAdapter:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
