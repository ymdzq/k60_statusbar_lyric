.class public Lcom/android/systemui/tuner/LockscreenFragment;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mTunables:Ljava/util/ArrayList;

.field public mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 12
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 14
    const p1, 0x7f170003    # @xml/lockscreen_settings 'res/xml/lockscreen_settings.xml'

    .line 17
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 20
    const-string/jumbo p1, "sysui_keyguard_left"

    .line 23
    const-string/jumbo v0, "sysui_keyguard_left_unlock"

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo p1, "sysui_keyguard_right"

    .line 32
    const-string/jumbo v0, "sysui_keyguard_right_unlock"

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
    .line 41
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    return-void
    .line 15
.end method

.method public final setupGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Landroidx/preference/SwitchPreference;

    .line 10
    new-instance v1, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method
