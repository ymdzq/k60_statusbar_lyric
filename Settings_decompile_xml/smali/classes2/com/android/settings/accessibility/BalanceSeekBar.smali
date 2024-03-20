.class public Lcom/android/settings/accessibility/BalanceSeekBar;
.super Landroid/widget/SeekBar;
.source "BalanceSeekBar.java"


# static fields
.field static final SNAP_TO_PERCENTAGE:F = 0.03f


# instance fields
.field private mCenter:I

.field private final mCenterMarkerPaint:Landroid/graphics/Paint;

.field private final mCenterMarkerRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mLastProgress:I

.field private final mListenerLock:Ljava/lang/Object;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSnapThreshold:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmCenter(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastProgress(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerLock(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSeekBarChangeListener(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnapThreshold(Lcom/android/settings/accessibility/BalanceSeekBar;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastProgress(Lcom/android/settings/accessibility/BalanceSeekBar;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 119
    sget v0, Lcom/android/settings/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    .line 51
    new-instance p2, Lcom/android/settings/accessibility/BalanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/BalanceSeekBar$1;-><init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 126
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 128
    new-instance p3, Landroid/graphics/Rect;

    sget v0, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_width:I

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_height:I

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    .line 131
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    invoke-super {p0, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 174
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    int-to-float p1, p1

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    .line 175
    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 163
    monitor-enter v0

    .line 164
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 165
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
