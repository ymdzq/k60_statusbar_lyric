.class public final synthetic Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    .line 1
    sget p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->$r8$clinit:I

    .line 2
    const-string p0, "PrivacyDotWindowView"

    .line 4
    const-string v0, "onComputeInternalInsetsListener"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p0, 0x3

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 12
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 15
    new-instance p1, Landroid/graphics/Region;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 23
    return-void
    .line 26
.end method
