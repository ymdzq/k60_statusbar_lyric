.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 6
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    const p2, 0x7f0a0675    # @id/nav_buttons

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 19
    const/4 p1, 0x0

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method
