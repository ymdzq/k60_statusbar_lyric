.class public Lcom/android/settings/development/AppPicker;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AppPicker$AppListAdapter;,
        Lcom/android/settings/development/AppPicker$AppListFragment;,
        Lcom/android/settings/development/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

.field private mDebuggableOnly:Z

.field private mIncludeNothing:Z

.field private mNonSystemOnly:Z

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDebuggableOnly(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncludeNothing(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mIncludeNothing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonSystemOnly(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mNonSystemOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionName(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsDisplayNameComparator()Ljava/util/Comparator;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Lcom/android/settings/development/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/development/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private handleBackPressed()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 128
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.NON_SYSTEM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/AppPicker;->mNonSystemOnly:Z

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.INCLUDE_NOTHING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/AppPicker;->mIncludeNothing:Z

    .line 77
    new-instance v0, Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/development/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    .line 78
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AppListFragment"

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Lcom/android/settings/development/AppPicker$AppListFragment;

    invoke-direct {p1}, Lcom/android/settings/development/AppPicker$AppListFragment;-><init>()V

    .line 92
    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002    # @android:id/content

    invoke-virtual {p0, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AppPicker$AppListFragment;

    if-eqz p1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-ne v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/development/AppPicker;->handleBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
