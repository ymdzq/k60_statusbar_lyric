.class public final Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 2
    if-nez p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 7
    const/16 p1, 0x8

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
