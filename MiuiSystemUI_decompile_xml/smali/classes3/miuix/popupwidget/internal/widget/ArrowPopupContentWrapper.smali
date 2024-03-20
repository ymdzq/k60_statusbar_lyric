.class public Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mMask1:Landroid/graphics/Bitmap;

.field public final mMask2:Landroid/graphics/Bitmap;

.field public final mMask3:Landroid/graphics/Bitmap;

.field public final mMask4:Landroid/graphics/Bitmap;

.field public final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08157c    # @drawable/miuix_appcompat_popup_mask_1 'res/drawable/miuix_appcompat_popup_mask_1.png'

    .line 8
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    const p2, 0x7f08157d    # @drawable/miuix_appcompat_popup_mask_2 'res/drawable/miuix_appcompat_popup_mask_2.png'

    .line 9
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    const p2, 0x7f08157e    # @drawable/miuix_appcompat_popup_mask_3 'res/drawable/miuix_appcompat_popup_mask_3.png'

    .line 10
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    const p2, 0x7f08157f    # @drawable/miuix_appcompat_popup_mask_4 'res/drawable/miuix_appcompat_popup_mask_4.png'

    .line 11
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 4
    move-result v0

    .line 7
    int-to-float v3, v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 9
    move-result v0

    .line 12
    int-to-float v4, v0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x1f

    .line 15
    move-object v0, p1

    .line 17
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 18
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 21
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 26
    move-result v1

    .line 29
    add-int/lit8 v1, v1, 0x0

    .line 30
    int-to-float v1, v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 33
    move-result v2

    .line 36
    add-int/lit8 v2, v2, 0x0

    .line 37
    int-to-float v2, v2

    .line 39
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 53
    move-result v2

    .line 56
    sub-int/2addr v1, v2

    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 58
    move-result v2

    .line 61
    sub-int/2addr v1, v2

    .line 62
    int-to-float v1, v1

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 64
    move-result v2

    .line 67
    add-int/lit8 v2, v2, 0x0

    .line 68
    int-to-float v2, v2

    .line 70
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 78
    move-result v1

    .line 81
    add-int/lit8 v1, v1, 0x0

    .line 82
    int-to-float v1, v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 85
    move-result v2

    .line 88
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 91
    move-result v3

    .line 94
    sub-int/2addr v2, v3

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 96
    move-result v3

    .line 99
    sub-int/2addr v2, v3

    .line 100
    int-to-float v2, v2

    .line 101
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 109
    move-result v1

    .line 112
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 115
    move-result v2

    .line 118
    sub-int/2addr v1, v2

    .line 119
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 120
    move-result v2

    .line 123
    sub-int/2addr v1, v2

    .line 124
    int-to-float v1, v1

    .line 125
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 126
    move-result v2

    .line 129
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 132
    move-result v3

    .line 135
    sub-int/2addr v2, v3

    .line 136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 137
    move-result v3

    .line 140
    sub-int/2addr v2, v3

    .line 141
    int-to-float v2, v2

    .line 142
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    return-void
    .line 151
.end method
