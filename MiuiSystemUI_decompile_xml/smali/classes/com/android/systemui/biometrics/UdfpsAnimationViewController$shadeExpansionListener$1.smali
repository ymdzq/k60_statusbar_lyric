.class public final Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/biometrics/UdfpsAnimationView;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;Lcom/android/systemui/biometrics/UdfpsAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;->$view:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 2
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    cmpl-float v0, p1, v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 16
    iput-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    .line 18
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;->$view:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 20
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mNotificationShadeExpansion:F

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 27
    return-void
    .line 30
.end method
