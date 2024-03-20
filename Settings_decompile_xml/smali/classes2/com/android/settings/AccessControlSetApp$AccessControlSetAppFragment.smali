.class public Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessControlSetApp.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControlSetApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessControlSetAppFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPasswordConfirmed:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmComparator(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Ljava/util/Comparator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitCreate(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->initCreate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    .line 54
    new-instance v0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;-><init>(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private addPackageInfo(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;-><init>(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initCreate()V
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_1

    .line 121
    sget-object v5, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v5, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_3
    invoke-direct {p0, v2, v5}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->addPackageInfo(Ljava/util/ArrayList;Z)V

    .line 133
    invoke-direct {p0, v3, v1}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->addPackageInfo(Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "security"

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "password_confirmed"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    .line 83
    :cond_0
    new-instance p1, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 84
    invoke-virtual {p1}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 89
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AccessControlSetApp.Loader"

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mWorkHandler:Landroid/os/Handler;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mHandler:Landroid/os/Handler;

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->initCreate()V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$2;-><init>(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 199
    sget p1, Lcom/android/settings/R$xml;->access_control_set_app:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 205
    check-cast p2, Ljava/lang/Boolean;

    .line 206
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "security"

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 208
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0, p1}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "password_confirmed"

    .line 193
    iget-boolean p0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    .line 178
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->mPasswordConfirmed:Z

    :cond_0
    return-void
.end method
