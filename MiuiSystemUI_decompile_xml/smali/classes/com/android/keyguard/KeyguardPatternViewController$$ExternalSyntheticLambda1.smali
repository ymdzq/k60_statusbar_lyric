.class public final synthetic Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPatternViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 13
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->avoidGesture()V

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
    .line 21
.end method
