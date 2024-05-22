.class public final synthetic Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2
    check-cast p1, Ljava/lang/Float;

    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 20
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    .line 23
    const/4 v0, 0x0

    .line 25
    cmpl-float v0, p1, v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    cmpl-float p1, p1, v1

    .line 32
    if-nez p1, :cond_2

    .line 34
    :cond_0
    if-nez v0, :cond_1

    .line 36
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setAllowAnimation(Z)V

    .line 41
    :cond_2
    return-void
    .line 44
.end method
