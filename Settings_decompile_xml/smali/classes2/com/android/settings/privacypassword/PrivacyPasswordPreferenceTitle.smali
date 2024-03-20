.class public Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "PrivacyPasswordPreferenceTitle.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mPreferenceTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$X25wr3yLAcJ25F7EzeFbpvOOQiU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;->lambda$onBindView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPreferenceTitleId()I
    .locals 0

    .line 47
    sget p0, Lcom/android/settings/R$string;->privacy_password_settings_summary:I

    return p0
.end method

.method private static synthetic lambda$onBindView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 35
    sget v0, Lcom/android/settings/R$id;->preference_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;->mPreferenceTitle:Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;->getPreferenceTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordPreferenceTitle;->mPreferenceTitle:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 42
    sget p1, Lcom/android/settings/R$layout;->privacy_password_preference_title:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method
