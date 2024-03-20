.class Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;
.super Ljava/lang/Object;
.source "SosLaunchingActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosLaunchingActivity;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-static {v0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->-$$Nest$fgetmProgressBar(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)Lcom/android/settings/emergency/ui/view/CircleProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    const-wide/16 v3, 0x32

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->setProgress(F)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-static {v0}, Lcom/android/settings/emergency/ui/SosLaunchingActivity;->-$$Nest$fgetmTimeTextView(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    sget v1, Lcom/android/settings/R$string;->miui_sos_launching_summary:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    sub-long/2addr v4, v2

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
