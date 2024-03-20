.class public Lcom/android/systemui/tuner/OtherPrefs;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 0

    .line 1
    const p1, 0x7f17000b    # @xml/other_settings 'res/xml/other_settings.xml'

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 5
    return-void
    .line 8
.end method
