.class public Lcom/android/systemui/statusbar/views/DarkCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 11
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    if-eqz p6, :cond_0

    .line 8
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    cmpl-float p1, p2, p1

    .line 15
    if-lez p1, :cond_1

    .line 17
    move p4, p5

    .line 19
    :cond_1
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 11
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 13
    return-void
    .line 16
.end method
