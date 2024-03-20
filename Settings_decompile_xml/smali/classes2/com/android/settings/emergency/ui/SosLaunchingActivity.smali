.class public Lcom/android/settings/emergency/ui/SosLaunchingActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SosLaunchingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCancel:Landroid/view/View;

.field private mProgressBar:Lcom/android/settings/emergency/ui/view/CircleProgressBar;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)Lcom/android/settings/emergency/ui/view/CircleProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mProgressBar:Lcom/android/settings/emergency/ui/view/CircleProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeTextView(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mTimeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;-><init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private startAnimation()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 120
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;-><init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->sos_cancel:I

    if-ne p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const-string p1, "enter_sos_click_cancel"

    .line 168
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/android/settings/emergency/util/NotchAdapterUtils;->fitNotchForFullScreen(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 52
    invoke-static {}, Lcom/android/settings/emergency/util/CommonUtils;->getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 55
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->miui_sos_launch_error:I

    .line 56
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->miui_sos_launch_error_message:I

    .line 57
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->miui_sos_launch_error_confirm:I

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity$1;-><init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V

    .line 60
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "vibrator"

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 70
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 74
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->activity_sos_launching:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 76
    sget p1, Lcom/android/settings/R$id;->sos_progressbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/emergency/ui/view/CircleProgressBar;

    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mProgressBar:Lcom/android/settings/emergency/ui/view/CircleProgressBar;

    const/16 v0, 0x64

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->setMax(I)V

    .line 78
    sget p1, Lcom/android/settings/R$id;->counting_down:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mTimeTextView:Landroid/widget/TextView;

    .line 79
    sget p1, Lcom/android/settings/R$id;->sos_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mCancel:Landroid/view/View;

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->startAnimation()V

    .line 83
    new-instance p1, Lcom/android/settings/emergency/ui/SosLaunchingActivity$2;

    invoke-direct {p1, p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity$2;-><init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V

    invoke-static {p1}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 91
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity$3;-><init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "enter_sos"

    .line 102
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1706

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTime(I)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->mTimeTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->miui_sos_launching_summary:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
