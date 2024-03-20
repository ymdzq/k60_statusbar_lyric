.class public Lcom/android/settings/OldmanModeSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OldmanModeSettings$JeejenStatus;
    }
.end annotation


# instance fields
.field private mActionBtnView:Landroid/widget/Button;

.field private mDefaultHomePkg:Ljava/lang/String;

.field private mDesView:Landroid/widget/TextView;

.field private mInstalledJeejenPkgName:Ljava/lang/String;

.field private mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;


# direct methods
.method public static synthetic $r8$lambda$sINDFXSXiapvozsGJcY5okjANuc(Lcom/android/settings/OldmanModeSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/OldmanModeSettings;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->jumpToLauncherSetting()V

    return-void
.end method

.method private obtainDefaultHomePackageName()V
    .locals 3

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 155
    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mDefaultHomePkg:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mDefaultHomePkg:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private obtainJeejenStatus()V
    .locals 7

    .line 119
    sget-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->UNINSTALLED:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    const-string v0, "com.jeejen.family.miui"

    const-string v1, "com.jeejen.family"

    .line 120
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 127
    aget-object v4, v0, v3

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 130
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    .line 138
    :cond_3
    iput-object v4, p0, Lcom/android/settings/OldmanModeSettings;->mInstalledJeejenPkgName:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/settings/OldmanModeSettings;->obtainDefaultHomePackageName()V

    .line 140
    iget-object v5, p0, Lcom/android/settings/OldmanModeSettings;->mDefaultHomePkg:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    sget-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    return-void

    .line 144
    :cond_4
    sget-object v4, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_NOT_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    iput-object v4, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private setDefaultHomeLauncher(Ljava/lang/String;)V
    .locals 12

    .line 162
    invoke-direct {p0}, Lcom/android/settings/OldmanModeSettings;->obtainDefaultHomePackageName()V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/OldmanModeSettings;->mDefaultHomePkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/settings/OldmanModeSettings;->mDefaultHomePkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 169
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 170
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x20000

    .line 171
    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 173
    new-array v4, v3, [Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_3

    .line 176
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 177
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v4, v5

    .line 178
    iget v9, v8, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v6, :cond_1

    move v6, v9

    .line 179
    :cond_1
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    :cond_3
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "android.intent.category.DEFAULT"

    .line 185
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 186
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 187
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v6, v4, p1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method private updateState()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/OldmanModeSettings;->obtainJeejenStatus()V

    .line 65
    sget-object v0, Lcom/android/settings/OldmanModeSettings$1;->$SwitchMap$com$android$settings$OldmanModeSettings$JeejenStatus:[I

    iget-object v1, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mDesView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oldman_uninstalled_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object p0, p0, Lcom/android/settings/OldmanModeSettings;->mActionBtnView:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->oldman_uninstalled_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mDesView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oldman_installed_not_current_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/OldmanModeSettings;->mActionBtnView:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->oldman_installed_not_current_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mDesView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oldman_installed_current_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object p0, p0, Lcom/android/settings/OldmanModeSettings;->mActionBtnView:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->oldman_installed_current_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public jumpToLauncherSetting()V
    .locals 4

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.DefaultHomeSettings"

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    sget-object v2, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    if-ne v1, v2, :cond_0

    const-string v1, "com.miui.home"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/OldmanModeSettings;->mInstalledJeejenPkgName:Ljava/lang/String;

    .line 195
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-direct {p0, v1}, Lcom/android/settings/OldmanModeSettings;->setDefaultHomeLauncher(Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    sget v0, Lcom/android/settings/R$string;->default_launcher_set_system_message:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/R$string;->default_launcher_set_jeejen_message:I

    :goto_1
    const/4 v1, 0x0

    .line 201
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mActionBtnView:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 85
    sget-object p1, Lcom/android/settings/OldmanModeSettings$1;->$SwitchMap$com$android$settings$OldmanModeSettings$JeejenStatus:[I

    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mJeejenStatus:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "market://details?id=com.jeejen.family&ref=com.miui.home_setting&back=true"

    .line 101
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "OldmanModeSettings"

    const-string/jumbo v1, "start html to download"

    .line 106
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-string v1, "https://app.xiaomi.com/details?id=com.jeejen.family&back=true&ref=com.miui.home_setting"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->set_jeejen_prompt_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->set_jeejen_prompt_title:I

    .line 93
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/OldmanModeSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/OldmanModeSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/OldmanModeSettings;)V

    const p0, 0x1040013    # @android:string/yes

    .line 94
    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040009    # @android:string/no

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->jumpToLauncherSetting()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget p1, Lcom/android/settings/R$layout;->oldman_mode_settings:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 52
    sget p1, Lcom/android/settings/R$id;->des:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/OldmanModeSettings;->mDesView:Landroid/widget/TextView;

    .line 53
    sget p1, Lcom/android/settings/R$id;->action_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/OldmanModeSettings;->mActionBtnView:Landroid/widget/Button;

    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/OldmanModeSettings;->updateState()V

    return-void
.end method
