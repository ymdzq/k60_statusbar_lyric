.class Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->showNewFontList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

.field final synthetic val$fragment:Lcom/android/settings/display/PageLayoutFragment;


# direct methods
.method public static synthetic $r8$lambda$TccjaErBtNoMGIdLX5sokq1prH4(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;->lambda$onAnimationUpdate$0(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1073
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;->this$0:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    iput-object p2, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;->val$fragment:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onAnimationUpdate$0(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1077
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1076
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;->val$fragment:Lcom/android/settings/display/PageLayoutFragment;

    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PageLayoutFragment;Landroid/animation/ValueAnimator;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
