.class public final synthetic Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/PageLayoutFragment;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PageLayoutFragment;

    iput-object p2, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PageLayoutFragment;

    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;->$r8$lambda$TccjaErBtNoMGIdLX5sokq1prH4(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method
