.class public Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiMobileDataUsedActivity.java"


# instance fields
.field private btnSkip:Landroid/widget/TextView;

.field private count:I

.field private data:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$Xac0iMQCKoRn3VqzobJ8Qvdir1M(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->count:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMobileDataDialog(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->checkMobileDataDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCheckMobileDataDialog(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->showCheckMobileDataDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDataConnectionDialog(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->showDataConnectionDialog(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->count:I

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->data:Landroid/content/Intent;

    .line 35
    new-instance v0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;-><init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V

    iput-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMobileDataDialog()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->showCheckMobileDataDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 4

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private showCheckMobileDataDialog()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->data:Landroid/content/Intent;

    const-string/jumbo v1, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 129
    iget-object v1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->data:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDataConnectionDialog(Landroid/content/Context;)V
    .locals 2

    .line 136
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    sget p1, Lcom/android/settings/R$string;->dialog_check_title:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 138
    sget p1, Lcom/android/settings/R$string;->dialog_check_context:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 139
    sget p1, Lcom/android/settings/R$string;->dialog_check_button_positive:I

    new-instance v1, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$3;-><init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 146
    sget p1, Lcom/android/settings/R$string;->dialog_check_button_negative:I

    new-instance v1, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$4;-><init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 152
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget p1, Lcom/android/settings/R$layout;->activity_miui_mobile_data:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 62
    sget p1, Lcom/android/settings/R$id;->btn_skip:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->btnSkip:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/android/settings/R$id;->wps_progress_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 64
    sget p1, Lcom/android/settings/R$id;->provision_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->btnSkip:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;-><init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->checkMobileDataDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 105
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 100
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method
