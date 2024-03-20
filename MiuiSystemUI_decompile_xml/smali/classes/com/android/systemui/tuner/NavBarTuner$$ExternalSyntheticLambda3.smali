.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/ListPreference;

.field public final synthetic f$3:Landroidx/preference/ListPreference;

.field public final synthetic f$4:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/ListPreference;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/Preference;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    .line 4
    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/ListPreference;

    .line 6
    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/Preference;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    .line 10
    iget-object p0, v1, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance p1, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;

    .line 14
    move-object v0, p1

    .line 16
    move-object v2, p2

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
    .line 24
.end method
