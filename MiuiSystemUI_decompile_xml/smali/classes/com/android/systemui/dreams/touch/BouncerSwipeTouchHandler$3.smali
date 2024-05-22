.class public final Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$3;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$3;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 4
    sget-object p1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 6
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 8
    return-void
    .line 11
.end method
