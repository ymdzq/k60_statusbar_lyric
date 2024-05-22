.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->$onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->$onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V

    .line 8
    return-void
    .line 11
.end method
