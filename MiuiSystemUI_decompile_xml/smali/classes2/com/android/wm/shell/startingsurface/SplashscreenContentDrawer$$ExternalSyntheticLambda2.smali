.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/res/TypedArray;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/TypedArray;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 10
    const/16 v0, 0x3c

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 18
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 27
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 29
    const/16 p1, 0x3b

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 40
    const/16 p1, 0x39

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 49
    check-cast p1, Ljava/lang/Integer;

    .line 51
    const/16 v0, 0x38

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p1

    .line 58
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/TypedArray;

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 70
    const/16 v0, 0x2f

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result p1

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    move-result p0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method
