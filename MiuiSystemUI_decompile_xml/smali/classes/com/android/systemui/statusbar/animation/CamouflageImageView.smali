.class public Lcom/android/systemui/statusbar/animation/CamouflageImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
    .line 12
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public bridge synthetic getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getIconRadius()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageView;->getIconImageView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageView;->getIconImageView()Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result p0

    .line 15
    int-to-float p0, p0

    .line 16
    const v0, 0x40951eb8    # 4.66f

    .line 17
    div-float/2addr p0, v0

    .line 20
    float-to-int p0, p0

    .line 21
    int-to-float p0, p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/high16 p0, 0x42100000    # 36.0f

    .line 24
    return p0
    .line 26
.end method

.method public getIconTransparentEdge()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 2
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const/high16 v0, 0x41e00000    # 28.0f

    .line 7
    div-float/2addr p0, v0

    .line 9
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method
