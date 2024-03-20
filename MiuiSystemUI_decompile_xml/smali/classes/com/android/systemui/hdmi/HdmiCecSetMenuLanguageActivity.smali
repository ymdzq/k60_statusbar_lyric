.class public Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 6
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v0, p1}, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;)V

    .line 18
    iget-object p1, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 27
    iget-object v0, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mDenylist:Ljava/util/HashSet;

    .line 29
    iget-object v1, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mLocale:Ljava/util/Locale;

    .line 31
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, ","

    .line 40
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    iget-object p1, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 46
    check-cast p1, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 48
    const-string v1, "hdmi_cec_set_menu_language_denylist"

    .line 50
    const/4 v2, -0x2

    .line 52
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 56
    return-void
    .line 59
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/tv/TvBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const/high16 v0, 0x80000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 17
    const-string v0, "android.hardware.hdmi.extra.LOCALE"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, v0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mLocale:Ljava/util/Locale;

    .line 33
    iget-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 35
    iget-object v0, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mDenylist:Ljava/util/HashSet;

    .line 37
    iget-object p1, p1, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mLocale:Ljava/util/Locale;

    .line 39
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 51
    :cond_0
    return-void
    .line 54
.end method

.method public final onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageActivity;->mHdmiCecSetMenuLanguageHelper:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mLocale:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f130502    # @string/hdmi_cec_set_menu_language_title 'Do you want to change the system language to %1$s?'

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x7f130501    # @string/hdmi_cec_set_menu_language_description 'System language change requested by another device'

    .line 24
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    const v2, 0x7f0a0151    # @id/bottom_sheet_title

    .line 31
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Landroid/widget/TextView;

    .line 38
    const v3, 0x7f0a014c    # @id/bottom_sheet_body

    .line 40
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    const v4, 0x7f0a014d    # @id/bottom_sheet_icon

    .line 49
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v4

    .line 55
    check-cast v4, Landroid/widget/ImageView;

    .line 56
    const v5, 0x7f0a0150    # @id/bottom_sheet_second_icon

    .line 58
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v5

    .line 64
    check-cast v5, Landroid/widget/ImageView;

    .line 65
    const v6, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 67
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Landroid/widget/Button;

    .line 74
    const v7, 0x7f0a014e    # @id/bottom_sheet_negative_button

    .line 76
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v7

    .line 82
    check-cast v7, Landroid/widget/Button;

    .line 83
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x108055d    # @android:drawable/ic_signal_location

    .line 91
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const/16 v0, 0x8

    .line 97
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    const v0, 0x7f1304ff    # @string/hdmi_cec_set_menu_language_accept 'Change language'

    .line 102
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 105
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f130500    # @string/hdmi_cec_set_menu_language_decline 'Keep current language'

    .line 111
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    .line 114
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v7}, Landroid/widget/Button;->requestFocus()Z

    .line 120
    return-void
    .line 123
.end method
