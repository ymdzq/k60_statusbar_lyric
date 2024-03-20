.class public interface abstract Lcom/android/systemui/plugins/DarkIconDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x2
.end annotation


# static fields
.field public static final DEFAULT_ICON_TINT:I = -0x1

.field public static final VERSION:I = 0x2

.field public static final sTmpInt2:[I

.field public static final sTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    .line 7
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    sput-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpInt2:[I

    .line 12
    return-void
    .line 14
.end method

.method public static getTint(Ljava/util/ArrayList;Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    return p2

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    return p0
    .line 10
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    sget-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpInt2:[I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    const/4 v2, 0x0

    .line 20
    aget v0, v0, v2

    .line 21
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v4

    .line 32
    add-int/2addr v4, v0

    .line 33
    iget v5, p0, Landroid/graphics/Rect;->right:I

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result v4

    .line 39
    sub-int/2addr v4, v3

    .line 40
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result v3

    .line 44
    iget v4, p0, Landroid/graphics/Rect;->top:I

    .line 45
    if-gtz v4, :cond_1

    .line 47
    move v4, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v4, v2

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 52
    move-result v5

    .line 55
    mul-int/lit8 v3, v3, 0x2

    .line 56
    if-gt v3, v5, :cond_3

    .line 58
    if-nez v5, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 68
    if-ge p1, v0, :cond_2

    .line 70
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 72
    if-le p0, v0, :cond_2

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    move p0, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    move p0, v1

    .line 79
    :goto_2
    if-eqz p0, :cond_4

    .line 80
    if-eqz v4, :cond_4

    .line 82
    goto :goto_3

    .line 84
    :cond_4
    move v1, v2

    .line 85
    :goto_3
    return v1
    .line 86
.end method

.method public static isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/Rect;

    .line 24
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    return v1

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    return p0
    .line 34
.end method


# virtual methods
.method public abstract addDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract applyDark(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract getDarkModeIconColorSingleTone()I
.end method

.method public abstract getLightModeIconColorSingleTone()I
.end method

.method public reapply()V
    .locals 0

    .line 1
    return-void
.end method

.method public reapply(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract removeDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract setIconsDarkArea(Ljava/util/ArrayList;)V
.end method

.method public abstract useTint()Z
.end method
