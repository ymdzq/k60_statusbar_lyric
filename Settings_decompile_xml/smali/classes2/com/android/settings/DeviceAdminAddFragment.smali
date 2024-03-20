.class public Lcom/android/settings/DeviceAdminAddFragment;
.super Lcom/android/settings/BaseFragment;
.source "DeviceAdminAddFragment.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field private mExtraDisableWarningMsg:Ljava/lang/CharSequence;

.field mHandler:Landroid/os/Handler;

.field mRefreshing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmExtraDisableWarningMsg(Lcom/android/settings/DeviceAdminAddFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mExtraDisableWarningMsg:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExtraDisableWarningMsg(Lcom/android/settings/DeviceAdminAddFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mExtraDisableWarningMsg:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$misManagedProfile(Lcom/android/settings/DeviceAdminAddFragment;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminAddFragment;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgEllipsized:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddingPolicies:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method private getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 5

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 374
    sget v1, Lcom/android/settings/R$layout;->app_permission_item_old:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 375
    sget v1, Lcom/android/settings/R$id;->permission_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 376
    sget v2, Lcom/android/settings/R$id;->permission_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 377
    sget v3, Lcom/android/settings/R$id;->perm_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$drawable;->ic_text_dot:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    .line 384
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method private isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 0

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 418
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 417
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 305
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 180
    sget p0, Lcom/android/settings/R$layout;->miui_device_admin_add:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getEllipsizedLines()I
    .locals 1

    const-string/jumbo v0, "window"

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 406
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "Bad "

    const-string v1, "Unable to retrieve device policy "

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mHandler:Landroid/os/Handler;

    const-string p1, "device_policy"

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const-string v2, "DeviceAdminAdd"

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No component specified in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 107
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v8, 0x8000

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    move v7, v6

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_3

    .line 114
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 115
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    :try_start_1
    iput-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 121
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7, v9}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v5

    goto :goto_3

    :catch_0
    move-exception v4

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v4

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v0, v6

    :goto_3
    if-nez v0, :cond_4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to add invalid device admin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    .line 138
    :cond_4
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 139
    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 141
    :try_start_2
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v3, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iput-boolean v6, p0, Lcom/android/settings/DeviceAdminAddFragment;->mRefreshing:Z

    .line 157
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_6

    .line 160
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 161
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v1, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, p1, v1}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 162
    iput-boolean v5, p0, Lcom/android/settings/DeviceAdminAddFragment;->mRefreshing:Z

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 166
    :cond_6
    :goto_5
    iget-boolean p1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mRefreshing:Z

    if-nez p1, :cond_7

    const/4 p1, -0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFragment;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgText:Ljava/lang/CharSequence;

    return-void

    :catch_2
    move-exception v0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    :catch_3
    move-exception v0

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    :catch_4
    move-exception v0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mExtraDisableWarningMsg:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 286
    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/android/settings/DeviceAdminAddFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceAdminAddFragment$4;-><init>(Lcom/android/settings/DeviceAdminAddFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 293
    sget p0, Lcom/android/settings/R$string;->dlg_cancel:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 274
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAddFragment;->updateInterface()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 186
    sget v0, Lcom/android/settings/R$id;->admin_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminIcon:Landroid/widget/ImageView;

    .line 187
    sget v0, Lcom/android/settings/R$id;->admin_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminName:Landroid/widget/TextView;

    .line 188
    sget v0, Lcom/android/settings/R$id;->admin_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminDescription:Landroid/widget/TextView;

    .line 190
    sget v0, Lcom/android/settings/R$id;->add_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    .line 191
    sget v0, Lcom/android/settings/R$id;->add_msg_expander:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/DeviceAdminAddFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceAdminAddFragment$1;-><init>(Lcom/android/settings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAddFragment;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 201
    sget v0, Lcom/android/settings/R$id;->admin_warning:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminWarning:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/settings/R$id;->admin_policies:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 203
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mCancelButton:Landroid/widget/Button;

    .line 204
    new-instance v1, Lcom/android/settings/DeviceAdminAddFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceAdminAddFragment$2;-><init>(Lcom/android/settings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    sget v0, Lcom/android/settings/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActionButton:Landroid/widget/Button;

    .line 210
    new-instance v1, Lcom/android/settings/DeviceAdminAddFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceAdminAddFragment$3;-><init>(Lcom/android/settings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 1

    .line 390
    check-cast p1, Landroid/widget/TextView;

    .line 392
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgEllipsized:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgEllipsized:Z

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 394
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgEllipsized:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAddFragment;->getEllipsizedLines()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 396
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgEllipsized:Z

    if-eqz p0, :cond_2

    const p0, 0x1108001b

    goto :goto_2

    :cond_2
    const p0, 0x1108001a

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method updateInterface()V
    .locals 6

    .line 310
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mRefreshing:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v1

    .line 331
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 332
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 333
    iget v4, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DeviceAdminAddFragment;->getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v4

    .line 334
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/settings/DeviceAdminAddFragment;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/settings/DeviceAdminAddFragment;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminWarning:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->device_admin_status:I

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 341
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 340
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActionButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->remove_device_admin:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdding:Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 345
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminAddFragment;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 349
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminWarning:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->admin_profile_owner_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActionButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->remove_managed_profile_label:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 353
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v1

    .line 355
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 356
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 357
    iget v5, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v4, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/settings/DeviceAdminAddFragment;->getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v4

    .line 358
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/settings/DeviceAdminAddFragment;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/DeviceAdminAddFragment;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdminWarning:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->device_admin_warning:I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 365
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 364
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->add_device_admin:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mAdding:Z

    :cond_4
    :goto_4
    return-void
.end method
