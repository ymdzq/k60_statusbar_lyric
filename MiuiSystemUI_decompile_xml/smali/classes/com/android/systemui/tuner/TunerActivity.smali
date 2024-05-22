.class public Lcom/android/systemui/tuner/TunerActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f1404a8    # @style/Theme.AppCompat.DayNight

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 14
    const/high16 v0, -0x80000000

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 17
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 21
    const v0, 0x7f0d03c4    # @layout/tuner_activity 'res/layout/tuner_activity.xml'

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 27
    const v0, 0x7f0a0057    # @id/action_bar

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/Toolbar;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 44
    move-result-object v0

    .line 47
    const-string/jumbo v1, "tuner"

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 51
    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    const-string v2, "com.android.settings.action.DEMO_MODE"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    :goto_0
    if-eqz p1, :cond_2

    .line 77
    new-instance p1, Lcom/android/systemui/tuner/DemoModeFragment;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 81
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 83
    invoke-direct {p1, v0, v2}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 91
    invoke-direct {p1, v0}, Lcom/android/systemui/tuner/TunerFragment;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 100
    move-result-object p0

    .line 103
    const v0, 0x7f0a022a    # @id/content_frame

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 107
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    .line 111
    :cond_3
    return-void
    .line 114
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    new-instance p0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 7
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 12
    const-class v2, Lcom/android/systemui/fragments/FragmentService;

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    instance-of v2, v1, Lcom/android/systemui/Dumpable;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    iget-object v0, v0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x102002c    # @android:id/home

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    .line 11
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method
