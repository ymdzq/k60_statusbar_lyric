.class public Lcom/android/settings/TetherDialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "TetherDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherDialogActivity$IntentSpan;
    }
.end annotation


# instance fields
.field private final HOTSPOT_PROMPT_STATE:Ljava/lang/String;

.field TetherSettings:Lcom/android/settings/MiuiTetherSettings;

.field private hostDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method static bridge synthetic -$$Nest$fgethostDialog(Lcom/android/settings/TetherDialogActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity;->hostDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartTethering(Lcom/android/settings/TetherDialogActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/TetherDialogActivity;->startTethering(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {v0}, Lcom/android/settings/MiuiTetherSettings;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherDialogActivity;->TetherSettings:Lcom/android/settings/MiuiTetherSettings;

    const-string/jumbo v0, "tethering_prompt_state"

    .line 55
    iput-object v0, p0, Lcom/android/settings/TetherDialogActivity;->HOTSPOT_PROMPT_STATE:Ljava/lang/String;

    return-void
.end method

.method private getAgreement(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    .line 103
    sget v0, Lcom/android/settings/R$string;->mibi_privacy_manage_user_license:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    sget v0, Lcom/android/settings/R$string;->mibi_cta_description:I

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 105
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, "https://my.au.com/aus/au-cs1/AuHome?PageID=SSO&ActionID=OPTIONSERVICE&agdt=2"

    move-object v1, p0

    move-object v2, p1

    .line 107
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/TetherDialogActivity;->setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 113
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 114
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 115
    new-instance v1, Lcom/android/settings/TetherDialogActivity$IntentSpan;

    invoke-direct {v1, p1, p4, p5}, Lcom/android/settings/TetherDialogActivity$IntentSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance p4, Lcom/android/settings/TetherDialogActivity$1;

    invoke-direct {p4, p0, p5, p1}, Lcom/android/settings/TetherDialogActivity$1;-><init>(Lcom/android/settings/TetherDialogActivity;Ljava/lang/String;Landroid/content/Context;)V

    .line 126
    invoke-virtual {v1, p4}, Lcom/android/settings/TetherDialogActivity$IntentSpan;->setOnClickListener(Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;)V

    .line 127
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const p1, -0xffff01

    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    .line 129
    invoke-virtual {p2, v1, p3, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-virtual {p2, p0, p3, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p2
.end method

.method private startTethering(I)V
    .locals 2

    const-string v0, "connectivity"

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 143
    new-instance v1, Lcom/android/settings/TetherDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherDialogActivity$2;-><init>(Lcom/android/settings/TetherDialogActivity;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-class p1, Landroid/net/TetheringManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity;->mTetheringManager:Landroid/net/TetheringManager;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/TetherDialogActivity;->showPrivacyDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settings/TetherDialogActivity;->hostDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 191
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public showPrivacyDialog()V
    .locals 3

    .line 155
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    sget v1, Lcom/android/settings/R$string;->mibi_cta_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 157
    invoke-direct {p0, p0}, Lcom/android/settings/TetherDialogActivity;->getAgreement(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 159
    sget v1, Lcom/android/settings/R$string;->mibi_cta_CANCEL:I

    new-instance v2, Lcom/android/settings/TetherDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherDialogActivity$3;-><init>(Lcom/android/settings/TetherDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 164
    sget v1, Lcom/android/settings/R$string;->mibi_cta_OK:I

    new-instance v2, Lcom/android/settings/TetherDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherDialogActivity$4;-><init>(Lcom/android/settings/TetherDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 171
    new-instance v1, Lcom/android/settings/TetherDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherDialogActivity$5;-><init>(Lcom/android/settings/TetherDialogActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 176
    sget v1, Lcom/android/settings/R$string;->mibi_cta_CheckBox:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherDialogActivity;->hostDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 178
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/TetherDialogActivity;->hostDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity;->hostDialog:Lmiuix/appcompat/app/AlertDialog;

    sget v0, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 183
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
