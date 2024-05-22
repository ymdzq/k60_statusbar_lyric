.class public final Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final baseIcon:Landroid/graphics/drawable/Drawable;

.field public final dp:F

.field public limit:J

.field public final paint:Landroid/graphics/Paint;

.field public rss:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    .line 10
    const v1, 0x7f081068    # @drawable/ic_memory 'res/drawable/ic_memory.xml'

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    move-result-object p1

    .line 32
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 33
    iput p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    .line 35
    const/4 p0, -0x1

    .line 37
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v4, v0, v2

    .line 11
    if-lez v4, :cond_0

    .line 13
    iget-wide v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    .line 15
    cmp-long v2, v4, v2

    .line 17
    if-lez v2, :cond_0

    .line 19
    long-to-float v2, v4

    .line 21
    long-to-float v0, v0

    .line 22
    div-float/2addr v2, v0

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 34
    int-to-float v3, v3

    .line 36
    iget v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    .line 37
    const/high16 v5, 0x41000000    # 8.0f

    .line 39
    mul-float v6, v4, v5

    .line 41
    add-float/2addr v6, v3

    .line 43
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 44
    int-to-float v2, v2

    .line 46
    const/high16 v3, 0x40a00000    # 5.0f

    .line 47
    mul-float/2addr v4, v3

    .line 49
    add-float/2addr v4, v2

    .line 50
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    const/4 v8, 0x0

    .line 54
    iget v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    .line 55
    const/high16 v3, 0x41600000    # 14.0f

    .line 57
    mul-float v4, v2, v3

    .line 59
    sub-float v1, v0, v1

    .line 61
    mul-float v9, v1, v4

    .line 63
    mul-float/2addr v5, v2

    .line 65
    add-float v10, v5, v0

    .line 66
    mul-float/2addr v2, v3

    .line 68
    add-float v11, v2, v0

    .line 69
    iget-object v12, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    .line 71
    move-object v7, p1

    .line 73
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    :cond_0
    return-void
    .line 77
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    return-void
    .line 10
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    return-void
    .line 12
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 7
    return-void
    .line 10
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    return-void
    .line 10
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    return-void
    .line 10
.end method
