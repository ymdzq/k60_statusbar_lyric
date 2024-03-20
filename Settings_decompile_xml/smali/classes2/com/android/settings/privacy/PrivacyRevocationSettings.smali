.class public Lcom/android/settings/privacy/PrivacyRevocationSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivacyRevocationSettings.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;,
        Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/AppCompatActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/privacy/PrivacyItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PACKAGE_ARRAY:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

.field private mCountdownTimer:Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;

.field private mListView:Lcom/android/settings/privacy/XRecyclerView;

.field private mPrivacyRevokeAsyncTask:Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

.field private mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lcom/android/settings/privacy/PrivacyRevocationAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrivacyRevokeAsyncTask(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mPrivacyRevokeAsyncTask:Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRevokeDialog(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrivacyRevokeAsyncTask(Lcom/android/settings/privacy/PrivacyRevocationSettings;Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mPrivacyRevokeAsyncTask:Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$misEnabled(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misKddiVersion(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->isKddiVersion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetPACKAGE_ARRAY()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->PACKAGE_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com.android.calendar"

    const-string v1, "com.xiaomi.calendar"

    const-string v2, "com.miui.videoplayer"

    const-string v3, "com.android.updater"

    const-string v4, "com.miui.securitycenter"

    const-string v5, "com.miui.msa.global"

    const-string v6, "com.miui.daemon"

    const-string v7, "com.miui.bugreport"

    const-string v8, "com.android.providers.downloads.ui"

    const-string v9, "com.xiaomi.discover"

    const-string v10, "com.xiaomi.simactivate.service"

    const-string v11, "com.miui.powerkeeper"

    const-string v12, "com.android.settings"

    const-string v13, "com.xiaomi.mipicks"

    .line 50
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->PACKAGE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getCustomDialogTips(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "privacy_revoke_tips"

    const-string v1, "PrivacyRevocationSettings"

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 124
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resId != 0 "

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resId == 0 "

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "privacy_status_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private isKddiVersion()Z
    .locals 1

    const-string/jumbo p0, "ro.miui.customized.region"

    const-string v0, ""

    .line 148
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jp_kd"

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/privacy/PrivacyItem;)Lmiuix/appcompat/app/AlertDialog;
    .locals 9

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_authorize_revoke_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    sget p2, Lcom/android/settings/R$string;->privacy_authorize_revoke_dialog_msg:I

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 304
    :goto_0
    sget p2, Lcom/android/settings/R$string;->privacy_authorize_revoke:I

    new-instance v1, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;-><init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;Lcom/android/settings/privacy/PrivacyItem;)V

    invoke-virtual {v0, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 324
    new-instance p1, Lcom/android/settings/privacy/PrivacyRevocationSettings$4;

    invoke-direct {p1, p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings$4;-><init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;)V

    const/high16 p2, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p2, -0x1

    .line 337
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 338
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    new-instance p2, Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;-><init>(JJLcom/android/settings/privacy/PrivacyRevocationSettings;)V

    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mCountdownTimer:Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;

    .line 340
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-object p1
.end method


# virtual methods
.method public handleClick(Lcom/android/settings/privacy/PrivacyItem;)V
    .locals 2

    .line 348
    iget-boolean v0, p1, Lcom/android/settings/privacy/PrivacyItem;->enable:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-static {p0}, Lcom/android/settings/cloud/util/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget p1, Lcom/android/settings/R$string;->privacy_authorize_network_error:I

    invoke-static {p0, p1}, Lcom/android/settings/cloud/util/Utils;->showShortToast(Landroid/content/Context;I)V

    return-void

    .line 353
    :cond_0
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->getCustomDialogTips(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-direct {p0, p0, v0, p1}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/privacy/PrivacyItem;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PRIVACY_AUTHORIZATION_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    .line 357
    iget-object p1, p1, Lcom/android/settings/privacy/PrivacyItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xdc

    .line 358
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 364
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xdc

    if-ne p1, v0, :cond_3

    .line 366
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    const-string p1, "key"

    .line 370
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "packageName : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PrivacyRevocationSettings"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p3, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-virtual {p3, p1}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->getPrivacyItemByPackageName(Ljava/lang/String;)Lcom/android/settings/privacy/PrivacyItem;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "RESULT_CANCELED: "

    .line 380
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 381
    iput-boolean p2, p1, Lcom/android/settings/privacy/PrivacyItem;->enable:Z

    goto :goto_0

    :cond_2
    const-string p2, "RESULT_OK: "

    .line 376
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 377
    iput-boolean p2, p1, Lcom/android/settings/privacy/PrivacyItem;->enable:Z

    .line 384
    :goto_0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/android/settings/R$layout;->privacy_revocation_settings:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 72
    new-instance p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    .line 73
    sget p1, Lcom/android/settings/R$id;->list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacy/XRecyclerView;

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mListView:Lcom/android/settings/privacy/XRecyclerView;

    .line 74
    sget p1, Lcom/android/settings/R$layout;->privacy_revocation_settings_header:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    sget v1, Lcom/android/settings/R$layout;->privacy_revocation_settings_footer:I

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mListView:Lcom/android/settings/privacy/XRecyclerView;

    new-instance v3, Lcom/android/settings/privacy/XLinearLayoutManager;

    invoke-direct {v3, p0}, Lcom/android/settings/privacy/XLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/privacy/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mListView:Lcom/android/settings/privacy/XRecyclerView;

    iget-object v3, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/privacy/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->isKddiVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mListView:Lcom/android/settings/privacy/XRecyclerView;

    invoke-virtual {v2, p1}, Lcom/android/settings/privacy/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mListView:Lcom/android/settings/privacy/XRecyclerView;

    invoke-virtual {p1, v1}, Lcom/android/settings/privacy/XRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    new-instance v1, Lcom/android/settings/privacy/PrivacyRevocationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings$1;-><init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->setListener(Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;>;"
        }
    .end annotation

    .line 154
    new-instance p1, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;-><init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 392
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 394
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mPrivacyRevokeAsyncTask:Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-virtual {p1, p2}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->setPrivacyItemList(Ljava/util/List;)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 100
    iput-object v1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 101
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mAdapter:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mCountdownTimer:Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 108
    iput-object v1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings;->mCountdownTimer:Lcom/android/settings/privacy/PrivacyRevocationSettings$InnerCountDownTimer;

    :cond_1
    return-void
.end method
