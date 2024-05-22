.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/ListPreference;

.field public final synthetic f$3:Landroidx/preference/Preference;

.field public final synthetic f$4:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/ListPreference;

    .line 4
    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    .line 6
    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$4:Landroidx/preference/ListPreference;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    .line 10
    iget-object p0, v1, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance p1, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;

    .line 14
    move-object v0, p1

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    const/4 p0, 0x1

    .line 23
    return p0
    .line 24
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    .line 2
    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/ListPreference;

    .line 6
    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$4:Landroidx/preference/ListPreference;

    .line 8
    sget-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 10
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v2, Landroid/widget/EditText;

    .line 17
    invoke-virtual {v1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p0

    .line 22
    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p0, Landroid/app/AlertDialog$Builder;

    .line 26
    invoke-virtual {v1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 43
    move-result-object p0

    .line 46
    const/high16 p1, 0x1040000    # @android:string/cancel

    .line 47
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    move-result-object p0

    .line 53
    new-instance p1, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda7;

    .line 54
    move-object v0, p1

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    .line 57
    const v0, 0x104000a    # @android:string/ok

    .line 60
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 67
    return-void
    .line 70
.end method
