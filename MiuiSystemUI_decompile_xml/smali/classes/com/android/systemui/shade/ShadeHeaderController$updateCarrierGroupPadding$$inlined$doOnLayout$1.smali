.class public final Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 5
    iget-object p1, p1, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    .line 9
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    iget-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p2

    .line 19
    const p3, 0x7f070ec7    # @dimen/qqs_expand_clock_scale '2.57'

    .line 20
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 23
    move-result p2

    .line 26
    mul-float/2addr p2, p1

    .line 27
    float-to-int p1, p2

    .line 28
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 31
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 34
    return-void
    .line 37
.end method
