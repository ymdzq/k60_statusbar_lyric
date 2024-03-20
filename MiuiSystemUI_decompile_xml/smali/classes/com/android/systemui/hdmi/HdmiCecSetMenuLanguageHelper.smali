.class public final Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mDenylist:Ljava/util/HashSet;

.field public mLocale:Ljava/util/Locale;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 7
    const/4 p1, -0x2

    .line 9
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 10
    const-string v0, "hdmi_cec_set_menu_language_denylist"

    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    new-instance p2, Ljava/util/HashSet;

    .line 18
    if-nez p1, :cond_0

    .line 20
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, ","

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 34
    :goto_0
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mDenylist:Ljava/util/HashSet;

    .line 38
    return-void
    .line 40
.end method
