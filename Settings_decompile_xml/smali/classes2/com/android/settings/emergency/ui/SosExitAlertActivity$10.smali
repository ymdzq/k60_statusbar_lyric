.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;
.super Ljava/lang/Object;
.source "SosExitAlertActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

.field final synthetic val$anim:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic val$mSosDec:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    iput-object p2, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$anim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 256
    iget-object v2, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$anim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    .line 257
    iget-object v3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sos_lottie_marginLeft:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$mSosDec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->sos_lottie_marginTop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 259
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;->val$anim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
