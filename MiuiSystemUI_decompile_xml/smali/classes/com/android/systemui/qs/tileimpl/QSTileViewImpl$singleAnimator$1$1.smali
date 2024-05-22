.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 2
    const-string v0, "background"

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v0

    .line 15
    const-string v1, "label"

    .line 16
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 27
    const-string/jumbo v2, "secondaryLabel"

    .line 28
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v2

    .line 40
    const-string v3, "chevron"

    .line 41
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Integer;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result p1

    .line 52
    sget v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->$r8$clinit:I

    .line 53
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v4, 0x0

    .line 57
    if-nez v3, :cond_0

    .line 58
    move-object v3, v4

    .line 60
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 65
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 70
    if-nez v0, :cond_1

    .line 72
    move-object v0, v4

    .line 74
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 85
    if-nez p0, :cond_2

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    move-object v4, p0

    .line 90
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 91
    move-result-object p0

    .line 94
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 95
    return-void
    .line 98
.end method
