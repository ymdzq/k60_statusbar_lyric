.class public Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;
.super Landroid/text/style/ImageSpan;
.source "MiuiVersionCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiVersionCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomImageSpan"
.end annotation


# instance fields
.field private ALIGN_CENTER:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x2

    .line 132
    iput p1, p0, Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;->ALIGN_CENTER:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 143
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p4

    .line 144
    iget p4, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/4 p6, 0x1

    if-ne p4, p6, :cond_0

    .line 145
    iget p0, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p8, p0

    goto :goto_0

    .line 146
    :cond_0
    iget p0, p0, Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;->ALIGN_CENTER:I

    if-ne p4, p0, :cond_1

    .line 147
    iget p0, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p0, p7

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p7, p3

    add-int/2addr p0, p7

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p3, p3, 0x2

    sub-int p8, p0, p3

    :cond_1
    :goto_0
    int-to-float p0, p8

    .line 149
    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 160
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p1

    .line 161
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    .line 163
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x4

    sub-int p3, p1, p2

    add-int/2addr p1, p2

    neg-int p1, p1

    .line 166
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 167
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 168
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 169
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 171
    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method
