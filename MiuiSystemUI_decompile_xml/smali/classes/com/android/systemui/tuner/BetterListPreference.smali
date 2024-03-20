.class public Lcom/android/systemui/tuner/BetterListPreference;
.super Landroidx/preference/ListPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/BetterListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/BetterListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 5
    return-void
    .line 7
.end method
